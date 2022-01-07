; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_send_api_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_send_api_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32 }
%struct.virtchnl_version_info = type { i32, i32 }

@VIRTCHNL_VERSION_MAJOR = common dso_local global i32 0, align 4
@VIRTCHNL_VERSION_MINOR = common dso_local global i32 0, align 4
@VIRTCHNL_OP_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_send_api_ver(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.virtchnl_version_info, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %4 = load i32, i32* @VIRTCHNL_VERSION_MAJOR, align 4
  %5 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %3, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @VIRTCHNL_VERSION_MINOR, align 4
  %7 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %9 = load i32, i32* @VIRTCHNL_OP_VERSION, align 4
  %10 = bitcast %struct.virtchnl_version_info* %3 to i32*
  %11 = call i32 @iavf_send_pf_msg(%struct.iavf_sc* %8, i32 %9, i32* %10, i32 8)
  ret i32 %11
}

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_sc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
