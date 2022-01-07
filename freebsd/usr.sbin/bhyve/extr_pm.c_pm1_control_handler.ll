; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_pm1_control_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_pm1_control_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@pm1_control = common dso_local global i32 0, align 4
@PM1_SCI_EN = common dso_local global i32 0, align 4
@PM1_SLP_EN = common dso_local global i32 0, align 4
@PM1_ALWAYS_ZERO = common dso_local global i32 0, align 4
@PM1_SLP_TYP = common dso_local global i32 0, align 4
@VM_SUSPEND_POWEROFF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @pm1_control_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm1_control_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %66

20:                                               ; preds = %7
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @pm1_control, align 4
  %25 = load i32*, i32** %14, align 8
  store i32 %24, i32* %25, align 4
  br label %65

26:                                               ; preds = %20
  %27 = load i32, i32* @pm1_control, align 4
  %28 = load i32, i32* @PM1_SCI_EN, align 4
  %29 = and i32 %27, %28
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PM1_SLP_EN, align 4
  %33 = load i32, i32* @PM1_ALWAYS_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %31, %35
  %37 = or i32 %29, %36
  store i32 %37, i32* @pm1_control, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PM1_SLP_EN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %26
  %44 = load i32, i32* @pm1_control, align 4
  %45 = load i32, i32* @PM1_SLP_TYP, align 4
  %46 = and i32 %44, %45
  %47 = ashr i32 %46, 10
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %51 = load i32, i32* @VM_SUSPEND_POWEROFF, align 4
  %52 = call i32 @vm_suspend(%struct.vmctx* %50, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EALREADY, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ true, %49 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  br label %63

63:                                               ; preds = %59, %43
  br label %64

64:                                               ; preds = %63, %26
  br label %65

65:                                               ; preds = %64, %23
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @vm_suspend(%struct.vmctx*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
