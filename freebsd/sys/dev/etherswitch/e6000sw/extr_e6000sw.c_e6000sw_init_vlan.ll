; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_init_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_init_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6000sw_softc = type { i32, i64, i32*, i32 }

@PORT_CONTROL = common dso_local global i32 0, align 4
@PORT_CONTROL_ENABLE = common dso_local global i32 0, align 4
@PORT_CONTROL_EGRESS = common dso_local global i32 0, align 4
@PORT_CONTROL_FRAME = common dso_local global i32 0, align 4
@PORT_CONTROL2 = common dso_local global i32 0, align 4
@PORT_CONTROL2_DOT1Q = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@PORT_VID = common dso_local global i32 0, align 4
@PORT_VID_PRIORITY_MASK = common dso_local global i32 0, align 4
@PORT_VID_DEF_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e6000sw_softc*)* @e6000sw_init_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_init_vlan(%struct.e6000sw_softc* %0) #0 {
  %2 = alloca %struct.e6000sw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e6000sw_softc* %0, %struct.e6000sw_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %10 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %15 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @REG_PORT(%struct.e6000sw_softc* %15, i32 %16)
  %18 = load i32, i32* @PORT_CONTROL, align 4
  %19 = call i32 @e6000sw_readreg(%struct.e6000sw_softc* %14, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %21 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @REG_PORT(%struct.e6000sw_softc* %21, i32 %22)
  %24 = load i32, i32* @PORT_CONTROL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PORT_CONTROL_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @e6000sw_writereg(%struct.e6000sw_softc* %20, i32 %23, i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %35 = call i32 @e6000sw_vtu_flush(%struct.e6000sw_softc* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %89, %33
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %39 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %36
  %43 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %44 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @REG_PORT(%struct.e6000sw_softc* %44, i32 %45)
  %47 = load i32, i32* @PORT_CONTROL, align 4
  %48 = call i32 @e6000sw_readreg(%struct.e6000sw_softc* %43, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @PORT_CONTROL_EGRESS, align 4
  %50 = load i32, i32* @PORT_CONTROL_FRAME, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %56 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @REG_PORT(%struct.e6000sw_softc* %56, i32 %57)
  %59 = load i32, i32* @PORT_CONTROL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @e6000sw_writereg(%struct.e6000sw_softc* %55, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %63 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @REG_PORT(%struct.e6000sw_softc* %63, i32 %64)
  %66 = load i32, i32* @PORT_CONTROL2, align 4
  %67 = call i32 @e6000sw_readreg(%struct.e6000sw_softc* %62, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @PORT_CONTROL2_DOT1Q, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %73 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %42
  %78 = load i32, i32* @PORT_CONTROL2_DOT1Q, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %42
  %82 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %83 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @REG_PORT(%struct.e6000sw_softc* %83, i32 %84)
  %86 = load i32, i32* @PORT_CONTROL2, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @e6000sw_writereg(%struct.e6000sw_softc* %82, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %36

92:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %141, %92
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %96 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %144

99:                                               ; preds = %93
  %100 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @e6000sw_is_portenabled(%struct.e6000sw_softc* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %141

105:                                              ; preds = %99
  %106 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %107 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @REG_PORT(%struct.e6000sw_softc* %107, i32 %108)
  %110 = load i32, i32* @PORT_VID, align 4
  %111 = call i32 @e6000sw_readreg(%struct.e6000sw_softc* %106, i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @PORT_VID_PRIORITY_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @PORT_VID_DEF_VID_MASK, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %121 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %105
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %133

128:                                              ; preds = %105
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %128, %125
  %134 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %135 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @REG_PORT(%struct.e6000sw_softc* %135, i32 %136)
  %138 = load i32, i32* @PORT_VID, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @e6000sw_writereg(%struct.e6000sw_softc* %134, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %133, %104
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %93

144:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %187, %144
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %148 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  %152 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @e6000sw_is_portenabled(%struct.e6000sw_softc* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %178, %156
  %158 = load i32, i32* %3, align 4
  %159 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %160 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %157
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %172, label %167

167:                                              ; preds = %163
  %168 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %169 = load i32, i32* %3, align 4
  %170 = call i64 @e6000sw_is_portenabled(%struct.e6000sw_softc* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167, %163
  br label %178

173:                                              ; preds = %167
  %174 = load i32, i32* %3, align 4
  %175 = shl i32 1, %174
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %173, %172
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %157

181:                                              ; preds = %157
  br label %182

182:                                              ; preds = %181, %151
  %183 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @e6000sw_port_vlan_assign(%struct.e6000sw_softc* %183, i32 %184, i32 0, i32 %185)
  br label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %145

190:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %205, %190
  %192 = load i32, i32* %3, align 4
  %193 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %194 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @nitems(i32* %195)
  %197 = icmp slt i32 %192, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %200 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %3, align 4
  br label %191

208:                                              ; preds = %191
  %209 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %210 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %208
  %215 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %216 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 1, i32* %218, align 4
  %219 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %220 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %221 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %226 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @e6000sw_vtu_update(%struct.e6000sw_softc* %219, i32 0, i32 %224, i32 1, i32 0, i32 %227)
  br label %229

229:                                              ; preds = %214, %208
  store i32 0, i32* %4, align 4
  br label %230

230:                                              ; preds = %258, %229
  %231 = load i32, i32* %4, align 4
  %232 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %233 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %261

236:                                              ; preds = %230
  %237 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %238 = load i32, i32* %4, align 4
  %239 = call i64 @e6000sw_is_portenabled(%struct.e6000sw_softc* %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  br label %258

242:                                              ; preds = %236
  %243 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %244 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @REG_PORT(%struct.e6000sw_softc* %244, i32 %245)
  %247 = load i32, i32* @PORT_CONTROL, align 4
  %248 = call i32 @e6000sw_readreg(%struct.e6000sw_softc* %243, i32 %246, i32 %247)
  store i32 %248, i32* %5, align 4
  %249 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %250 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %2, align 8
  %251 = load i32, i32* %4, align 4
  %252 = call i32 @REG_PORT(%struct.e6000sw_softc* %250, i32 %251)
  %253 = load i32, i32* @PORT_CONTROL, align 4
  %254 = load i32, i32* %5, align 4
  %255 = load i32, i32* @PORT_CONTROL_ENABLE, align 4
  %256 = or i32 %254, %255
  %257 = call i32 @e6000sw_writereg(%struct.e6000sw_softc* %249, i32 %252, i32 %253, i32 %256)
  br label %258

258:                                              ; preds = %242, %241
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %4, align 4
  br label %230

261:                                              ; preds = %230
  ret i32 0
}

declare dso_local i32 @e6000sw_readreg(%struct.e6000sw_softc*, i32, i32) #1

declare dso_local i32 @REG_PORT(%struct.e6000sw_softc*, i32) #1

declare dso_local i32 @e6000sw_writereg(%struct.e6000sw_softc*, i32, i32, i32) #1

declare dso_local i32 @e6000sw_vtu_flush(%struct.e6000sw_softc*) #1

declare dso_local i64 @e6000sw_is_portenabled(%struct.e6000sw_softc*, i32) #1

declare dso_local i32 @e6000sw_port_vlan_assign(%struct.e6000sw_softc*, i32, i32, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @e6000sw_vtu_update(%struct.e6000sw_softc*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
