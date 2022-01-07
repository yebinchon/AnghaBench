; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_virtchnl.h_virtchnl_vc_validate_vf_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_virtchnl.h_virtchnl_vc_validate_vf_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtchnl_version_info = type { i32 }
%struct.virtchnl_vsi_queue_config_info = type { i32 }
%struct.virtchnl_irq_map_info = type { i32 }
%struct.virtchnl_ether_addr_list = type { i32 }
%struct.virtchnl_vlan_filter_list = type { i32 }
%struct.virtchnl_iwarp_qvlist_info = type { i32 }
%struct.virtchnl_rss_key = type { i32 }
%struct.virtchnl_rss_lut = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VIRTCHNL_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtchnl_version_info*, i32, i32*, i32)* @virtchnl_vc_validate_vf_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtchnl_vc_validate_vf_msg(%struct.virtchnl_version_info* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtchnl_version_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.virtchnl_vsi_queue_config_info*, align 8
  %13 = alloca %struct.virtchnl_irq_map_info*, align 8
  %14 = alloca %struct.virtchnl_ether_addr_list*, align 8
  %15 = alloca %struct.virtchnl_vlan_filter_list*, align 8
  %16 = alloca %struct.virtchnl_iwarp_qvlist_info*, align 8
  %17 = alloca %struct.virtchnl_rss_key*, align 8
  %18 = alloca %struct.virtchnl_rss_lut*, align 8
  store %struct.virtchnl_version_info* %0, %struct.virtchnl_version_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %197 [
    i32 128, label %21
    i32 131, label %22
    i32 135, label %23
    i32 146, label %29
    i32 147, label %30
    i32 145, label %31
    i32 152, label %55
    i32 140, label %79
    i32 142, label %79
    i32 154, label %80
    i32 144, label %80
    i32 153, label %104
    i32 143, label %104
    i32 150, label %128
    i32 136, label %129
    i32 134, label %130
    i32 133, label %138
    i32 151, label %139
    i32 149, label %164
    i32 148, label %178
    i32 137, label %192
    i32 130, label %193
    i32 139, label %194
    i32 141, label %194
    i32 132, label %195
    i32 138, label %196
    i32 129, label %196
  ]

21:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %199

22:                                               ; preds = %4
  br label %199

23:                                               ; preds = %4
  %24 = load %struct.virtchnl_version_info*, %struct.virtchnl_version_info** %6, align 8
  %25 = call i32 @VF_IS_V11(%struct.virtchnl_version_info* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 4, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %199

29:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %199

30:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %199

31:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = bitcast i32* %36 to %struct.virtchnl_vsi_queue_config_info*
  store %struct.virtchnl_vsi_queue_config_info* %37, %struct.virtchnl_vsi_queue_config_info** %12, align 8
  %38 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %12, align 8
  %39 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %12, align 8
  %48 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %35
  br label %54

54:                                               ; preds = %53, %31
  br label %199

55:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = bitcast i32* %60 to %struct.virtchnl_irq_map_info*
  store %struct.virtchnl_irq_map_info* %61, %struct.virtchnl_irq_map_info** %13, align 8
  %62 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %13, align 8
  %63 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %13, align 8
  %72 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %75, %59
  br label %78

78:                                               ; preds = %77, %55
  br label %199

79:                                               ; preds = %4, %4
  store i32 4, i32* %11, align 4
  br label %199

80:                                               ; preds = %4, %4
  store i32 4, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32*, i32** %8, align 8
  %86 = bitcast i32* %85 to %struct.virtchnl_ether_addr_list*
  store %struct.virtchnl_ether_addr_list* %86, %struct.virtchnl_ether_addr_list** %14, align 8
  %87 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %14, align 8
  %88 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %14, align 8
  %97 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %84
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %84
  br label %103

103:                                              ; preds = %102, %80
  br label %199

104:                                              ; preds = %4, %4
  store i32 4, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = bitcast i32* %109 to %struct.virtchnl_vlan_filter_list*
  store %struct.virtchnl_vlan_filter_list* %110, %struct.virtchnl_vlan_filter_list** %15, align 8
  %111 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %15, align 8
  %112 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %11, align 4
  %120 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %15, align 8
  %121 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %124, %108
  br label %127

127:                                              ; preds = %126, %104
  br label %199

128:                                              ; preds = %4
  store i32 4, i32* %11, align 4
  br label %199

129:                                              ; preds = %4
  store i32 4, i32* %11, align 4
  br label %199

130:                                              ; preds = %4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %11, align 4
  br label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %135, %133
  br label %199

138:                                              ; preds = %4
  br label %199

139:                                              ; preds = %4
  store i32 4, i32* %11, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load i32*, i32** %8, align 8
  %145 = bitcast i32* %144 to %struct.virtchnl_iwarp_qvlist_info*
  store %struct.virtchnl_iwarp_qvlist_info* %145, %struct.virtchnl_iwarp_qvlist_info** %16, align 8
  %146 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %16, align 8
  %147 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @TRUE, align 4
  store i32 %151, i32* %10, align 4
  br label %199

152:                                              ; preds = %143
  %153 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %16, align 8
  %154 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %152, %139
  br label %199

164:                                              ; preds = %4
  store i32 4, i32* %11, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i32*, i32** %8, align 8
  %170 = bitcast i32* %169 to %struct.virtchnl_rss_key*
  store %struct.virtchnl_rss_key* %170, %struct.virtchnl_rss_key** %17, align 8
  %171 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %17, align 8
  %172 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %168, %164
  br label %199

178:                                              ; preds = %4
  store i32 4, i32* %11, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i32*, i32** %8, align 8
  %184 = bitcast i32* %183 to %struct.virtchnl_rss_lut*
  store %struct.virtchnl_rss_lut* %184, %struct.virtchnl_rss_lut** %18, align 8
  %185 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %18, align 8
  %186 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %182, %178
  br label %199

192:                                              ; preds = %4
  br label %199

193:                                              ; preds = %4
  store i32 4, i32* %11, align 4
  br label %199

194:                                              ; preds = %4, %4
  br label %199

195:                                              ; preds = %4
  store i32 4, i32* %11, align 4
  br label %199

196:                                              ; preds = %4, %4
  br label %197

197:                                              ; preds = %4, %196
  %198 = load i32, i32* @VIRTCHNL_ERR_PARAM, align 4
  store i32 %198, i32* %5, align 4
  br label %209

199:                                              ; preds = %195, %194, %193, %192, %191, %177, %163, %150, %138, %137, %129, %128, %127, %103, %79, %78, %54, %30, %29, %28, %22, %21
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %202, %199
  %207 = load i32, i32* @VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH, align 4
  store i32 %207, i32* %5, align 4
  br label %209

208:                                              ; preds = %202
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %206, %197
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i32 @VF_IS_V11(%struct.virtchnl_version_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
