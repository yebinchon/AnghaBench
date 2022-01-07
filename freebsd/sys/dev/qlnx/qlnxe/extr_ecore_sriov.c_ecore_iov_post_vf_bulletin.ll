; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_post_vf_bulletin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_post_vf_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_bulletin_content = type { i32, i32 }
%struct.ecore_dmae_params = type { i32, i32 }
%struct.ecore_vf_info = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.ecore_bulletin_content* }

@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Posting Bulletin 0x%08x to VF[%d] (CRC 0x%08x)\0A\00", align 1
@ECORE_DMAE_FLAG_VF_DST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_post_vf_bulletin(%struct.ecore_hwfn* %0, i32 %1, %struct.ecore_ptt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_bulletin_content*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_dmae_params, align 4
  %11 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ecore_ptt* %2, %struct.ecore_ptt** %7, align 8
  store i32 4, i32* %9, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %12, i32 %13, i32 1)
  store %struct.ecore_vf_info* %14, %struct.ecore_vf_info** %11, align 8
  %15 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %16 = icmp ne %struct.ecore_vf_info* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %83

19:                                               ; preds = %3
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %19
  %27 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %28 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %29, align 8
  store %struct.ecore_bulletin_content* %30, %struct.ecore_bulletin_content** %8, align 8
  %31 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %8, align 8
  %32 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %8, align 8
  %36 = bitcast %struct.ecore_bulletin_content* %35 to i32*
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %41 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @OSAL_CRC32(i32 0, i32* %39, i32 %45)
  %47 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %8, align 8
  %48 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %50 = load i32, i32* @ECORE_MSG_IOV, align 4
  %51 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %8, align 8
  %52 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %55 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %8, align 8
  %58 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %49, i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  %61 = call i32 @OSAL_MEMSET(%struct.ecore_dmae_params* %10, i32 0, i32 8)
  %62 = load i32, i32* @ECORE_DMAE_FLAG_VF_DST, align 4
  %63 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %10, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %65 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %10, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %69 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %70 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %71 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %75 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %78 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 4
  %82 = call i32 @ecore_dmae_host2host(%struct.ecore_hwfn* %68, %struct.ecore_ptt* %69, i32 %73, i32 %76, i32 %81, %struct.ecore_dmae_params* %10)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %26, %24, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @OSAL_CRC32(i32, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_dmae_params*, i32, i32) #1

declare dso_local i32 @ecore_dmae_host2host(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, %struct.ecore_dmae_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
