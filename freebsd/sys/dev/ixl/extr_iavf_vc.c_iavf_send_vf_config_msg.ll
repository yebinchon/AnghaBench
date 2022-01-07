; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_send_vf_config_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_send_vf_config_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VIRTCHNL_VF_OFFLOAD_L2 = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_RSS_PF = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Sending offload flags: 0x%b\0A\00", align 1
@IAVF_PRINTF_VF_OFFLOAD_FLAGS = common dso_local global i32 0, align 4
@VIRTCHNL_VERSION_MINOR_NO_VF_CAPS = common dso_local global i64 0, align 8
@VIRTCHNL_OP_GET_VF_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_send_vf_config_msg(%struct.iavf_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %3, align 8
  %5 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_L2, align 4
  %6 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_PF, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_VLAN, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IAVF_PRINTF_VF_OFFLOAD_FLAGS, align 4
  %13 = call i32 @iavf_dbg_info(%struct.iavf_sc* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %15 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VIRTCHNL_VERSION_MINOR_NO_VF_CAPS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %22 = load i32, i32* @VIRTCHNL_OP_GET_VF_RESOURCES, align 4
  %23 = call i32 @iavf_send_pf_msg(%struct.iavf_sc* %21, i32 %22, i32* null, i32 0)
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %26 = load i32, i32* @VIRTCHNL_OP_GET_VF_RESOURCES, align 4
  %27 = call i32 @iavf_send_pf_msg(%struct.iavf_sc* %25, i32 %26, i32* %4, i32 4)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @iavf_dbg_info(%struct.iavf_sc*, i8*, i32, i32) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_sc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
