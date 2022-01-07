; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ksz8995ma_softc = type { i32, i64, i32*, i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }
%struct.ifnet = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@KSZ8995MA_PC4_BASE = common dso_local global i64 0, align 8
@KSZ8995MA_PORT_SIZE = common dso_local global i32 0, align 4
@KSZ8995MA_PC3_BASE = common dso_local global i64 0, align 8
@KSZ8995MA_PC0_BASE = common dso_local global i64 0, align 8
@ETHERSWITCH_PORT_ADDTAG = common dso_local global i32 0, align 4
@KSZ8995MA_TAG_INS = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_STRIPTAG = common dso_local global i32 0, align 4
@KSZ8995MA_TAG_RM = common dso_local global i32 0, align 4
@KSZ8995MA_PC2_BASE = common dso_local global i64 0, align 8
@ETHERSWITCH_PORT_DROPUNTAGGED = common dso_local global i32 0, align 4
@KSZ8995MA_DROP_NONPVID = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_INGRESS = common dso_local global i32 0, align 4
@KSZ8995MA_INGR_FILT = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @ksz8995ma_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_setport(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ksz8995ma_softc*, align 8
  %7 = alloca %struct.mii_data*, align 8
  %8 = alloca %struct.ifmedia*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.ksz8995ma_softc* @device_get_softc(i32 %13)
  store %struct.ksz8995ma_softc* %14, %struct.ksz8995ma_softc** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %2
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %3, align 4
  br label %226

29:                                               ; preds = %19
  %30 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %184

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* @KSZ8995MA_PC4_BASE, align 8
  %38 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @ksz8995ma_writereg(i32 %36, i64 %44, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i64, i64* @KSZ8995MA_PC3_BASE, align 8
  %52 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %51, %57
  %59 = call i32 @ksz8995ma_readreg(i32 %50, i64 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i64, i64* @KSZ8995MA_PC3_BASE, align 8
  %62 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %61, %67
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 240
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 15
  %76 = or i32 %70, %75
  %77 = call i32 @ksz8995ma_writereg(i32 %60, i64 %68, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = load i64, i64* @KSZ8995MA_PC0_BASE, align 8
  %80 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %79, %85
  %87 = call i32 @ksz8995ma_readreg(i32 %78, i64 %86)
  store i32 %87, i32* %12, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %35
  %95 = load i32, i32* @KSZ8995MA_TAG_INS, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %103

98:                                               ; preds = %35
  %99 = load i32, i32* @KSZ8995MA_TAG_INS, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %98, %94
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @KSZ8995MA_TAG_RM, align 4
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %119

114:                                              ; preds = %103
  %115 = load i32, i32* @KSZ8995MA_TAG_RM, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %114, %110
  %120 = load i32, i32* %4, align 4
  %121 = load i64, i64* @KSZ8995MA_PC0_BASE, align 8
  %122 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @ksz8995ma_writereg(i32 %120, i64 %128, i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = load i64, i64* @KSZ8995MA_PC2_BASE, align 8
  %133 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %132, %138
  %140 = call i32 @ksz8995ma_readreg(i32 %131, i64 %139)
  store i32 %140, i32* %12, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ETHERSWITCH_PORT_DROPUNTAGGED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %119
  %148 = load i32, i32* @KSZ8995MA_DROP_NONPVID, align 4
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %156

151:                                              ; preds = %119
  %152 = load i32, i32* @KSZ8995MA_DROP_NONPVID, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %12, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %151, %147
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ETHERSWITCH_PORT_INGRESS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @KSZ8995MA_INGR_FILT, align 4
  %165 = load i32, i32* %12, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %12, align 4
  br label %172

167:                                              ; preds = %156
  %168 = load i32, i32* @KSZ8995MA_INGR_FILT, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i32, i32* %4, align 4
  %174 = load i64, i64* @KSZ8995MA_PC2_BASE, align 8
  %175 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %175, %178
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %174, %180
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @ksz8995ma_writereg(i32 %173, i64 %181, i32 %182)
  br label %184

184:                                              ; preds = %172, %29
  %185 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %6, align 8
  %186 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %10, align 4
  %194 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %6, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = call %struct.mii_data* @ksz8995ma_miiforport(%struct.ksz8995ma_softc* %194, i64 %198)
  store %struct.mii_data* %199, %struct.mii_data** %7, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %6, align 8
  %202 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %200, %203
  br i1 %204, label %205, label %225

205:                                              ; preds = %184
  %206 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %207 = icmp eq %struct.mii_data* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* @ENXIO, align 4
  store i32 %209, i32* %3, align 4
  br label %226

210:                                              ; preds = %205
  %211 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %6, align 8
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = call %struct.ifnet* @ksz8995ma_ifpforport(%struct.ksz8995ma_softc* %211, i64 %215)
  store %struct.ifnet* %216, %struct.ifnet** %9, align 8
  %217 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %218 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %217, i32 0, i32 0
  store %struct.ifmedia* %218, %struct.ifmedia** %8, align 8
  %219 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load %struct.ifmedia*, %struct.ifmedia** %8, align 8
  %223 = load i32, i32* @SIOCSIFMEDIA, align 4
  %224 = call i32 @ifmedia_ioctl(%struct.ifnet* %219, i32* %221, %struct.ifmedia* %222, i32 %223)
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %210, %184
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %208, %27
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.ksz8995ma_softc* @device_get_softc(i32) #1

declare dso_local i32 @ksz8995ma_writereg(i32, i64, i32) #1

declare dso_local i32 @ksz8995ma_readreg(i32, i64) #1

declare dso_local %struct.mii_data* @ksz8995ma_miiforport(%struct.ksz8995ma_softc*, i64) #1

declare dso_local %struct.ifnet* @ksz8995ma_ifpforport(%struct.ksz8995ma_softc*, i64) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, i32*, %struct.ifmedia*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
