; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_promisc_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_promisc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ixl_vf = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.virtchnl_promisc_info = type { i64, i32 }

@VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VF_FLAG_PROMISC_CAP = common dso_local global i32 0, align 4
@FLAG_VF_UNICAST_PROMISC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"i40e_aq_set_vsi_unicast_promiscuous (seid %d) failed: status %s, error %s\0A\00", align 1
@FLAG_VF_MULTICAST_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"i40e_aq_set_vsi_multicast_promiscuous (seid %d) failed: status %s, error %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_config_promisc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_config_promisc_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_promisc_info*, align 8
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 1
  store %struct.i40e_hw* %13, %struct.i40e_hw** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 16
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %19 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %20 = load i32, i32* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 4
  %21 = load i32, i32* @I40E_ERR_PARAM, align 4
  %22 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %18, %struct.ixl_vf* %19, i32 %20, i32 %21)
  br label %134

23:                                               ; preds = %4
  %24 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %25 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VF_FLAG_PROMISC_CAP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %32 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %33 = load i32, i32* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 4
  %34 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %31, %struct.ixl_vf* %32, i32 %33)
  br label %134

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to %struct.virtchnl_promisc_info*
  store %struct.virtchnl_promisc_info* %37, %struct.virtchnl_promisc_info** %9, align 8
  %38 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %9, align 8
  %39 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %42 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %48 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %49 = load i32, i32* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 4
  %50 = load i32, i32* @I40E_ERR_PARAM, align 4
  %51 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %47, %struct.ixl_vf* %48, i32 %49, i32 %50)
  br label %134

52:                                               ; preds = %35
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %54 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %55 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %9, align 8
  %59 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FLAG_VF_UNICAST_PROMISC, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @i40e_aq_set_vsi_unicast_promiscuous(%struct.i40e_hw* %53, i32 %57, i32 %62, i32* null, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @I40E_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %52
  %69 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %70 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %73 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @i40e_stat_str(%struct.i40e_hw* %76, i32 %77)
  %79 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %81 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @i40e_aq_str(%struct.i40e_hw* %79, i32 %83)
  %85 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78, i32 %84)
  %86 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %87 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %88 = load i32, i32* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 4
  %89 = load i32, i32* @I40E_ERR_PARAM, align 4
  %90 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %86, %struct.ixl_vf* %87, i32 %88, i32 %89)
  br label %134

91:                                               ; preds = %52
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %93 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %94 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %9, align 8
  %98 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw* %92, i32 %96, i32 %101, i32* null)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @I40E_SUCCESS, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %91
  %107 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %108 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %111 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @i40e_stat_str(%struct.i40e_hw* %114, i32 %115)
  %117 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %119 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @i40e_aq_str(%struct.i40e_hw* %117, i32 %121)
  %123 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116, i32 %122)
  %124 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %125 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %126 = load i32, i32* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 4
  %127 = load i32, i32* @I40E_ERR_PARAM, align 4
  %128 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %124, %struct.ixl_vf* %125, i32 %126, i32 %127)
  br label %134

129:                                              ; preds = %91
  %130 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %131 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %132 = load i32, i32* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 4
  %133 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %130, %struct.ixl_vf* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %106, %68, %46, %30, %17
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

declare dso_local i32 @i40e_aq_set_vsi_unicast_promiscuous(%struct.i40e_hw*, i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
