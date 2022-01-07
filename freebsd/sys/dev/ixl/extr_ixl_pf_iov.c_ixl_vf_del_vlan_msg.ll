; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_del_vlan_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_del_vlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.virtchnl_vlan_filter_list = type { i32, i64, i64* }

@VIRTCHNL_OP_DEL_VLAN = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@EVL_VLID_MASK = common dso_local global i64 0, align 8
@VIRTCHNL_OP_ADD_VLAN = common dso_local global i32 0, align 4
@VF_FLAG_VLAN_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_del_vlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_del_vlan_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_vlan_filter_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 24
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %17 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %18 = load i32, i32* @VIRTCHNL_OP_DEL_VLAN, align 4
  %19 = load i32, i32* @I40E_ERR_PARAM, align 4
  %20 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %16, %struct.ixl_vf* %17, i32 %18, i32 %19)
  br label %123

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.virtchnl_vlan_filter_list*
  store %struct.virtchnl_vlan_filter_list* %23, %struct.virtchnl_vlan_filter_list** %9, align 8
  %24 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %25 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 24, %28
  store i64 %29, i64* %11, align 8
  %30 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %31 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %21
  %35 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %36 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %39 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %34, %21
  %49 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %50 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %51 = load i32, i32* @VIRTCHNL_OP_DEL_VLAN, align 4
  %52 = load i32, i32* @I40E_ERR_PARAM, align 4
  %53 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %49, %struct.ixl_vf* %50, i32 %51, i32 %52)
  br label %123

54:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %78, %54
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %58 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %63 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @EVL_VLID_MASK, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %73 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %74 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %75 = load i32, i32* @I40E_ERR_PARAM, align 4
  %76 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %72, %struct.ixl_vf* %73, i32 %74, i32 %75)
  br label %123

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %55

81:                                               ; preds = %55
  %82 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %83 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @VF_FLAG_VLAN_CAP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %90 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %91 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %92 = load i32, i32* @I40E_ERR_PARAM, align 4
  %93 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %89, %struct.ixl_vf* %90, i32 %91, i32 %92)
  br label %123

94:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %98 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %103 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %102, i32 0, i32 2
  %104 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %105 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %9, align 8
  %108 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @ixl_del_filter(%struct.TYPE_2__* %103, i32 %106, i64 %113)
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %95

118:                                              ; preds = %95
  %119 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %120 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %121 = load i32, i32* @VIRTCHNL_OP_DEL_VLAN, align 4
  %122 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %119, %struct.ixl_vf* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %88, %71, %48, %15
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @ixl_del_filter(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
