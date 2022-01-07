; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_delete_isles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_delete_isles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ooo_info = type { i32, i32, i32 }
%struct.ecore_ooo_archipelago = type { i32 }
%struct.ecore_ooo_isle = type { i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Isle %d is not found(cid %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Isle %d is empty(cid %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_ooo_delete_isles(%struct.ecore_hwfn* %0, %struct.ecore_ooo_info* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ooo_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ecore_ooo_archipelago*, align 8
  %12 = alloca %struct.ecore_ooo_isle*, align 8
  %13 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ooo_info* %1, %struct.ecore_ooo_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** @OSAL_NULL, align 8
  %15 = bitcast i8* %14 to %struct.ecore_ooo_archipelago*
  store %struct.ecore_ooo_archipelago* %15, %struct.ecore_ooo_archipelago** %11, align 8
  %16 = load i8*, i8** @OSAL_NULL, align 8
  %17 = bitcast i8* %16 to %struct.ecore_ooo_isle*
  store %struct.ecore_ooo_isle* %17, %struct.ecore_ooo_isle** %12, align 8
  %18 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.ecore_ooo_archipelago* @ecore_ooo_seek_archipelago(%struct.ecore_ooo_info* %18, i32 %19)
  store %struct.ecore_ooo_archipelago* %20, %struct.ecore_ooo_archipelago** %11, align 8
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %69, %5
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %27 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call %struct.ecore_ooo_isle* @ecore_ooo_seek_isle(%struct.ecore_hwfn* %26, %struct.ecore_ooo_info* %27, i32 %28, i64 %29)
  store %struct.ecore_ooo_isle* %30, %struct.ecore_ooo_isle** %12, align 8
  %31 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %12, align 8
  %32 = icmp ne %struct.ecore_ooo_isle* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %34, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %36)
  br label %72

38:                                               ; preds = %25
  %39 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %12, align 8
  %40 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %39, i32 0, i32 1
  %41 = call i64 @OSAL_LIST_IS_EMPTY(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %44, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46)
  br label %54

48:                                               ; preds = %38
  %49 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %12, align 8
  %50 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %49, i32 0, i32 1
  %51 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %7, align 8
  %52 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %51, i32 0, i32 2
  %53 = call i32 @OSAL_LIST_SPLICE_TAIL_INIT(i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %12, align 8
  %56 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %55, i32 0, i32 0
  %57 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** %11, align 8
  %58 = getelementptr inbounds %struct.ecore_ooo_archipelago, %struct.ecore_ooo_archipelago* %57, i32 0, i32 0
  %59 = call i32 @OSAL_LIST_REMOVE_ENTRY(i32* %56, i32* %58)
  %60 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %7, align 8
  %61 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %12, align 8
  %65 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %64, i32 0, i32 0
  %66 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %7, align 8
  %67 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %66, i32 0, i32 0
  %68 = call i32 @OSAL_LIST_PUSH_HEAD(i32* %65, i32* %67)
  br label %69

69:                                               ; preds = %54
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %21

72:                                               ; preds = %33, %21
  ret void
}

declare dso_local %struct.ecore_ooo_archipelago* @ecore_ooo_seek_archipelago(%struct.ecore_ooo_info*, i32) #1

declare dso_local %struct.ecore_ooo_isle* @ecore_ooo_seek_isle(%struct.ecore_hwfn*, %struct.ecore_ooo_info*, i32, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i32) #1

declare dso_local i64 @OSAL_LIST_IS_EMPTY(i32*) #1

declare dso_local i32 @OSAL_LIST_SPLICE_TAIL_INIT(i32*, i32*) #1

declare dso_local i32 @OSAL_LIST_REMOVE_ENTRY(i32*, i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_HEAD(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
