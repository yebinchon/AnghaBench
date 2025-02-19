; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_pm1_enable_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_pm1_enable_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@pm_lock = common dso_local global i32 0, align 4
@pm1_enable = common dso_local global i32 0, align 4
@PM1_PWRBTN_EN = common dso_local global i32 0, align 4
@PM1_GBL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @pm1_enable_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm1_enable_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
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
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %37

19:                                               ; preds = %7
  %20 = call i32 @pthread_mutex_lock(i32* @pm_lock)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @pm1_enable, align 4
  %25 = load i32*, i32** %14, align 8
  store i32 %24, i32* %25, align 4
  br label %35

26:                                               ; preds = %19
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PM1_PWRBTN_EN, align 4
  %30 = load i32, i32* @PM1_GBL_EN, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  store i32 %32, i32* @pm1_enable, align 4
  %33 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %34 = call i32 @sci_update(%struct.vmctx* %33)
  br label %35

35:                                               ; preds = %26, %23
  %36 = call i32 @pthread_mutex_unlock(i32* @pm_lock)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %18
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @sci_update(%struct.vmctx*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
