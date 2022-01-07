; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_smi_cmd_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_smi_cmd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@pm_lock = common dso_local global i32 0, align 4
@PM1_SCI_EN = common dso_local global i32 0, align 4
@pm1_control = common dso_local global i32 0, align 4
@power_button = common dso_local global i32* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@EVF_SIGNAL = common dso_local global i32 0, align 4
@power_button_handler = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@old_power_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @smi_cmd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_cmd_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %60

24:                                               ; preds = %7
  %25 = call i32 @pthread_mutex_lock(i32* @pm_lock)
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %58 [
    i32 128, label %28
    i32 129, label %44
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @PM1_SCI_EN, align 4
  %30 = load i32, i32* @pm1_control, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @pm1_control, align 4
  %32 = load i32*, i32** @power_button, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* @SIGTERM, align 4
  %36 = load i32, i32* @EVF_SIGNAL, align 4
  %37 = load i32, i32* @power_button_handler, align 4
  %38 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %39 = call i32* @mevent_add(i32 %35, i32 %36, i32 %37, %struct.vmctx* %38)
  store i32* %39, i32** @power_button, align 8
  %40 = load i32, i32* @SIGTERM, align 4
  %41 = load i32, i32* @SIG_IGN, align 4
  %42 = call i32 @signal(i32 %40, i32 %41)
  store i32 %42, i32* @old_power_handler, align 4
  br label %43

43:                                               ; preds = %34, %28
  br label %58

44:                                               ; preds = %24
  %45 = load i32, i32* @PM1_SCI_EN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @pm1_control, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* @pm1_control, align 4
  %49 = load i32*, i32** @power_button, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32*, i32** @power_button, align 8
  %53 = call i32 @mevent_delete(i32* %52)
  store i32* null, i32** @power_button, align 8
  %54 = load i32, i32* @SIGTERM, align 4
  %55 = load i32, i32* @old_power_handler, align 4
  %56 = call i32 @signal(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %24, %57, %43
  %59 = call i32 @pthread_mutex_unlock(i32* @pm_lock)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %23
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @mevent_add(i32, i32, i32, %struct.vmctx*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @mevent_delete(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
