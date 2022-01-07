; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32*, i32, i32, i32, i32, %struct.TYPE_32__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_SGE_MAX_RESERVED = common dso_local global i32 0, align 4
@SLI_RSRC_FCOE_XRI = common dso_local global i32 0, align 4
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@SLI_QTYPE_RQ = common dso_local global i64 0, align 8
@OCS_HW_TOPOLOGY_NONE = common dso_local global i32 0, align 4
@OCS_HW_TOPOLOGY_NPORT = common dso_local global i32 0, align 4
@OCS_HW_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported topology %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported speed %#x\0A\00", align 1
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_BE3_SKH_VF = common dso_local global i32 0, align 4
@SLI_RSRC_FCOE_VPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported property %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_get(%struct.TYPE_31__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %503

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %494 [
    i32 145, label %18
    i32 144, label %24
    i32 152, label %32
    i32 151, label %38
    i32 150, label %44
    i32 141, label %52
    i32 182, label %58
    i32 177, label %63
    i32 179, label %69
    i32 183, label %75
    i32 178, label %94
    i32 181, label %100
    i32 180, label %106
    i32 185, label %112
    i32 184, label %118
    i32 149, label %124
    i32 148, label %129
    i32 132, label %134
    i32 176, label %168
    i32 153, label %174
    i32 155, label %180
    i32 157, label %210
    i32 133, label %215
    i32 134, label %220
    i32 175, label %225
    i32 172, label %230
    i32 174, label %236
    i32 173, label %242
    i32 170, label %256
    i32 168, label %261
    i32 169, label %266
    i32 142, label %271
    i32 164, label %283
    i32 163, label %288
    i32 162, label %293
    i32 161, label %297
    i32 143, label %302
    i32 160, label %307
    i32 159, label %312
    i32 158, label %317
    i32 156, label %322
    i32 165, label %327
    i32 154, label %332
    i32 146, label %337
    i32 171, label %341
    i32 167, label %347
    i32 166, label %353
    i32 131, label %359
    i32 136, label %364
    i32 137, label %379
    i32 135, label %438
    i32 138, label %459
    i32 140, label %476
    i32 139, label %482
    i32 147, label %488
  ]

18:                                               ; preds = %15
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %501

24:                                               ; preds = %15
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SLI4_SGE_MAX_RESERVED, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %501

32:                                               ; preds = %15
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 5
  %35 = load i32, i32* @SLI_RSRC_FCOE_XRI, align 4
  %36 = call i32 @sli_get_max_rsrc(%struct.TYPE_32__* %34, i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %501

38:                                               ; preds = %15
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 5
  %41 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %42 = call i32 @sli_get_max_rsrc(%struct.TYPE_32__* %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %501

44:                                               ; preds = %15
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SLI_QTYPE_RQ, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %501

52:                                               ; preds = %15
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %501

58:                                               ; preds = %15
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 5
  %61 = call i32 @sli_get_auto_xfer_rdy_capable(%struct.TYPE_32__* %60)
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %501

63:                                               ; preds = %15
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %501

69:                                               ; preds = %15
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %501

75:                                               ; preds = %15
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 18
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %90 [
    i32 0, label %80
    i32 1, label %82
    i32 2, label %84
    i32 3, label %86
    i32 4, label %88
  ]

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  store i32 512, i32* %81, align 4
  br label %93

82:                                               ; preds = %75
  %83 = load i32*, i32** %7, align 8
  store i32 1024, i32* %83, align 4
  br label %93

84:                                               ; preds = %75
  %85 = load i32*, i32** %7, align 8
  store i32 2048, i32* %85, align 4
  br label %93

86:                                               ; preds = %75
  %87 = load i32*, i32** %7, align 8
  store i32 4096, i32* %87, align 4
  br label %93

88:                                               ; preds = %75
  %89 = load i32*, i32** %7, align 8
  store i32 520, i32* %89, align 4
  br label %93

90:                                               ; preds = %75
  %91 = load i32*, i32** %7, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %88, %86, %84, %82, %80
  br label %501

94:                                               ; preds = %15
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %501

100:                                              ; preds = %15
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %501

106:                                              ; preds = %15
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  br label %501

112:                                              ; preds = %15
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  br label %501

118:                                              ; preds = %15
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %7, align 8
  store i32 %122, i32* %123, align 4
  br label %501

124:                                              ; preds = %15
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 5
  %127 = call i32 @sli_get_max_sge(%struct.TYPE_32__* %126)
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %501

129:                                              ; preds = %15
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 5
  %132 = call i32 @sli_get_max_sgl(%struct.TYPE_32__* %131)
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %501

134:                                              ; preds = %15
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @OCS_HW_TOPOLOGY_NONE, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  br label %501

143:                                              ; preds = %134
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %157 [
    i32 128, label %148
    i32 130, label %151
    i32 129, label %154
  ]

148:                                              ; preds = %143
  %149 = load i32, i32* @OCS_HW_TOPOLOGY_NPORT, align 4
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  br label %167

151:                                              ; preds = %143
  %152 = load i32, i32* @OCS_HW_TOPOLOGY_LOOP, align 4
  %153 = load i32*, i32** %7, align 8
  store i32 %152, i32* %153, align 4
  br label %167

154:                                              ; preds = %143
  %155 = load i32, i32* @OCS_HW_TOPOLOGY_NONE, align 4
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  br label %167

157:                                              ; preds = %143
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ocs_log_test(i32 %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %157, %154, %151, %148
  br label %501

168:                                              ; preds = %15
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %7, align 8
  store i32 %172, i32* %173, align 4
  br label %501

174:                                              ; preds = %15
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %7, align 8
  store i32 %178, i32* %179, align 4
  br label %501

180:                                              ; preds = %15
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 4
  switch i32 %184, label %199 [
    i32 192, label %185
    i32 186, label %187
    i32 190, label %189
    i32 188, label %191
    i32 187, label %193
    i32 191, label %195
    i32 189, label %197
  ]

185:                                              ; preds = %180
  %186 = load i32*, i32** %7, align 8
  store i32 10000, i32* %186, align 4
  br label %209

187:                                              ; preds = %180
  %188 = load i32*, i32** %7, align 8
  store i32 0, i32* %188, align 4
  br label %209

189:                                              ; preds = %180
  %190 = load i32*, i32** %7, align 8
  store i32 2000, i32* %190, align 4
  br label %209

191:                                              ; preds = %180
  %192 = load i32*, i32** %7, align 8
  store i32 4000, i32* %192, align 4
  br label %209

193:                                              ; preds = %180
  %194 = load i32*, i32** %7, align 8
  store i32 8000, i32* %194, align 4
  br label %209

195:                                              ; preds = %180
  %196 = load i32*, i32** %7, align 8
  store i32 16000, i32* %196, align 4
  br label %209

197:                                              ; preds = %180
  %198 = load i32*, i32** %7, align 8
  store i32 32000, i32* %198, align 4
  br label %209

199:                                              ; preds = %180
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ocs_log_test(i32 %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %199, %197, %195, %193, %191, %189, %187, %185
  br label %501

210:                                              ; preds = %15
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 5
  %213 = call i32 @sli_get_if_type(%struct.TYPE_32__* %212)
  %214 = load i32*, i32** %7, align 8
  store i32 %213, i32* %214, align 4
  br label %501

215:                                              ; preds = %15
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 5
  %218 = call i32 @sli_get_sli_rev(%struct.TYPE_32__* %217)
  %219 = load i32*, i32** %7, align 8
  store i32 %218, i32* %219, align 4
  br label %501

220:                                              ; preds = %15
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 5
  %223 = call i32 @sli_get_sli_family(%struct.TYPE_32__* %222)
  %224 = load i32*, i32** %7, align 8
  store i32 %223, i32* %224, align 4
  br label %501

225:                                              ; preds = %15
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 5
  %228 = call i32 @sli_get_dif_capable(%struct.TYPE_32__* %227)
  %229 = load i32*, i32** %7, align 8
  store i32 %228, i32* %229, align 4
  br label %501

230:                                              ; preds = %15
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 12
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %7, align 8
  store i32 %234, i32* %235, align 4
  br label %501

236:                                              ; preds = %15
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i32 0, i32 13
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %7, align 8
  store i32 %240, i32* %241, align 4
  br label %501

242:                                              ; preds = %15
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @SLI4_IF_TYPE_LANCER_FC_ETH, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %242
  %250 = load i32, i32* @TRUE, align 4
  %251 = load i32*, i32** %7, align 8
  store i32 %250, i32* %251, align 4
  br label %255

252:                                              ; preds = %242
  %253 = load i32, i32* @FALSE, align 4
  %254 = load i32*, i32** %7, align 8
  store i32 %253, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %249
  br label %501

256:                                              ; preds = %15
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32*, i32** %7, align 8
  store i32 %259, i32* %260, align 4
  br label %501

261:                                              ; preds = %15
  %262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %262, i32 0, i32 5
  %264 = call i32 @sli_dump_is_ready(%struct.TYPE_32__* %263)
  %265 = load i32*, i32** %7, align 8
  store i32 %264, i32* %265, align 4
  br label %501

266:                                              ; preds = %15
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 5
  %269 = call i32 @sli_dump_is_present(%struct.TYPE_32__* %268)
  %270 = load i32*, i32** %7, align 8
  store i32 %269, i32* %270, align 4
  br label %501

271:                                              ; preds = %15
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 5
  %274 = call i32 @sli_reset_required(%struct.TYPE_32__* %273)
  store i32 %274, i32* %9, align 4
  %275 = load i32, i32* %9, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  %278 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %278, i32* %8, align 4
  br label %282

279:                                              ; preds = %271
  %280 = load i32, i32* %9, align 4
  %281 = load i32*, i32** %7, align 8
  store i32 %280, i32* %281, align 4
  br label %282

282:                                              ; preds = %279, %277
  br label %501

283:                                              ; preds = %15
  %284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %284, i32 0, i32 5
  %286 = call i32 @sli_fw_error_status(%struct.TYPE_32__* %285)
  %287 = load i32*, i32** %7, align 8
  store i32 %286, i32* %287, align 4
  br label %501

288:                                              ; preds = %15
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 5
  %291 = call i32 @sli_fw_ready(%struct.TYPE_32__* %290)
  %292 = load i32*, i32** %7, align 8
  store i32 %291, i32* %292, align 4
  br label %501

293:                                              ; preds = %15
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %295 = call i32 @ocs_hw_get_fw_timed_out(%struct.TYPE_31__* %294)
  %296 = load i32*, i32** %7, align 8
  store i32 %295, i32* %296, align 4
  br label %501

297:                                              ; preds = %15
  %298 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %298, i32 0, i32 5
  %300 = call i32 @sli_get_hlm_capable(%struct.TYPE_32__* %299)
  %301 = load i32*, i32** %7, align 8
  store i32 %300, i32* %301, align 4
  br label %501

302:                                              ; preds = %15
  %303 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 5
  %305 = call i32 @sli_get_sgl_preregister_required(%struct.TYPE_32__* %304)
  %306 = load i32*, i32** %7, align 8
  store i32 %305, i32* %306, align 4
  br label %501

307:                                              ; preds = %15
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 5
  %310 = call i32 @sli_get_hw_revision(%struct.TYPE_32__* %309, i32 0)
  %311 = load i32*, i32** %7, align 8
  store i32 %310, i32* %311, align 4
  br label %501

312:                                              ; preds = %15
  %313 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %313, i32 0, i32 5
  %315 = call i32 @sli_get_hw_revision(%struct.TYPE_32__* %314, i32 1)
  %316 = load i32*, i32** %7, align 8
  store i32 %315, i32* %316, align 4
  br label %501

317:                                              ; preds = %15
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 5
  %320 = call i32 @sli_get_hw_revision(%struct.TYPE_32__* %319, i32 2)
  %321 = load i32*, i32** %7, align 8
  store i32 %320, i32* %321, align 4
  br label %501

322:                                              ; preds = %15
  %323 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %7, align 8
  store i32 %325, i32* %326, align 4
  br label %501

327:                                              ; preds = %15
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load i32*, i32** %7, align 8
  store i32 %330, i32* %331, align 4
  br label %501

332:                                              ; preds = %15
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 5
  %335 = call i32 @sli_get_link_module_type(%struct.TYPE_32__* %334)
  %336 = load i32*, i32** %7, align 8
  store i32 %335, i32* %336, align 4
  br label %501

337:                                              ; preds = %15
  %338 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %339 = call i32 @ocs_hw_get_num_chutes(%struct.TYPE_31__* %338)
  %340 = load i32*, i32** %7, align 8
  store i32 %339, i32* %340, align 4
  br label %501

341:                                              ; preds = %15
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %342, i32 0, i32 7
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32*, i32** %7, align 8
  store i32 %345, i32* %346, align 4
  br label %501

347:                                              ; preds = %15
  %348 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %348, i32 0, i32 6
  %350 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i32 0, i32 14
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %7, align 8
  store i32 %351, i32* %352, align 4
  br label %501

353:                                              ; preds = %15
  %354 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %354, i32 0, i32 6
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 15
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %7, align 8
  store i32 %357, i32* %358, align 4
  br label %501

359:                                              ; preds = %15
  %360 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %360, i32 0, i32 5
  %362 = call i32 @sli_get_vpd_len(%struct.TYPE_32__* %361)
  %363 = load i32*, i32** %7, align 8
  store i32 %362, i32* %363, align 4
  br label %501

364:                                              ; preds = %15
  %365 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %365, i32 0, i32 5
  %367 = call i32 @sli_get_is_sgl_chaining_capable(%struct.TYPE_32__* %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %375, label %369

369:                                              ; preds = %364
  %370 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br label %375

375:                                              ; preds = %369, %364
  %376 = phi i1 [ true, %364 ], [ %374, %369 ]
  %377 = zext i1 %376 to i32
  %378 = load i32*, i32** %7, align 8
  store i32 %377, i32* %378, align 4
  br label %501

379:                                              ; preds = %15
  %380 = load i32, i32* @FALSE, align 4
  %381 = load i32*, i32** %7, align 8
  store i32 %380, i32* %381, align 4
  %382 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 5
  %384 = call i32 @sli_get_is_sgl_chaining_capable(%struct.TYPE_32__* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %392, label %386

386:                                              ; preds = %379
  %387 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %387, i32 0, i32 7
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %406

392:                                              ; preds = %386, %379
  %393 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %393, i32 0, i32 5
  %395 = call i32 @sli_get_sgl_preregister(%struct.TYPE_32__* %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %406, label %397

397:                                              ; preds = %392
  %398 = load i32, i32* @SLI4_IF_TYPE_LANCER_FC_ETH, align 4
  %399 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %399, i32 0, i32 5
  %401 = call i32 @sli_get_if_type(%struct.TYPE_32__* %400)
  %402 = icmp eq i32 %398, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %397
  %404 = load i32, i32* @TRUE, align 4
  %405 = load i32*, i32** %7, align 8
  store i32 %404, i32* %405, align 4
  br label %406

406:                                              ; preds = %403, %397, %392, %386
  %407 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %407, i32 0, i32 5
  %409 = call i32 @sli_get_is_sgl_chaining_capable(%struct.TYPE_32__* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %406
  %412 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %412, i32 0, i32 7
  %414 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %437

417:                                              ; preds = %411, %406
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %418, i32 0, i32 5
  %420 = call i32 @sli_get_sgl_preregister(%struct.TYPE_32__* %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %437

422:                                              ; preds = %417
  %423 = load i32, i32* @SLI4_IF_TYPE_BE3_SKH_PF, align 4
  %424 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %424, i32 0, i32 5
  %426 = call i32 @sli_get_if_type(%struct.TYPE_32__* %425)
  %427 = icmp eq i32 %423, %426
  br i1 %427, label %434, label %428

428:                                              ; preds = %422
  %429 = load i32, i32* @SLI4_IF_TYPE_BE3_SKH_VF, align 4
  %430 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %430, i32 0, i32 5
  %432 = call i32 @sli_get_if_type(%struct.TYPE_32__* %431)
  %433 = icmp eq i32 %429, %432
  br i1 %433, label %434, label %437

434:                                              ; preds = %428, %422
  %435 = load i32, i32* @TRUE, align 4
  %436 = load i32*, i32** %7, align 8
  store i32 %435, i32* %436, align 4
  br label %437

437:                                              ; preds = %434, %428, %417, %411
  br label %501

438:                                              ; preds = %15
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i32 0, i32 5
  %441 = call i32 @sli_get_is_sgl_chaining_capable(%struct.TYPE_32__* %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %449, label %443

443:                                              ; preds = %438
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %444, i32 0, i32 7
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %443, %438
  %450 = load i32, i32* @SLI4_IF_TYPE_LANCER_FC_ETH, align 4
  %451 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %451, i32 0, i32 5
  %453 = call i32 @sli_get_if_type(%struct.TYPE_32__* %452)
  %454 = icmp eq i32 %450, %453
  br label %455

455:                                              ; preds = %449, %443
  %456 = phi i1 [ false, %443 ], [ %454, %449 ]
  %457 = zext i1 %456 to i32
  %458 = load i32*, i32** %7, align 8
  store i32 %457, i32* %458, align 4
  br label %501

459:                                              ; preds = %15
  %460 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %460, i32 0, i32 7
  %462 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %459
  %466 = load i32*, i32** %7, align 8
  store i32 0, i32* %466, align 4
  br label %475

467:                                              ; preds = %459
  %468 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %468, i32 0, i32 5
  %470 = call i32 @sli_get_if_type(%struct.TYPE_32__* %469)
  %471 = load i32, i32* @SLI4_IF_TYPE_LANCER_FC_ETH, align 4
  %472 = icmp eq i32 %470, %471
  %473 = zext i1 %472 to i32
  %474 = load i32*, i32** %7, align 8
  store i32 %473, i32* %474, align 4
  br label %475

475:                                              ; preds = %467, %465
  br label %501

476:                                              ; preds = %15
  %477 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %477, i32 0, i32 6
  %479 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %478, i32 0, i32 16
  %480 = load i32, i32* %479, align 4
  %481 = load i32*, i32** %7, align 8
  store i32 %480, i32* %481, align 4
  br label %501

482:                                              ; preds = %15
  %483 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %483, i32 0, i32 6
  %485 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %484, i32 0, i32 17
  %486 = load i32, i32* %485, align 4
  %487 = load i32*, i32** %7, align 8
  store i32 %486, i32* %487, align 4
  br label %501

488:                                              ; preds = %15
  %489 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %489, i32 0, i32 5
  %491 = load i32, i32* @SLI_RSRC_FCOE_VPI, align 4
  %492 = call i32 @sli_get_max_rsrc(%struct.TYPE_32__* %490, i32 %491)
  %493 = load i32*, i32** %7, align 8
  store i32 %492, i32* %493, align 4
  br label %501

494:                                              ; preds = %15
  %495 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* %6, align 4
  %499 = call i32 @ocs_log_test(i32 %497, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %498)
  %500 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %500, i32* %8, align 4
  br label %501

501:                                              ; preds = %494, %488, %482, %476, %475, %455, %437, %375, %359, %353, %347, %341, %337, %332, %327, %322, %317, %312, %307, %302, %297, %293, %288, %283, %282, %266, %261, %256, %255, %236, %230, %225, %220, %215, %210, %209, %174, %168, %167, %140, %129, %124, %118, %112, %106, %100, %94, %93, %69, %63, %58, %52, %44, %38, %32, %24, %18
  %502 = load i32, i32* %8, align 4
  store i32 %502, i32* %4, align 4
  br label %503

503:                                              ; preds = %501, %13
  %504 = load i32, i32* %4, align 4
  ret i32 %504
}

declare dso_local i32 @sli_get_max_rsrc(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sli_get_auto_xfer_rdy_capable(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_max_sge(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_max_sgl(%struct.TYPE_32__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

declare dso_local i32 @sli_get_if_type(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_sli_rev(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_sli_family(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_dif_capable(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_dump_is_ready(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_dump_is_present(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_reset_required(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_fw_error_status(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_fw_ready(%struct.TYPE_32__*) #1

declare dso_local i32 @ocs_hw_get_fw_timed_out(%struct.TYPE_31__*) #1

declare dso_local i32 @sli_get_hlm_capable(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_sgl_preregister_required(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_hw_revision(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sli_get_link_module_type(%struct.TYPE_32__*) #1

declare dso_local i32 @ocs_hw_get_num_chutes(%struct.TYPE_31__*) #1

declare dso_local i32 @sli_get_vpd_len(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_is_sgl_chaining_capable(%struct.TYPE_32__*) #1

declare dso_local i32 @sli_get_sgl_preregister(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
