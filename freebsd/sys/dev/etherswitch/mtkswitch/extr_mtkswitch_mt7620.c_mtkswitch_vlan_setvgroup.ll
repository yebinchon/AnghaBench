; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.mtkswitch_softc.1 = type opaque
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MTKSWITCH_VTCR = common dso_local global i32 0, align 4
@VTCR_BUSY = common dso_local global i32 0, align 4
@MTK_SWITCH_MT7620 = common dso_local global i64 0, align 8
@VTIM_MASK = common dso_local global i32 0, align 4
@VAWD1_IVL_MAC = common dso_local global i32 0, align 4
@VAWD1_VTAG_EN = common dso_local global i32 0, align 4
@VAWD1_VALID = common dso_local global i32 0, align 4
@VAWD1_MEMBER_MASK = common dso_local global i32 0, align 4
@VAWD1_MEMBER_OFF = common dso_local global i32 0, align 4
@MTKSWITCH_VAWD1 = common dso_local global i32 0, align 4
@MTKSWITCH_VAWD2 = common dso_local global i32 0, align 4
@VTCR_FUNC_VID_WRITE = common dso_local global i32 0, align 4
@VTCR_VID_MASK = common dso_local global i32 0, align 4
@VTCR_IDX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, %struct.TYPE_7__*)* @mtkswitch_vlan_setvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_vlan_setvgroup(%struct.mtkswitch_softc* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %10 = load i32, i32* @MA_NOTOWNED, align 4
  %11 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %9, i32 %10)
  %12 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %22 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17, %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %206

28:                                               ; preds = %17
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %206

35:                                               ; preds = %28
  %36 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %37 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %36)
  br label %38

38:                                               ; preds = %50, %35
  %39 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %41, align 8
  %43 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %44 = bitcast %struct.mtkswitch_softc* %43 to %struct.mtkswitch_softc.0*
  %45 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %46 = call i32 %42(%struct.mtkswitch_softc.0* %44, i32 %45)
  %47 = load i32, i32* @VTCR_BUSY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %38

51:                                               ; preds = %38
  %52 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MTK_SWITCH_MT7620, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %51
  %58 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %59 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %60, align 8
  %62 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %63 = bitcast %struct.mtkswitch_softc* %62 to %struct.mtkswitch_softc.0*
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @MTKSWITCH_VTIM(i64 %66)
  %68 = call i32 %61(%struct.mtkswitch_softc.0* %63, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @VTIM_MASK, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @VTIM_OFF(i64 %72)
  %74 = shl i32 %69, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @VTIM_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @VTIM_OFF(i64 %85)
  %87 = shl i32 %82, %86
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %91 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %92, align 8
  %94 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %95 = bitcast %struct.mtkswitch_softc* %94 to %struct.mtkswitch_softc.1*
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @MTKSWITCH_VTIM(i64 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 %93(%struct.mtkswitch_softc.1* %95, i32 %99, i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  br label %110

106:                                              ; preds = %51
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %57
  %111 = load i32, i32* @VAWD1_IVL_MAC, align 4
  %112 = load i32, i32* @VAWD1_VTAG_EN, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @VAWD1_VALID, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %6, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @VAWD1_MEMBER_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @VAWD1_MEMBER_OFF, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %126 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %127, align 8
  %129 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %130 = bitcast %struct.mtkswitch_softc* %129 to %struct.mtkswitch_softc.1*
  %131 = load i32, i32* @MTKSWITCH_VAWD1, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 %128(%struct.mtkswitch_softc.1* %130, i32 %131, i32 %132)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %155, %110
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %137 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %134
  %142 = load i32, i32* %7, align 4
  %143 = shl i32 1, %142
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %143, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @VAWD2_PORT_TAGGED(i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %149, %141
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %134

158:                                              ; preds = %134
  %159 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %160 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %161, align 8
  %163 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %164 = bitcast %struct.mtkswitch_softc* %163 to %struct.mtkswitch_softc.1*
  %165 = load i32, i32* @MTKSWITCH_VAWD2, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 %162(%struct.mtkswitch_softc.1* %164, i32 %165, i32 %166)
  %168 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %169 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %170, align 8
  %172 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %173 = bitcast %struct.mtkswitch_softc* %172 to %struct.mtkswitch_softc.1*
  %174 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %175 = load i32, i32* @VTCR_BUSY, align 4
  %176 = load i32, i32* @VTCR_FUNC_VID_WRITE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @VTCR_VID_MASK, align 4
  %180 = and i32 %178, %179
  %181 = or i32 %177, %180
  %182 = call i32 %171(%struct.mtkswitch_softc.1* %173, i32 %174, i32 %181)
  br label %183

183:                                              ; preds = %195, %158
  %184 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %185 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %186, align 8
  %188 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %189 = bitcast %struct.mtkswitch_softc* %188 to %struct.mtkswitch_softc.0*
  %190 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %191 = call i32 %187(%struct.mtkswitch_softc.0* %189, i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* @VTCR_BUSY, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %183
  br label %183

196:                                              ; preds = %183
  %197 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %198 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %197)
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @VTCR_IDX_INVALID, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i32, i32* @EINVAL, align 4
  store i32 %204, i32* %3, align 4
  br label %206

205:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %203, %33, %26
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_VTIM(i64) #1

declare dso_local i32 @VTIM_OFF(i64) #1

declare dso_local i32 @VAWD2_PORT_TAGGED(i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
