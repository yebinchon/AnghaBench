; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.vr_softc* }
%struct.vr_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@VR_F_DETACHED = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@VR_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@VR_IMR = common dso_local global i32 0, align 4
@VR_INTRS = common dso_local global i32 0, align 4
@vr_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @vr_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vr_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 5
  %14 = load %struct.vr_softc*, %struct.vr_softc** %13, align 8
  store %struct.vr_softc* %14, %struct.vr_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %200 [
    i32 129, label %18
    i32 133, label %82
    i32 132, label %82
    i32 131, label %89
    i32 128, label %89
    i32 130, label %100
  ]

18:                                               ; preds = %3
  %19 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %20 = call i32 @VR_LOCK(%struct.vr_softc* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %18
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %39 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %37, %40
  %42 = load i32, i32* @IFF_PROMISC, align 4
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %49 = call i32 @vr_set_filter(%struct.vr_softc* %48)
  br label %50

50:                                               ; preds = %47, %34
  br label %62

51:                                               ; preds = %27
  %52 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %53 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VR_F_DETACHED, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %60 = call i32 @vr_init_locked(%struct.vr_softc* %59)
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %61, %50
  br label %74

63:                                               ; preds = %18
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %72 = call i32 @vr_stop(%struct.vr_softc* %71)
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %62
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %79 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %81 = call i32 @VR_UNLOCK(%struct.vr_softc* %80)
  br label %205

82:                                               ; preds = %3, %3
  %83 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %84 = call i32 @VR_LOCK(%struct.vr_softc* %83)
  %85 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %86 = call i32 @vr_set_filter(%struct.vr_softc* %85)
  %87 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %88 = call i32 @VR_UNLOCK(%struct.vr_softc* %87)
  br label %205

89:                                               ; preds = %3, %3
  %90 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %91 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.mii_data* @device_get_softc(i32 %92)
  store %struct.mii_data* %93, %struct.mii_data** %9, align 8
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %96 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %97 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %96, i32 0, i32 0
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ifmedia_ioctl(%struct.ifnet* %94, %struct.ifreq* %95, i32* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %205

100:                                              ; preds = %3
  %101 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %102 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %105 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = xor i32 %103, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @IFCAP_TXCSUM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %100
  %113 = load i32, i32* @IFCAP_TXCSUM, align 4
  %114 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = load i32, i32* @IFCAP_TXCSUM, align 4
  %121 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %122 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = xor i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* @IFCAP_TXCSUM, align 4
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load i32, i32* @VR_CSUM_FEATURES, align 4
  %133 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %134 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %144

137:                                              ; preds = %119
  %138 = load i32, i32* @VR_CSUM_FEATURES, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %137, %131
  br label %145

145:                                              ; preds = %144, %112, %100
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @IFCAP_RXCSUM, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %145
  %151 = load i32, i32* @IFCAP_RXCSUM, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @IFCAP_RXCSUM, align 4
  %159 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = xor i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %150, %145
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %177 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %178 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = xor i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %168, %163
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %195 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %196 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = xor i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %186, %181
  br label %205

200:                                              ; preds = %3
  %201 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %202 = load i32, i32* %5, align 4
  %203 = load i64, i64* %6, align 8
  %204 = call i32 @ether_ioctl(%struct.ifnet* %201, i32 %202, i64 %203)
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %200, %199, %89, %82, %74
  %206 = load i32, i32* %10, align 4
  ret i32 %206
}

declare dso_local i32 @VR_LOCK(%struct.vr_softc*) #1

declare dso_local i32 @vr_set_filter(%struct.vr_softc*) #1

declare dso_local i32 @vr_init_locked(%struct.vr_softc*) #1

declare dso_local i32 @vr_stop(%struct.vr_softc*) #1

declare dso_local i32 @VR_UNLOCK(%struct.vr_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
