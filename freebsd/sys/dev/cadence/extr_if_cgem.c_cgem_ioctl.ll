; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@CGEM_CKSUM_ASSIST = common dso_local global i32 0, align 4
@CGEM_DMA_CFG = common dso_local global i32 0, align 4
@CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@CGEM_NET_CFG = common dso_local global i32 0, align 4
@CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @cgem_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgem_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cgem_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.cgem_softc* @if_getsoftc(i32 %12)
  store %struct.cgem_softc* %13, %struct.cgem_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %216 [
    i32 129, label %17
    i32 133, label %71
    i32 132, label %71
    i32 128, label %85
    i32 131, label %85
    i32 130, label %96
  ]

17:                                               ; preds = %3
  %18 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %19 = call i32 @CGEM_LOCK(%struct.cgem_softc* %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @if_getflags(i32 %20)
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @if_getdrvflags(i32 %26)
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @if_getflags(i32 %32)
  %34 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %35 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %33, %36
  %38 = load i32, i32* @IFF_PROMISC, align 4
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %45 = call i32 @cgem_rx_filter(%struct.cgem_softc* %44)
  br label %46

46:                                               ; preds = %43, %31
  br label %50

47:                                               ; preds = %25
  %48 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %49 = call i32 @cgem_init_locked(%struct.cgem_softc* %48)
  br label %50

50:                                               ; preds = %47, %46
  br label %64

51:                                               ; preds = %17
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @if_getdrvflags(i32 %52)
  %54 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = call i32 @if_setdrvflagbits(i32 %58, i32 0, i32 %59)
  %61 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %62 = call i32 @cgem_stop(%struct.cgem_softc* %61)
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @if_getflags(i32 %65)
  %67 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %68 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %70 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %69)
  br label %221

71:                                               ; preds = %3, %3
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @if_getdrvflags(i32 %72)
  %74 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %79 = call i32 @CGEM_LOCK(%struct.cgem_softc* %78)
  %80 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %81 = call i32 @cgem_rx_filter(%struct.cgem_softc* %80)
  %82 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %83 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %82)
  br label %84

84:                                               ; preds = %77, %71
  br label %221

85:                                               ; preds = %3, %3
  %86 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %87 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.mii_data* @device_get_softc(i32 %88)
  store %struct.mii_data* %89, %struct.mii_data** %9, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %92 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %93 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %92, i32 0, i32 0
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @ifmedia_ioctl(i32 %90, %struct.ifreq* %91, i32* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  br label %221

96:                                               ; preds = %3
  %97 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %98 = call i32 @CGEM_LOCK(%struct.cgem_softc* %97)
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @if_getcapenable(i32 %99)
  %101 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %102 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %100, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @IFCAP_TXCSUM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %152

109:                                              ; preds = %96
  %110 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %111 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IFCAP_TXCSUM, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %109
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @IFCAP_TXCSUM, align 4
  %119 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @if_setcapenablebit(i32 %117, i32 %120, i32 0)
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @CGEM_CKSUM_ASSIST, align 4
  %124 = call i32 @if_sethwassistbits(i32 %122, i32 %123, i32 0)
  %125 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %126 = load i32, i32* @CGEM_DMA_CFG, align 4
  %127 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %128 = load i32, i32* @CGEM_DMA_CFG, align 4
  %129 = call i32 @RD4(%struct.cgem_softc* %127, i32 %128)
  %130 = load i32, i32* @CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @WR4(%struct.cgem_softc* %125, i32 %126, i32 %131)
  br label %151

133:                                              ; preds = %109
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @IFCAP_TXCSUM, align 4
  %136 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @if_setcapenablebit(i32 %134, i32 0, i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @CGEM_CKSUM_ASSIST, align 4
  %141 = call i32 @if_sethwassistbits(i32 %139, i32 0, i32 %140)
  %142 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %143 = load i32, i32* @CGEM_DMA_CFG, align 4
  %144 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %145 = load i32, i32* @CGEM_DMA_CFG, align 4
  %146 = call i32 @RD4(%struct.cgem_softc* %144, i32 %145)
  %147 = load i32, i32* @CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  %150 = call i32 @WR4(%struct.cgem_softc* %142, i32 %143, i32 %149)
  br label %151

151:                                              ; preds = %133, %116
  br label %152

152:                                              ; preds = %151, %96
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @IFCAP_RXCSUM, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %194

157:                                              ; preds = %152
  %158 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %159 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IFCAP_RXCSUM, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @IFCAP_RXCSUM, align 4
  %167 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @if_setcapenablebit(i32 %165, i32 %168, i32 0)
  %170 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %171 = load i32, i32* @CGEM_NET_CFG, align 4
  %172 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %173 = load i32, i32* @CGEM_NET_CFG, align 4
  %174 = call i32 @RD4(%struct.cgem_softc* %172, i32 %173)
  %175 = load i32, i32* @CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @WR4(%struct.cgem_softc* %170, i32 %171, i32 %176)
  br label %193

178:                                              ; preds = %157
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @IFCAP_RXCSUM, align 4
  %181 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @if_setcapenablebit(i32 %179, i32 0, i32 %182)
  %184 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %185 = load i32, i32* @CGEM_NET_CFG, align 4
  %186 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %187 = load i32, i32* @CGEM_NET_CFG, align 4
  %188 = call i32 @RD4(%struct.cgem_softc* %186, i32 %187)
  %189 = load i32, i32* @CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN, align 4
  %190 = xor i32 %189, -1
  %191 = and i32 %188, %190
  %192 = call i32 @WR4(%struct.cgem_softc* %184, i32 %185, i32 %191)
  br label %193

193:                                              ; preds = %178, %164
  br label %194

194:                                              ; preds = %193, %152
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @if_getcapenable(i32 %195)
  %197 = load i32, i32* @IFCAP_RXCSUM, align 4
  %198 = load i32, i32* @IFCAP_TXCSUM, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = load i32, i32* @IFCAP_RXCSUM, align 4
  %202 = load i32, i32* @IFCAP_TXCSUM, align 4
  %203 = or i32 %201, %202
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %194
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %208 = call i32 @if_setcapenablebit(i32 %206, i32 %207, i32 0)
  br label %213

209:                                              ; preds = %194
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %212 = call i32 @if_setcapenablebit(i32 %210, i32 0, i32 %211)
  br label %213

213:                                              ; preds = %209, %205
  %214 = load %struct.cgem_softc*, %struct.cgem_softc** %7, align 8
  %215 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %214)
  br label %221

216:                                              ; preds = %3
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load i64, i64* %6, align 8
  %220 = call i32 @ether_ioctl(i32 %217, i32 %218, i64 %219)
  store i32 %220, i32* %10, align 4
  br label %221

221:                                              ; preds = %216, %213, %85, %84, %64
  %222 = load i32, i32* %10, align 4
  ret i32 %222
}

declare dso_local %struct.cgem_softc* @if_getsoftc(i32) #1

declare dso_local i32 @CGEM_LOCK(%struct.cgem_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @cgem_rx_filter(%struct.cgem_softc*) #1

declare dso_local i32 @cgem_init_locked(%struct.cgem_softc*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @cgem_stop(%struct.cgem_softc*) #1

declare dso_local i32 @CGEM_UNLOCK(%struct.cgem_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(i32, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_setcapenablebit(i32, i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.cgem_softc*, i32) #1

declare dso_local i32 @ether_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
