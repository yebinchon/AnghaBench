; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_del_mac_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_del_mac_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.virtchnl_ether_addr_list = type { i32, i64, %struct.virtchnl_ether_addr* }
%struct.virtchnl_ether_addr = type { i32 }

@VIRTCHNL_OP_ADD_ETH_ADDR = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@IXL_VLAN_ANY = common dso_local global i32 0, align 4
@VIRTCHNL_OP_DEL_ETH_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_del_mac_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_del_mac_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_ether_addr_list*, align 8
  %10 = alloca %struct.virtchnl_ether_addr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 24
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %18 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %19 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %20 = load i32, i32* @I40E_ERR_PARAM, align 4
  %21 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %17, %struct.ixl_vf* %18, i32 %19, i32 %20)
  br label %119

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.virtchnl_ether_addr_list*
  store %struct.virtchnl_ether_addr_list* %24, %struct.virtchnl_ether_addr_list** %9, align 8
  %25 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %26 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 24, %29
  store i64 %30, i64* %11, align 8
  %31 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %32 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %22
  %36 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %37 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %40 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %35, %22
  %50 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %51 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %52 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %53 = load i32, i32* @I40E_ERR_PARAM, align 4
  %54 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %50, %struct.ixl_vf* %51, i32 %52, i32 %53)
  br label %119

55:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %87, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %59 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %64 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %63, i32 0, i32 2
  %65 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %65, i64 %67
  store %struct.virtchnl_ether_addr* %68, %struct.virtchnl_ether_addr** %10, align 8
  %69 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %10, align 8
  %70 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ixl_zero_mac(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %62
  %75 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %10, align 8
  %76 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ixl_bcast_mac(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74, %62
  %81 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %82 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %83 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %84 = load i32, i32* @I40E_ERR_PARAM, align 4
  %85 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %81, %struct.ixl_vf* %82, i32 %83, i32 %84)
  br label %119

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %56

90:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %111, %90
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %94 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  %98 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %9, align 8
  %99 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %98, i32 0, i32 2
  %100 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %100, i64 %102
  store %struct.virtchnl_ether_addr* %103, %struct.virtchnl_ether_addr** %10, align 8
  %104 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %105 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %104, i32 0, i32 0
  %106 = load %struct.virtchnl_ether_addr*, %struct.virtchnl_ether_addr** %10, align 8
  %107 = getelementptr inbounds %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IXL_VLAN_ANY, align 4
  %110 = call i32 @ixl_del_filter(%struct.TYPE_2__* %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %91

114:                                              ; preds = %91
  %115 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %116 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %117 = load i32, i32* @VIRTCHNL_OP_DEL_ETH_ADDR, align 4
  %118 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %115, %struct.ixl_vf* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %80, %49, %16
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i64 @ixl_zero_mac(i32) #1

declare dso_local i64 @ixl_bcast_mac(i32) #1

declare dso_local i32 @ixl_del_filter(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
