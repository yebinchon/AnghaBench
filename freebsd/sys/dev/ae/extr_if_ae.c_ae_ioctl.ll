; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.ae_softc* }
%struct.ae_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@AE_FLAG_DETACH = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ae_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ae_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ae_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 5
  %14 = load %struct.ae_softc*, %struct.ae_softc** %13, align 8
  store %struct.ae_softc* %14, %struct.ae_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %192 [
    i32 128, label %18
    i32 130, label %68
    i32 134, label %132
    i32 133, label %132
    i32 129, label %147
    i32 132, label %147
    i32 131, label %158
  ]

18:                                               ; preds = %3
  %19 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETHERMIN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ETHERMTU, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %10, align 4
  br label %67

32:                                               ; preds = %24
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %37 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %32
  %41 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %42 = call i32 @AE_LOCK(%struct.ae_softc* %41)
  %43 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %62 = call i32 @ae_init_locked(%struct.ae_softc* %61)
  br label %63

63:                                               ; preds = %54, %40
  %64 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %65 = call i32 @AE_UNLOCK(%struct.ae_softc* %64)
  br label %66

66:                                               ; preds = %63, %32
  br label %67

67:                                               ; preds = %66, %30
  br label %197

68:                                               ; preds = %3
  %69 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %70 = call i32 @AE_LOCK(%struct.ae_softc* %69)
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IFF_UP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %113

77:                                               ; preds = %68
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %89 = getelementptr inbounds %struct.ae_softc, %struct.ae_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %87, %90
  %92 = load i32, i32* @IFF_PROMISC, align 4
  %93 = load i32, i32* @IFF_ALLMULTI, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %99 = call i32 @ae_rxfilter(%struct.ae_softc* %98)
  br label %100

100:                                              ; preds = %97, %84
  br label %112

101:                                              ; preds = %77
  %102 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %103 = getelementptr inbounds %struct.ae_softc, %struct.ae_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AE_FLAG_DETACH, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %110 = call i32 @ae_init_locked(%struct.ae_softc* %109)
  br label %111

111:                                              ; preds = %108, %101
  br label %112

112:                                              ; preds = %111, %100
  br label %124

113:                                              ; preds = %68
  %114 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %122 = call i32 @ae_stop(%struct.ae_softc* %121)
  br label %123

123:                                              ; preds = %120, %113
  br label %124

124:                                              ; preds = %123, %112
  %125 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %129 = getelementptr inbounds %struct.ae_softc, %struct.ae_softc* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %131 = call i32 @AE_UNLOCK(%struct.ae_softc* %130)
  br label %197

132:                                              ; preds = %3, %3
  %133 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %134 = call i32 @AE_LOCK(%struct.ae_softc* %133)
  %135 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %143 = call i32 @ae_rxfilter(%struct.ae_softc* %142)
  br label %144

144:                                              ; preds = %141, %132
  %145 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %146 = call i32 @AE_UNLOCK(%struct.ae_softc* %145)
  br label %197

147:                                              ; preds = %3, %3
  %148 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %149 = getelementptr inbounds %struct.ae_softc, %struct.ae_softc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call %struct.mii_data* @device_get_softc(i32 %150)
  store %struct.mii_data* %151, %struct.mii_data** %9, align 8
  %152 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %153 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %154 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %155 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %154, i32 0, i32 0
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @ifmedia_ioctl(%struct.ifnet* %152, %struct.ifreq* %153, i32* %155, i32 %156)
  store i32 %157, i32* %10, align 4
  br label %197

158:                                              ; preds = %3
  %159 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %160 = call i32 @AE_LOCK(%struct.ae_softc* %159)
  %161 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %162 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = xor i32 %163, %166
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %158
  %173 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %172
  %180 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %181 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %182 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = xor i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %186 = call i32 @ae_rxvlan(%struct.ae_softc* %185)
  br label %187

187:                                              ; preds = %179, %172, %158
  %188 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %189 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %188)
  %190 = load %struct.ae_softc*, %struct.ae_softc** %7, align 8
  %191 = call i32 @AE_UNLOCK(%struct.ae_softc* %190)
  br label %197

192:                                              ; preds = %3
  %193 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %194 = load i32, i32* %5, align 4
  %195 = load i64, i64* %6, align 8
  %196 = call i32 @ether_ioctl(%struct.ifnet* %193, i32 %194, i64 %195)
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %192, %187, %147, %144, %124, %67
  %198 = load i32, i32* %10, align 4
  ret i32 %198
}

declare dso_local i32 @AE_LOCK(%struct.ae_softc*) #1

declare dso_local i32 @ae_init_locked(%struct.ae_softc*) #1

declare dso_local i32 @AE_UNLOCK(%struct.ae_softc*) #1

declare dso_local i32 @ae_rxfilter(%struct.ae_softc*) #1

declare dso_local i32 @ae_stop(%struct.ae_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ae_rxvlan(%struct.ae_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
