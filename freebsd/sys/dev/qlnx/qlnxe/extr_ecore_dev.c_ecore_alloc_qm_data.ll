; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_alloc_qm_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_alloc_qm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, %struct.ecore_qm_info }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_qm_info = type { i8*, i8*, i8*, i8* }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for QM params\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_alloc_qm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_alloc_qm_data(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_qm_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 1
  store %struct.ecore_qm_info* %7, %struct.ecore_qm_info** %4, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = call i32 @ecore_init_qm_sanity(%struct.ecore_hwfn* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = call i32 @ecore_init_qm_get_num_pqs(%struct.ecore_hwfn* %19)
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i8* @OSAL_ZALLOC(%struct.TYPE_2__* %17, i32 %18, i32 %23)
  %25 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  br label %91

32:                                               ; preds = %14
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %34 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = call i32 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn* %37)
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @OSAL_ZALLOC(%struct.TYPE_2__* %35, i32 %36, i32 %41)
  %43 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %44 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %46 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %91

50:                                               ; preds = %32
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %56 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = call i8* @OSAL_ZALLOC(%struct.TYPE_2__* %53, i32 %54, i32 %62)
  %64 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %65 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %67 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %50
  br label %91

71:                                               ; preds = %50
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %73 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %77 = call i32 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn* %76)
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i8* @OSAL_ZALLOC(%struct.TYPE_2__* %74, i32 %75, i32 %80)
  %82 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %83 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %4, align 8
  %85 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %71
  br label %91

89:                                               ; preds = %71
  %90 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %90, i32* %2, align 4
  br label %97

91:                                               ; preds = %88, %70, %49, %31, %13
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %93 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %92, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %95 = call i32 @ecore_qm_info_free(%struct.ecore_hwfn* %94)
  %96 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %89
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ecore_init_qm_sanity(%struct.ecore_hwfn*) #1

declare dso_local i8* @OSAL_ZALLOC(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ecore_init_qm_get_num_pqs(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_qm_info_free(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
