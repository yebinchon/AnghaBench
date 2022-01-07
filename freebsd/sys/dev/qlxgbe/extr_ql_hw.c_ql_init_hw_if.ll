; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_ql_init_hw_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_ql_init_hw_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_30__, %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_30__ = type { i64, i64, i32*, i32, i32, i64, %struct.TYPE_28__, i64, %struct.TYPE_31__*, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i64, i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }

@Q8_MAX_INTR_VECTORS = common dso_local global i64 0, align 8
@NUM_RX_DESCRIPTORS = common dso_local global i64 0, align 8
@IFCAP_LRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_init_hw_if(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %9 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bzero(i32 %28, i32 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %12

42:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %43

43:                                               ; preds = %93, %42
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %43
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @Q8_MAX_INTR_VECTORS, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i64, i64* @Q8_MAX_INTR_VECTORS, align 8
  store i64 %60, i64* %8, align 8
  br label %68

61:                                               ; preds = %50
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = sub i64 %65, %66
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %61, %59
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @qla_config_intr_cntxt(%struct.TYPE_32__* %69, i64 %70, i64 %71, i32 1)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load i64, i64* %5, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i64, i64* %5, align 8
  store i64 %78, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %79

79:                                               ; preds = %83, %77
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @Q8_MAX_INTR_VECTORS, align 8
  %87 = call i64 @qla_config_intr_cntxt(%struct.TYPE_32__* %84, i64 %85, i64 %86, i32 0)
  %88 = load i64, i64* @Q8_MAX_INTR_VECTORS, align 8
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %5, align 8
  br label %79

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %74
  store i32 -1, i32* %2, align 4
  br label %290

93:                                               ; preds = %68
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %94, %95
  store i64 %96, i64* %5, align 8
  br label %43

97:                                               ; preds = %43
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %103 = call i64 @qla_init_rcv_cntxt(%struct.TYPE_32__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %290

106:                                              ; preds = %97
  store i64 0, i64* %5, align 8
  br label %107

107:                                              ; preds = %135, %106
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %108, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %107
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i64 %119
  store %struct.TYPE_31__* %120, %struct.TYPE_31__** %7, align 8
  %121 = load i64, i64* @NUM_RX_DESCRIPTORS, align 8
  %122 = sub nsw i64 %121, 2
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @QL_UPDATE_RDS_PRODUCER_INDEX(%struct.TYPE_32__* %127, i32 %130, i64 %133)
  br label %135

135:                                              ; preds = %114
  %136 = load i64, i64* %5, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %5, align 8
  br label %107

138:                                              ; preds = %107
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %140 = call i64 @qla_init_xmt_cntxt(%struct.TYPE_32__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %144 = call i32 @qla_del_rcv_cntxt(%struct.TYPE_32__* %143)
  store i32 -1, i32* %2, align 4
  br label %290

145:                                              ; preds = %138
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 7
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @qla_config_mac_addr(%struct.TYPE_32__* %149, i32* %153, i32 1, i32 1)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  store i32 -1, i32* %2, align 4
  br label %290

157:                                              ; preds = %145
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 255, i32* %162, align 16
  %163 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 255, i32* %163, align 4
  %164 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 255, i32* %164, align 8
  %165 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 255, i32* %165, align 4
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 255, i32* %166, align 16
  %167 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 255, i32* %167, align 4
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %169 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %170 = call i64 @qla_config_mac_addr(%struct.TYPE_32__* %168, i32* %169, i32 1, i32 1)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %157
  store i32 -1, i32* %2, align 4
  br label %290

173:                                              ; preds = %157
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %179 = call i64 @qla_hw_add_all_mcast(%struct.TYPE_32__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  store i32 -1, i32* %2, align 4
  br label %290

182:                                              ; preds = %173
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @ql_set_max_mtu(%struct.TYPE_32__* %183, i32 %186, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  store i32 -1, i32* %2, align 4
  br label %290

194:                                              ; preds = %182
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @qla_config_rss(%struct.TYPE_32__* %195, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 -1, i32* %2, align 4
  br label %290

203:                                              ; preds = %194
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %205 = call i64 @qla_config_rss_ind_table(%struct.TYPE_32__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store i32 -1, i32* %2, align 4
  br label %290

208:                                              ; preds = %203
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @qla_config_intr_coalesce(%struct.TYPE_32__* %209, i32 %213, i32 0, i32 1)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 -1, i32* %2, align 4
  br label %290

217:                                              ; preds = %208
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @qla_link_event_req(%struct.TYPE_32__* %218, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  store i32 -1, i32* %2, align 4
  br label %290

226:                                              ; preds = %217
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IFCAP_LRO, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %264

235:                                              ; preds = %226
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %235
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 3
  store i32 0, i32* %244, align 8
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @qla_config_fw_lro(%struct.TYPE_32__* %245, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %241
  store i32 -1, i32* %2, align 4
  br label %290

253:                                              ; preds = %241
  br label %263

254:                                              ; preds = %235
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 3
  store i32 1, i32* %257, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %259 = call i64 @qla_config_soft_lro(%struct.TYPE_32__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  store i32 -1, i32* %2, align 4
  br label %290

262:                                              ; preds = %254
  br label %263

263:                                              ; preds = %262, %253
  br label %264

264:                                              ; preds = %263, %226
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %266 = call i64 @qla_init_nic_func(%struct.TYPE_32__* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  store i32 -1, i32* %2, align 4
  br label %290

269:                                              ; preds = %264
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %271 = call i64 @qla_query_fw_dcbx_caps(%struct.TYPE_32__* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  store i32 -1, i32* %2, align 4
  br label %290

274:                                              ; preds = %269
  store i64 0, i64* %5, align 8
  br label %275

275:                                              ; preds = %286, %274
  %276 = load i64, i64* %5, align 8
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ult i64 %276, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %275
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %284 = load i64, i64* %5, align 8
  %285 = call i32 @QL_ENABLE_INTERRUPTS(%struct.TYPE_32__* %283, i64 %284)
  br label %286

286:                                              ; preds = %282
  %287 = load i64, i64* %5, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %5, align 8
  br label %275

289:                                              ; preds = %275
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %289, %273, %268, %261, %252, %225, %216, %207, %202, %193, %181, %172, %156, %142, %105, %92
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @qla_config_intr_cntxt(%struct.TYPE_32__*, i64, i64, i32) #1

declare dso_local i64 @qla_init_rcv_cntxt(%struct.TYPE_32__*) #1

declare dso_local i32 @QL_UPDATE_RDS_PRODUCER_INDEX(%struct.TYPE_32__*, i32, i64) #1

declare dso_local i64 @qla_init_xmt_cntxt(%struct.TYPE_32__*) #1

declare dso_local i32 @qla_del_rcv_cntxt(%struct.TYPE_32__*) #1

declare dso_local i64 @qla_config_mac_addr(%struct.TYPE_32__*, i32*, i32, i32) #1

declare dso_local i64 @qla_hw_add_all_mcast(%struct.TYPE_32__*) #1

declare dso_local i64 @ql_set_max_mtu(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @qla_config_rss(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @qla_config_rss_ind_table(%struct.TYPE_32__*) #1

declare dso_local i64 @qla_config_intr_coalesce(%struct.TYPE_32__*, i32, i32, i32) #1

declare dso_local i64 @qla_link_event_req(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @qla_config_fw_lro(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @qla_config_soft_lro(%struct.TYPE_32__*) #1

declare dso_local i64 @qla_init_nic_func(%struct.TYPE_32__*) #1

declare dso_local i64 @qla_query_fw_dcbx_caps(%struct.TYPE_32__*) #1

declare dso_local i32 @QL_ENABLE_INTERRUPTS(%struct.TYPE_32__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
