; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_add_mac_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_add_mac_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { i64 }
%struct.virtchnl_ether_addr_list = type { i32, i64, %struct.virtchnl_ether_addr* }
%struct.virtchnl_ether_addr = type { i32 }

@VIRTCHNL_OP_ADD_ETH_ADDR = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@IXL_VLAN_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_add_mac_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_add_mac_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_ether_addr_list*, align 8
  %10 = alloca %struct.virtchnl_ether_addr*, align 8
  %11 = alloca %struct.ixl_vsi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %15 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %14, i32 0, i32 0
  store %struct.ixl_vsi* %15, %struct.ixl_vsi** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 24
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %21 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %22 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %23 = load i32, i32* @I40E_ERR_PARAM, align 4
  %24 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %20, %struct.ixl_vf* %21, i32 %22, i32 %23)
  br label %114

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.virtchnl_ether_addr_list*
  store %struct.virtchnl_ether_addr_list* %27, %struct.virtchnl_ether_addr_list** %9, align 8
  %28 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %29 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 24, %32
  store i64 %33, i64* %13, align 8
  %34 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %35 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %25
  %39 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %40 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ixl_vsi*, %struct.ixl_vsi** %11, align 8
  %43 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %38, %25
  %52 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %53 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %54 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %55 = load i32, i32* @I40E_ERR_PARAM, align 4
  %56 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %52, %struct.ixl_vf* %53, i32 %54, i32 %55)
  br label %114

57:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %61 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %66 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %67 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %66, i32 0, i32 2
  %68 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %68, i64 %70
  %72 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ixl_vf_mac_valid(%struct.ixl_vf* %65, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %78 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %79 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %80 = load i32, i32* @I40E_ERR_PARAM, align 4
  %81 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %77, %struct.ixl_vf* %78, i32 %79, i32 %80)
  br label %114

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %58

86:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %90 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %95 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %94, i32 0, i32 2
  %96 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %96, i64 %98
  store %struct.virtchnl_ether_addr* %99, %struct.virtchnl_ether_addr** %10, align 8
  %100 = load %struct.ixl_vsi*, %struct.ixl_vsi** %11, align 8
  %101 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %10, align 8
  %102 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IXL_VLAN_ANY, align 4
  %105 = call i32 @ixl_add_filter(%struct.ixl_vsi* %100, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %93
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %87

109:                                              ; preds = %87
  %110 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %111 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %112 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %113 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %110, %struct.ixl_vf* %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %76, %51, %19
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i64 @ixl_vf_mac_valid(%struct.ixl_vf*, i32) #1

declare dso_local i32 @ixl_add_filter(%struct.ixl_vsi*, i32, i32) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
