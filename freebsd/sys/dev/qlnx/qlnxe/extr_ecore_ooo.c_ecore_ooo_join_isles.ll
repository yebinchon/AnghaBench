; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_join_isles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_join_isles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ooo_info = type { i32, i32, i32 }
%struct.ecore_ooo_archipelago = type { i32 }
%struct.ecore_ooo_isle = type { i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Right isle %d is not found(cid %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Left isle %d is not found(cid %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_ooo_join_isles(%struct.ecore_hwfn* %0, %struct.ecore_ooo_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ooo_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ecore_ooo_archipelago*, align 8
  %10 = alloca %struct.ecore_ooo_isle*, align 8
  %11 = alloca %struct.ecore_ooo_isle*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ooo_info* %1, %struct.ecore_ooo_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** @OSAL_NULL, align 8
  %13 = bitcast i8* %12 to %struct.ecore_ooo_archipelago*
  store %struct.ecore_ooo_archipelago* %13, %struct.ecore_ooo_archipelago** %9, align 8
  %14 = load i8*, i8** @OSAL_NULL, align 8
  %15 = bitcast i8* %14 to %struct.ecore_ooo_isle*
  store %struct.ecore_ooo_isle* %15, %struct.ecore_ooo_isle** %10, align 8
  %16 = load i8*, i8** @OSAL_NULL, align 8
  %17 = bitcast i8* %16 to %struct.ecore_ooo_isle*
  store %struct.ecore_ooo_isle* %17, %struct.ecore_ooo_isle** %11, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %21, 1
  %23 = call %struct.ecore_ooo_isle* @ecore_ooo_seek_isle(%struct.ecore_hwfn* %18, %struct.ecore_ooo_info* %19, i32 %20, i64 %22)
  store %struct.ecore_ooo_isle* %23, %struct.ecore_ooo_isle** %10, align 8
  %24 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %10, align 8
  %25 = icmp ne %struct.ecore_ooo_isle* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %27, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %30)
  br label %78

32:                                               ; preds = %4
  %33 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.ecore_ooo_archipelago* @ecore_ooo_seek_archipelago(%struct.ecore_ooo_info* %33, i32 %34)
  store %struct.ecore_ooo_archipelago* %35, %struct.ecore_ooo_archipelago** %9, align 8
  %36 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %10, align 8
  %37 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %36, i32 0, i32 0
  %38 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** %9, align 8
  %39 = getelementptr inbounds %struct.ecore_ooo_archipelago, %struct.ecore_ooo_archipelago* %38, i32 0, i32 0
  %40 = call i32 @OSAL_LIST_REMOVE_ENTRY(i32* %37, i32* %39)
  %41 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %42 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %32
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %49 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call %struct.ecore_ooo_isle* @ecore_ooo_seek_isle(%struct.ecore_hwfn* %48, %struct.ecore_ooo_info* %49, i32 %50, i64 %51)
  store %struct.ecore_ooo_isle* %52, %struct.ecore_ooo_isle** %11, align 8
  %53 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %11, align 8
  %54 = icmp ne %struct.ecore_ooo_isle* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %56, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %57, i32 %58)
  br label %78

60:                                               ; preds = %47
  %61 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %10, align 8
  %62 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %61, i32 0, i32 1
  %63 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %11, align 8
  %64 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %63, i32 0, i32 1
  %65 = call i32 @OSAL_LIST_SPLICE_TAIL_INIT(i32* %62, i32* %64)
  br label %72

66:                                               ; preds = %32
  %67 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %10, align 8
  %68 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %67, i32 0, i32 1
  %69 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %70 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %69, i32 0, i32 1
  %71 = call i32 @OSAL_LIST_SPLICE_TAIL_INIT(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %10, align 8
  %74 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %73, i32 0, i32 0
  %75 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %75, i32 0, i32 0
  %77 = call i32 @OSAL_LIST_PUSH_TAIL(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %72, %55, %26
  ret void
}

declare dso_local %struct.ecore_ooo_isle* @ecore_ooo_seek_isle(%struct.ecore_hwfn*, %struct.ecore_ooo_info*, i32, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i32) #1

declare dso_local %struct.ecore_ooo_archipelago* @ecore_ooo_seek_archipelago(%struct.ecore_ooo_info*, i32) #1

declare dso_local i32 @OSAL_LIST_REMOVE_ENTRY(i32*, i32*) #1

declare dso_local i32 @OSAL_LIST_SPLICE_TAIL_INIT(i32*, i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_TAIL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
