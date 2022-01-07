; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_handle_vf_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_handle_vf_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i64, %struct.ixl_vf*, i32, %struct.TYPE_5__ }
%struct.ixl_vf = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.i40e_arq_event_info = type { i64, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Got msg from illegal VF: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Got msg %s(%d) from%sVF-%d of size %d\0A\00", align 1
@VF_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" disabled \00", align 1
@I40E_ERR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_handle_vf_msg(%struct.ixl_pf* %0, %struct.i40e_arq_event_info* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_arq_event_info*, align 8
  %5 = alloca %struct.ixl_vf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.i40e_arq_event_info* %1, %struct.i40e_arq_event_info** %4, align 8
  %10 = load %struct.i40e_arq_event_info*, %struct.i40e_arq_event_info** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16toh(i32 %13)
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %14, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.i40e_arq_event_info*, %struct.i40e_arq_event_info** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32toh(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %28 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %33 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %184

37:                                               ; preds = %2
  %38 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %39 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %38, i32 0, i32 1
  %40 = load %struct.ixl_vf*, %struct.ixl_vf** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %40, i64 %41
  store %struct.ixl_vf* %42, %struct.ixl_vf** %5, align 8
  %43 = load %struct.i40e_arq_event_info*, %struct.i40e_arq_event_info** %4, align 8
  %44 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  %46 = load %struct.i40e_arq_event_info*, %struct.i40e_arq_event_info** %4, align 8
  %47 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ixl_vc_opcode_level(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ixl_vc_opcode_str(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %56 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VF_FLAG_ENABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @I40E_VC_DEBUG(%struct.ixl_pf* %49, i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i8* %62, i64 %63, i64 %64)
  %66 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %67 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VF_FLAG_ENABLED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %37
  br label %184

73:                                               ; preds = %37
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %178 [
    i32 128, label %75
    i32 130, label %81
    i32 131, label %87
    i32 137, label %96
    i32 143, label %102
    i32 133, label %108
    i32 134, label %117
    i32 145, label %123
    i32 136, label %129
    i32 144, label %135
    i32 135, label %141
    i32 142, label %147
    i32 132, label %153
    i32 141, label %159
    i32 140, label %165
    i32 129, label %171
    i32 138, label %177
    i32 139, label %177
  ]

75:                                               ; preds = %73
  %76 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %77 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @ixl_vf_version_msg(%struct.ixl_pf* %76, %struct.ixl_vf* %77, i8* %78, i64 %79)
  br label %184

81:                                               ; preds = %73
  %82 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %83 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @ixl_vf_reset_msg(%struct.ixl_pf* %82, %struct.ixl_vf* %83, i8* %84, i64 %85)
  br label %184

87:                                               ; preds = %73
  %88 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %89 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @ixl_vf_get_resources_msg(%struct.ixl_pf* %88, %struct.ixl_vf* %89, i8* %90, i64 %91)
  %93 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %94 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %95 = call i32 @ixl_notify_vf_link_state(%struct.ixl_pf* %93, %struct.ixl_vf* %94)
  br label %184

96:                                               ; preds = %73
  %97 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %98 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @ixl_vf_config_vsi_msg(%struct.ixl_pf* %97, %struct.ixl_vf* %98, i8* %99, i64 %100)
  br label %184

102:                                              ; preds = %73
  %103 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %104 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @ixl_vf_config_irq_msg(%struct.ixl_pf* %103, %struct.ixl_vf* %104, i8* %105, i64 %106)
  br label %184

108:                                              ; preds = %73
  %109 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %110 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @ixl_vf_enable_queues_msg(%struct.ixl_pf* %109, %struct.ixl_vf* %110, i8* %111, i64 %112)
  %114 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %115 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %116 = call i32 @ixl_notify_vf_link_state(%struct.ixl_pf* %114, %struct.ixl_vf* %115)
  br label %184

117:                                              ; preds = %73
  %118 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %119 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @ixl_vf_disable_queues_msg(%struct.ixl_pf* %118, %struct.ixl_vf* %119, i8* %120, i64 %121)
  br label %184

123:                                              ; preds = %73
  %124 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %125 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @ixl_vf_add_mac_msg(%struct.ixl_pf* %124, %struct.ixl_vf* %125, i8* %126, i64 %127)
  br label %184

129:                                              ; preds = %73
  %130 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %131 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @ixl_vf_del_mac_msg(%struct.ixl_pf* %130, %struct.ixl_vf* %131, i8* %132, i64 %133)
  br label %184

135:                                              ; preds = %73
  %136 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %137 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @ixl_vf_add_vlan_msg(%struct.ixl_pf* %136, %struct.ixl_vf* %137, i8* %138, i64 %139)
  br label %184

141:                                              ; preds = %73
  %142 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %143 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @ixl_vf_del_vlan_msg(%struct.ixl_pf* %142, %struct.ixl_vf* %143, i8* %144, i64 %145)
  br label %184

147:                                              ; preds = %73
  %148 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %149 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @ixl_vf_config_promisc_msg(%struct.ixl_pf* %148, %struct.ixl_vf* %149, i8* %150, i64 %151)
  br label %184

153:                                              ; preds = %73
  %154 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %155 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @ixl_vf_get_stats_msg(%struct.ixl_pf* %154, %struct.ixl_vf* %155, i8* %156, i64 %157)
  br label %184

159:                                              ; preds = %73
  %160 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %161 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @ixl_vf_config_rss_key_msg(%struct.ixl_pf* %160, %struct.ixl_vf* %161, i8* %162, i64 %163)
  br label %184

165:                                              ; preds = %73
  %166 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %167 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @ixl_vf_config_rss_lut_msg(%struct.ixl_pf* %166, %struct.ixl_vf* %167, i8* %168, i64 %169)
  br label %184

171:                                              ; preds = %73
  %172 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %173 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @ixl_vf_set_rss_hena_msg(%struct.ixl_pf* %172, %struct.ixl_vf* %173, i8* %174, i64 %175)
  br label %184

177:                                              ; preds = %73, %73
  br label %178

178:                                              ; preds = %73, %177
  %179 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %180 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @I40E_ERR_NOT_IMPLEMENTED, align 4
  %183 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %179, %struct.ixl_vf* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %31, %72, %178, %171, %165, %159, %153, %147, %141, %135, %129, %123, %117, %108, %102, %96, %87, %81, %75
  ret void
}

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @I40E_VC_DEBUG(%struct.ixl_pf*, i32, i8*, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @ixl_vc_opcode_level(i32) #1

declare dso_local i32 @ixl_vc_opcode_str(i32) #1

declare dso_local i32 @ixl_vf_version_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_reset_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_get_resources_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_notify_vf_link_state(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @ixl_vf_config_vsi_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_config_irq_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_enable_queues_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_disable_queues_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_add_mac_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_del_mac_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_add_vlan_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_del_vlan_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_config_promisc_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_get_stats_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_config_rss_key_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_config_rss_lut_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @ixl_vf_set_rss_hena_msg(%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64) #1

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
