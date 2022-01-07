; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_add_vlan_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_add_vlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.virtchnl_vlan_filter_list = type { i32, i64, i64* }

@VIRTCHNL_OP_ADD_VLAN = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VF_FLAG_VLAN_CAP = common dso_local global i32 0, align 4
@EVL_VLID_MASK = common dso_local global i64 0, align 8
@I40E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_add_vlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_add_vlan_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_vlan_filter_list*, align 8
  %10 = alloca i32, align 4
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
  %19 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %20 = load i32, i32* @I40E_ERR_PARAM, align 4
  %21 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %17, %struct.ixl_vf* %18, i32 %19, i32 %20)
  br label %137

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.virtchnl_vlan_filter_list*
  store %struct.virtchnl_vlan_filter_list* %24, %struct.virtchnl_vlan_filter_list** %9, align 8
  %25 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %26 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 24, %29
  store i64 %30, i64* %11, align 8
  %31 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %32 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %22
  %36 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %37 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %40 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %39, i32 0, i32 2
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
  %52 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %53 = load i32, i32* @I40E_ERR_PARAM, align 4
  %54 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %50, %struct.ixl_vf* %51, i32 %52, i32 %53)
  br label %137

55:                                               ; preds = %44
  %56 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %57 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VF_FLAG_VLAN_CAP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %64 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %65 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %66 = load i32, i32* @I40E_ERR_PARAM, align 4
  %67 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %63, %struct.ixl_vf* %64, i32 %65, i32 %66)
  br label %137

68:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %72 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  %76 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %77 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @EVL_VLID_MASK, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %87 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %88 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %89 = load i32, i32* @I40E_ERR_PARAM, align 4
  %90 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %86, %struct.ixl_vf* %87, i32 %88, i32 %89)
  br label %137

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %97 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %98 = call i32 @ixl_vf_enable_vlan_strip(%struct.ixl_pf* %96, %struct.ixl_vf* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @I40E_SUCCESS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %104 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %105 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %106 = load i32, i32* @I40E_ERR_PARAM, align 4
  %107 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %103, %struct.ixl_vf* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %95
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %112 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %117 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %116, i32 0, i32 2
  %118 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %119 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %122 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ixl_add_filter(%struct.TYPE_2__* %117, i32 %120, i64 %127)
  br label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %109

132:                                              ; preds = %109
  %133 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %134 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %135 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %136 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %133, %struct.ixl_vf* %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %85, %62, %49, %16
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @ixl_vf_enable_vlan_strip(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @ixl_add_filter(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
