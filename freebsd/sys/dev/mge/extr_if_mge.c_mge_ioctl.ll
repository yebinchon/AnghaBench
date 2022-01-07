; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.mge_softc* }
%struct.mge_softc = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MGE_RX_DEFAULT_QUEUE = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@MGE_CHECKSUM_FEATURES = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"1000baseTX half-duplex unsupported\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@mge_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @mge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mge_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 4
  %15 = load %struct.mge_softc*, %struct.mge_softc** %14, align 8
  store %struct.mge_softc* %15, %struct.mge_softc** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %191 [
    i32 129, label %19
    i32 133, label %83
    i32 132, label %83
    i32 130, label %98
    i32 131, label %141
    i32 128, label %141
  ]

19:                                               ; preds = %3
  %20 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %21 = call i32 @MGE_GLOBAL_LOCK(%struct.mge_softc* %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %19
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %28
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %40 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %38, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @IFF_PROMISC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %49 = load i32, i32* @MGE_RX_DEFAULT_QUEUE, align 4
  %50 = call i32 @mge_set_prom_mode(%struct.mge_softc* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %35
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @IFF_ALLMULTI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %58 = call i32 @mge_setup_multicast(%struct.mge_softc* %57)
  br label %59

59:                                               ; preds = %56, %51
  br label %63

60:                                               ; preds = %28
  %61 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %62 = call i32 @mge_init_locked(%struct.mge_softc* %61)
  br label %63

63:                                               ; preds = %60, %59
  br label %75

64:                                               ; preds = %19
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %73 = call i32 @mge_stop(%struct.mge_softc* %72)
  br label %74

74:                                               ; preds = %71, %64
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %80 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %82 = call i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc* %81)
  br label %196

83:                                               ; preds = %3, %3
  %84 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %92 = call i32 @MGE_GLOBAL_LOCK(%struct.mge_softc* %91)
  %93 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %94 = call i32 @mge_setup_multicast(%struct.mge_softc* %93)
  %95 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %96 = call i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc* %95)
  br label %97

97:                                               ; preds = %90, %83
  br label %196

98:                                               ; preds = %3
  %99 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %103 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %101, %104
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @IFCAP_HWCSUM, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %98
  %111 = load i32, i32* @IFCAP_HWCSUM, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %114 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @IFCAP_HWCSUM, align 4
  %118 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %119 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %117, %120
  %122 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %127 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IFCAP_TXCSUM, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %110
  %133 = load i32, i32* @MGE_CHECKSUM_FEATURES, align 4
  %134 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %135 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  br label %139

136:                                              ; preds = %110
  %137 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %138 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %137, i32 0, i32 3
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %139, %98
  br label %196

141:                                              ; preds = %3, %3
  %142 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %143 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %6, align 4
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %198

150:                                              ; preds = %146, %141
  %151 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %152 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %157 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %158 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %159 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @ifmedia_ioctl(%struct.ifnet* %156, %struct.ifreq* %157, i32* %159, i32 %160)
  store i32 %161, i32* %11, align 4
  br label %196

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %165 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @IFM_SUBTYPE(i32 %166)
  %168 = load i32, i32* @IFM_1000_T, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %163
  %171 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %172 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @IFM_FDX, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %170
  %178 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %179 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @device_printf(i32 %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %198

182:                                              ; preds = %170, %163
  %183 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %184 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %185 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %186 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @ifmedia_ioctl(%struct.ifnet* %183, %struct.ifreq* %184, i32* %188, i32 %189)
  store i32 %190, i32* %11, align 4
  br label %196

191:                                              ; preds = %3
  %192 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i64, i64* %7, align 8
  %195 = call i32 @ether_ioctl(%struct.ifnet* %192, i32 %193, i64 %194)
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %191, %182, %155, %140, %97, %75
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %196, %177, %149
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @MGE_GLOBAL_LOCK(%struct.mge_softc*) #1

declare dso_local i32 @mge_set_prom_mode(%struct.mge_softc*, i32) #1

declare dso_local i32 @mge_setup_multicast(%struct.mge_softc*) #1

declare dso_local i32 @mge_init_locked(%struct.mge_softc*) #1

declare dso_local i32 @mge_stop(%struct.mge_softc*) #1

declare dso_local i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
