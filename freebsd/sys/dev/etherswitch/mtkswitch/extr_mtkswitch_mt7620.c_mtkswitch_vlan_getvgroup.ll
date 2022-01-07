; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_getvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_getvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.mtkswitch_softc.1 = type opaque
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MTK_SWITCH_MT7620 = common dso_local global i64 0, align 8
@VTIM_MASK = common dso_local global i32 0, align 4
@MTKSWITCH_VTCR = common dso_local global i32 0, align 4
@VTCR_BUSY = common dso_local global i32 0, align 4
@VTCR_FUNC_VID_READ = common dso_local global i32 0, align 4
@VTCR_VID_MASK = common dso_local global i32 0, align 4
@VTCR_IDX_INVALID = common dso_local global i32 0, align 4
@MTKSWITCH_VAWD1 = common dso_local global i32 0, align 4
@VAWD1_VALID = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@VAWD1_MEMBER_OFF = common dso_local global i32 0, align 4
@VAWD1_MEMBER_MASK = common dso_local global i32 0, align 4
@MTKSWITCH_VAWD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, %struct.TYPE_7__*)* @mtkswitch_vlan_getvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_vlan_getvgroup(%struct.mtkswitch_softc* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %9 = load i32, i32* @MA_NOTOWNED, align 4
  %10 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %8, i32 %9)
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16, %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %192

27:                                               ; preds = %16
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %35 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %34)
  %36 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MTK_SWITCH_MT7620, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %27
  %42 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %44, align 8
  %46 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %47 = bitcast %struct.mtkswitch_softc* %46 to %struct.mtkswitch_softc.0*
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @MTKSWITCH_VTIM(i64 %50)
  %52 = call i32 %45(%struct.mtkswitch_softc.0* %47, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @VTIM_OFF(i64 %55)
  %57 = ashr i32 %52, %56
  %58 = load i32, i32* @VTIM_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %69

62:                                               ; preds = %27
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %41
  br label %70

70:                                               ; preds = %82, %69
  %71 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %73, align 8
  %75 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %76 = bitcast %struct.mtkswitch_softc* %75 to %struct.mtkswitch_softc.0*
  %77 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %78 = call i32 %74(%struct.mtkswitch_softc.0* %76, i32 %77)
  %79 = load i32, i32* @VTCR_BUSY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %70

83:                                               ; preds = %70
  %84 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %85 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %86, align 8
  %88 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %89 = bitcast %struct.mtkswitch_softc* %88 to %struct.mtkswitch_softc.1*
  %90 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %91 = load i32, i32* @VTCR_BUSY, align 4
  %92 = load i32, i32* @VTCR_FUNC_VID_READ, align 4
  %93 = or i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @VTCR_VID_MASK, align 4
  %99 = sext i32 %98 to i64
  %100 = and i64 %97, %99
  %101 = or i64 %94, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 %87(%struct.mtkswitch_softc.1* %89, i32 %90, i32 %102)
  br label %104

104:                                              ; preds = %116, %83
  %105 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %106 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %107, align 8
  %109 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %110 = bitcast %struct.mtkswitch_softc* %109 to %struct.mtkswitch_softc.0*
  %111 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %112 = call i32 %108(%struct.mtkswitch_softc.0* %110, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @VTCR_BUSY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %104

117:                                              ; preds = %104
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @VTCR_IDX_INVALID, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %124 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %123)
  store i32 0, i32* %3, align 4
  br label %192

125:                                              ; preds = %117
  %126 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %127 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %128, align 8
  %130 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %131 = bitcast %struct.mtkswitch_softc* %130 to %struct.mtkswitch_softc.0*
  %132 = load i32, i32* @MTKSWITCH_VAWD1, align 4
  %133 = call i32 %129(%struct.mtkswitch_softc.0* %131, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @VAWD1_VALID, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %125
  %139 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %147

144:                                              ; preds = %125
  %145 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %146 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %145)
  store i32 0, i32* %3, align 4
  br label %192

147:                                              ; preds = %138
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @VAWD1_MEMBER_OFF, align 4
  %150 = ashr i32 %148, %149
  %151 = load i32, i32* @VAWD1_MEMBER_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %156 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %157, align 8
  %159 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %160 = bitcast %struct.mtkswitch_softc* %159 to %struct.mtkswitch_softc.0*
  %161 = load i32, i32* @MTKSWITCH_VAWD2, align 4
  %162 = call i32 %158(%struct.mtkswitch_softc.0* %160, i32 %161)
  store i32 %162, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %186, %147
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %166 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %164, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %163
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @VAWD2_PORT_MASK(i32 %172)
  %174 = and i32 %171, %173
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @VAWD2_PORT_UNTAGGED(i32 %175)
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %170
  %179 = load i32, i32* %7, align 4
  %180 = shl i32 1, %179
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %178, %170
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %163

189:                                              ; preds = %163
  %190 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %191 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %190)
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %189, %144, %122, %25
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_VTIM(i64) #1

declare dso_local i32 @VTIM_OFF(i64) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @VAWD2_PORT_MASK(i32) #1

declare dso_local i32 @VAWD2_PORT_UNTAGGED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
