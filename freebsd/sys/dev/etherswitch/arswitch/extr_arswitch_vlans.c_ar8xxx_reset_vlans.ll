; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_reset_vlans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_reset_vlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32*, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.arswitch_softc.0*, i32, i32, i32)*, i32 (%struct.arswitch_softc.1*, i32, i32)*, i64 (%struct.arswitch_softc.2*)* }
%struct.arswitch_softc.0 = type opaque
%struct.arswitch_softc.1 = type opaque
%struct.arswitch_softc.2 = type opaque

@MA_NOTOWNED = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_DOUBLE_TAG = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@AR8X16_PORT_VLAN_MODE_MASK = common dso_local global i32 0, align 4
@AR8X16_VLAN_MEMBER = common dso_local global i32 0, align 4
@AR8X16_PORT_VLAN_DEST_PORTS_SHIFT = common dso_local global i32 0, align 4
@AR8X16_PORT_VLAN_MODE_SECURE = common dso_local global i32 0, align 4
@AR8X16_PORT_VLAN_MODE_SHIFT = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@AR8X16_PORT_VLAN_MODE_PORT_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8xxx_reset_vlans(%struct.arswitch_softc* %0) #0 {
  %2 = alloca %struct.arswitch_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %2, align 8
  %6 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %7 = load i32, i32* @MA_NOTOWNED, align 4
  %8 = call i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc* %6, i32 %7)
  %9 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %10 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %9)
  %11 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %12 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @memset(i32* %13, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %18 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %23 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @AR8X16_REG_PORT_CTRL(i32 %25)
  %27 = load i32, i32* @AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT, align 4
  %28 = shl i32 3, %27
  %29 = load i32, i32* @AR8X16_PORT_CTRL_DOUBLE_TAG, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @arswitch_modifyreg(i32 %24, i32 %26, i32 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %35 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %34)
  br label %246

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %42 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64 (%struct.arswitch_softc.2*)*, i64 (%struct.arswitch_softc.2*)** %43, align 8
  %45 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %46 = bitcast %struct.arswitch_softc* %45 to %struct.arswitch_softc.2*
  %47 = call i64 %44(%struct.arswitch_softc.2* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %51 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %50)
  br label %246

52:                                               ; preds = %40
  %53 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %54 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %152

58:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %62 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %67 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @AR8X16_REG_PORT_VLAN(i32 %69)
  %71 = load i32, i32* @AR8X16_PORT_VLAN_MODE_MASK, align 4
  %72 = load i32, i32* @AR8X16_VLAN_MEMBER, align 4
  %73 = load i32, i32* @AR8X16_PORT_VLAN_DEST_PORTS_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  %76 = load i32, i32* @AR8X16_PORT_VLAN_MODE_SECURE, align 4
  %77 = load i32, i32* @AR8X16_PORT_VLAN_MODE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = call i64 @arswitch_modifyreg(i32 %68, i32 %70, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %85 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 1, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %108, %83
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %91 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %96 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32 (%struct.arswitch_softc.1*, i32, i32)*, i32 (%struct.arswitch_softc.1*, i32, i32)** %97, align 8
  %99 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %100 = bitcast %struct.arswitch_softc* %99 to %struct.arswitch_softc.1*
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %103 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 %98(%struct.arswitch_softc.1* %100, i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %94
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %88

111:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %123, %111
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %115 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp sle i32 %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = shl i32 1, %119
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %112

126:                                              ; preds = %112
  %127 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %128 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32 (%struct.arswitch_softc.0*, i32, i32, i32)*, i32 (%struct.arswitch_softc.0*, i32, i32, i32)** %129, align 8
  %131 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %132 = bitcast %struct.arswitch_softc* %131 to %struct.arswitch_softc.0*
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %135 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %140 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 %130(%struct.arswitch_softc.0* %132, i32 %133, i32 %138, i32 %143)
  %145 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %146 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %147 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %243

152:                                              ; preds = %52
  %153 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %154 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %212

158:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %208, %158
  %160 = load i32, i32* %4, align 4
  %161 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %162 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp sle i32 %160, %163
  br i1 %164, label %165, label %211

165:                                              ; preds = %159
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %170 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %186, %165
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %178 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp sle i32 %176, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = load i32, i32* %5, align 4
  %183 = shl i32 1, %182
  %184 = load i32, i32* %3, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %175

189:                                              ; preds = %175
  %190 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %191 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @AR8X16_REG_PORT_VLAN(i32 %193)
  %195 = load i32, i32* @AR8X16_PORT_VLAN_MODE_MASK, align 4
  %196 = load i32, i32* @AR8X16_VLAN_MEMBER, align 4
  %197 = load i32, i32* @AR8X16_PORT_VLAN_DEST_PORTS_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = or i32 %195, %198
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @AR8X16_PORT_VLAN_DEST_PORTS_SHIFT, align 4
  %202 = shl i32 %200, %201
  %203 = load i32, i32* @AR8X16_PORT_VLAN_MODE_SECURE, align 4
  %204 = load i32, i32* @AR8X16_PORT_VLAN_MODE_PORT_ONLY, align 4
  %205 = shl i32 %203, %204
  %206 = or i32 %202, %205
  %207 = call i64 @arswitch_modifyreg(i32 %192, i32 %194, i32 %199, i32 %206)
  br label %208

208:                                              ; preds = %189
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %159

211:                                              ; preds = %159
  br label %242

212:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %238, %212
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %216 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp sle i32 %214, %217
  br i1 %218, label %219, label %241

219:                                              ; preds = %213
  %220 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %221 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @AR8X16_REG_PORT_VLAN(i32 %223)
  %225 = load i32, i32* @AR8X16_PORT_VLAN_MODE_MASK, align 4
  %226 = load i32, i32* @AR8X16_VLAN_MEMBER, align 4
  %227 = load i32, i32* @AR8X16_PORT_VLAN_DEST_PORTS_SHIFT, align 4
  %228 = shl i32 %226, %227
  %229 = or i32 %225, %228
  %230 = load i32, i32* @AR8X16_VLAN_MEMBER, align 4
  %231 = load i32, i32* @AR8X16_PORT_VLAN_DEST_PORTS_SHIFT, align 4
  %232 = shl i32 %230, %231
  %233 = load i32, i32* @AR8X16_PORT_VLAN_MODE_SECURE, align 4
  %234 = load i32, i32* @AR8X16_PORT_VLAN_MODE_PORT_ONLY, align 4
  %235 = shl i32 %233, %234
  %236 = or i32 %232, %235
  %237 = call i64 @arswitch_modifyreg(i32 %222, i32 %224, i32 %229, i32 %236)
  br label %238

238:                                              ; preds = %219
  %239 = load i32, i32* %4, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %4, align 4
  br label %213

241:                                              ; preds = %213
  br label %242

242:                                              ; preds = %241, %211
  br label %243

243:                                              ; preds = %242, %126
  %244 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %245 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %244)
  br label %246

246:                                              ; preds = %243, %49, %33
  ret void
}

declare dso_local i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @arswitch_modifyreg(i32, i32, i32, i32) #1

declare dso_local i32 @AR8X16_REG_PORT_CTRL(i32) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @AR8X16_REG_PORT_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
