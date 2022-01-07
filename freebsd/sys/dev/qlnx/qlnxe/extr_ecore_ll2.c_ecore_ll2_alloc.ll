; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_ll2_info*, i32 }
%struct.ecore_ll2_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ECORE_MAX_NUM_OF_LL2_CONNECTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate `struct ecore_ll2'\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_ll2_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ll2_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @ECORE_MAX_NUM_OF_LL2_CONNECTIONS, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 16, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.ecore_ll2_info* @OSAL_ZALLOC(i32 %8, i32 %9, i32 %13)
  store %struct.ecore_ll2_info* %14, %struct.ecore_ll2_info** %4, align 8
  %15 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %16 = icmp ne %struct.ecore_ll2_info* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %19 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %18, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 0
  store %struct.ecore_ll2_info* %22, %struct.ecore_ll2_info** %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %36, %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ECORE_MAX_NUM_OF_LL2_CONNECTIONS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.ecore_ll2_info* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
