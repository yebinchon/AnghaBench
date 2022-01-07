; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_verify_api_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_verify_api_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.TYPE_4__, i32, %struct.i40e_hw }
%struct.TYPE_4__ = type { i64, i64 }
%struct.i40e_hw = type { i32 }
%struct.virtchnl_version_info = type { i64, i64 }
%struct.i40e_arq_event_info = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IXL_AQ_BUF_SZ = common dso_local global i32 0, align 4
@M_IAVF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@IAVF_AQ_MAX_ERR = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_NO_WORK = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@VIRTCHNL_OP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Received unexpected op response: %d\0A\00", align 1
@VIRTCHNL_VERSION_MAJOR = common dso_local global i64 0, align 8
@VIRTCHNL_VERSION_MINOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Critical PF/VF API version mismatch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"PF API %d.%d / VF API %d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_verify_api_ver(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.virtchnl_version_info*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_arq_event_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %9 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %9, i32 0, i32 2
  store %struct.i40e_hw* %10, %struct.i40e_hw** %4, align 8
  %11 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %12 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @IXL_AQ_BUF_SZ, align 4
  %15 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @M_IAVF, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call i64 @malloc(i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %50, %35, %1
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @IAVF_AQ_MAX_ERR, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %116

28:                                               ; preds = %22
  %29 = call i32 @i40e_msec_pause(i32 100)
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %31 = call i64 @i40e_clean_arq_element(%struct.i40e_hw* %30, %struct.i40e_arq_event_info* %5, i32* null)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @I40E_ERR_ADMIN_QUEUE_NO_WORK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %22

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i64, i64* @EIO, align 8
  store i64 %40, i64* %7, align 8
  br label %116

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32toh(i32 %45)
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @VIRTCHNL_OP_VERSION, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le32toh(i32 %54)
  %56 = call i32 @DDPRINTF(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %22

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @le32toh(i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @EIO, align 8
  store i64 %65, i64* %7, align 8
  br label %116

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.virtchnl_version_info*
  store %struct.virtchnl_version_info* %70, %struct.virtchnl_version_info** %3, align 8
  %71 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %72 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VIRTCHNL_VERSION_MAJOR, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %67
  %77 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %78 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VIRTCHNL_VERSION_MAJOR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %84 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VIRTCHNL_VERSION_MINOR, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82, %67
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i64, i64* @EIO, align 8
  store i64 %91, i64* %7, align 8
  br label %105

92:                                               ; preds = %82, %76
  %93 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %94 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %97 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %100 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %103 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  br label %105

105:                                              ; preds = %92, %88
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %108 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %3, align 8
  %111 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VIRTCHNL_VERSION_MAJOR, align 8
  %114 = load i64, i64* @VIRTCHNL_VERSION_MINOR, align 8
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %112, i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %105, %64, %39, %27
  %117 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %5, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @M_IAVF, align 4
  %120 = call i32 @free(i64 %118, i32 %119)
  %121 = load i64, i64* %7, align 8
  %122 = trunc i64 %121 to i32
  ret i32 %122
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @i40e_msec_pause(i32) #1

declare dso_local i64 @i40e_clean_arq_element(%struct.i40e_hw*, %struct.i40e_arq_event_info*, i32*) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @DDPRINTF(i32, i8*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
