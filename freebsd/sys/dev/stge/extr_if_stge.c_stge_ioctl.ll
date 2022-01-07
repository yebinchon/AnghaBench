; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.stge_softc* }
%struct.stge_softc = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@STGE_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@STGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@STGE_IntEnable = common dso_local global i32 0, align 4
@stge_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @stge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.stge_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 6
  %14 = load %struct.stge_softc*, %struct.stge_softc** %13, align 8
  store %struct.stge_softc* %14, %struct.stge_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %245 [
    i32 128, label %18
    i32 130, label %68
    i32 134, label %128
    i32 133, label %128
    i32 129, label %143
    i32 132, label %143
    i32 131, label %154
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
  %28 = load i32, i32* @STGE_JUMBO_MTU, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %10, align 4
  br label %67

32:                                               ; preds = %24
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %37 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %32
  %41 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %47 = call i32 @STGE_LOCK(%struct.stge_softc* %46)
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
  %61 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %62 = call i32 @stge_init_locked(%struct.stge_softc* %61)
  br label %63

63:                                               ; preds = %54, %40
  %64 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %65 = call i32 @STGE_UNLOCK(%struct.stge_softc* %64)
  br label %66

66:                                               ; preds = %63, %32
  br label %67

67:                                               ; preds = %66, %30
  br label %250

68:                                               ; preds = %3
  %69 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %70 = call i32 @STGE_LOCK(%struct.stge_softc* %69)
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IFF_UP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %68
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %89 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %87, %90
  %92 = load i32, i32* @IFF_PROMISC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %97 = call i32 @stge_set_filter(%struct.stge_softc* %96)
  br label %98

98:                                               ; preds = %95, %84
  br label %108

99:                                               ; preds = %77
  %100 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %101 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %106 = call i32 @stge_init_locked(%struct.stge_softc* %105)
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %98
  br label %120

109:                                              ; preds = %68
  %110 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %111 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %118 = call i32 @stge_stop(%struct.stge_softc* %117)
  br label %119

119:                                              ; preds = %116, %109
  br label %120

120:                                              ; preds = %119, %108
  %121 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %122 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %125 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %127 = call i32 @STGE_UNLOCK(%struct.stge_softc* %126)
  br label %250

128:                                              ; preds = %3, %3
  %129 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %130 = call i32 @STGE_LOCK(%struct.stge_softc* %129)
  %131 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %139 = call i32 @stge_set_multi(%struct.stge_softc* %138)
  br label %140

140:                                              ; preds = %137, %128
  %141 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %142 = call i32 @STGE_UNLOCK(%struct.stge_softc* %141)
  br label %250

143:                                              ; preds = %3, %3
  %144 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %145 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call %struct.mii_data* @device_get_softc(i32 %146)
  store %struct.mii_data* %147, %struct.mii_data** %9, align 8
  %148 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %149 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %150 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %151 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %150, i32 0, i32 0
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @ifmedia_ioctl(%struct.ifnet* %148, %struct.ifreq* %149, i32* %151, i32 %152)
  store i32 %153, i32* %10, align 4
  br label %250

154:                                              ; preds = %3
  %155 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %156 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %159 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = xor i32 %157, %160
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @IFCAP_HWCSUM, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %154
  %167 = load i32, i32* @IFCAP_HWCSUM, align 4
  %168 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = xor i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* @IFCAP_HWCSUM, align 4
  %173 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %166
  %179 = load i32, i32* @IFCAP_HWCSUM, align 4
  %180 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %181 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load i32, i32* @STGE_CSUM_FEATURES, align 4
  %187 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 8
  br label %192

189:                                              ; preds = %178, %166
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 4
  store i32 0, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %185
  br label %193

193:                                              ; preds = %192, %154
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @IFCAP_WOL, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %217

198:                                              ; preds = %193
  %199 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IFCAP_WOL, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %198
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %212 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %213 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = xor i32 %214, %211
  store i32 %215, i32* %213, align 8
  br label %216

216:                                              ; preds = %210, %205
  br label %217

217:                                              ; preds = %216, %198, %193
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %242

222:                                              ; preds = %217
  %223 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %224 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %225 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = xor i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %229 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %222
  %235 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %236 = call i32 @STGE_LOCK(%struct.stge_softc* %235)
  %237 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %238 = call i32 @stge_vlan_setup(%struct.stge_softc* %237)
  %239 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  %240 = call i32 @STGE_UNLOCK(%struct.stge_softc* %239)
  br label %241

241:                                              ; preds = %234, %222
  br label %242

242:                                              ; preds = %241, %217
  %243 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %244 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %243)
  br label %250

245:                                              ; preds = %3
  %246 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @ether_ioctl(%struct.ifnet* %246, i32 %247, i64 %248)
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %245, %242, %143, %140, %120, %67
  %251 = load i32, i32* %10, align 4
  ret i32 %251
}

declare dso_local i32 @STGE_LOCK(%struct.stge_softc*) #1

declare dso_local i32 @stge_init_locked(%struct.stge_softc*) #1

declare dso_local i32 @STGE_UNLOCK(%struct.stge_softc*) #1

declare dso_local i32 @stge_set_filter(%struct.stge_softc*) #1

declare dso_local i32 @stge_stop(%struct.stge_softc*) #1

declare dso_local i32 @stge_set_multi(%struct.stge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @stge_vlan_setup(%struct.stge_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
