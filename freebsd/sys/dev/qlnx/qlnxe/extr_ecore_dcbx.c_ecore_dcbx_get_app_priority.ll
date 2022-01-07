; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_app_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_app_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECORE_MAX_PFC_PRIORITIES = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ecore_dcbx_get_app_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dcbx_get_app_priority(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @ECORE_MAX_PFC_PRIORITIES, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @ECORE_MAX_PFC_PRIORITIES, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* @ECORE_MAX_PFC_PRIORITIES, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 1, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %20

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ECORE_MAX_PFC_PRIORITIES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
