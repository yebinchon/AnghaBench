; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.et_softc* }
%struct.et_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@ET_CSUM_FEATURES = common dso_local global i32 0, align 4
@ET_FLAG_JUMBO = common dso_local global i32 0, align 4
@ET_JUMBO_FRAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @et_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.et_softc*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 6
  %15 = load %struct.et_softc*, %struct.et_softc** %14, align 8
  store %struct.et_softc* %15, %struct.et_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %201 [
    i32 130, label %19
    i32 129, label %77
    i32 132, label %77
    i32 134, label %88
    i32 133, label %88
    i32 128, label %103
    i32 131, label %151
  ]

19:                                               ; preds = %3
  %20 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %21 = call i32 @ET_LOCK(%struct.et_softc* %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %19
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %40 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %38, %41
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = load i32, i32* @IFF_PROMISC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IFF_BROADCAST, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %52 = call i32 @et_setmulti(%struct.et_softc* %51)
  br label %53

53:                                               ; preds = %50, %35
  br label %57

54:                                               ; preds = %28
  %55 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %56 = call i32 @et_init_locked(%struct.et_softc* %55)
  br label %57

57:                                               ; preds = %54, %53
  br label %69

58:                                               ; preds = %19
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %67 = call i32 @et_stop(%struct.et_softc* %66)
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %74 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %76 = call i32 @ET_UNLOCK(%struct.et_softc* %75)
  br label %206

77:                                               ; preds = %3, %3
  %78 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %79 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.mii_data* @device_get_softc(i32 %80)
  store %struct.mii_data* %81, %struct.mii_data** %8, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %84 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %85 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %84, i32 0, i32 0
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ifmedia_ioctl(%struct.ifnet* %82, %struct.ifreq* %83, i32* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %206

88:                                               ; preds = %3, %3
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %97 = call i32 @ET_LOCK(%struct.et_softc* %96)
  %98 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %99 = call i32 @et_setmulti(%struct.et_softc* %98)
  %100 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %101 = call i32 @ET_UNLOCK(%struct.et_softc* %100)
  br label %102

102:                                              ; preds = %95, %88
  br label %206

103:                                              ; preds = %3
  %104 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %105 = call i32 @ET_LOCK(%struct.et_softc* %104)
  %106 = load i32, i32* @MCLBYTES, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %109 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ET_FRAMELEN(i32 %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %115, i32* %10, align 4
  %116 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %117 = call i32 @ET_UNLOCK(%struct.et_softc* %116)
  br label %206

118:                                              ; preds = %103
  %119 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %123 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %118
  %127 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %128 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %126
  %139 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %146 = call i32 @et_init_locked(%struct.et_softc* %145)
  br label %147

147:                                              ; preds = %138, %126
  br label %148

148:                                              ; preds = %147, %118
  %149 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %150 = call i32 @ET_UNLOCK(%struct.et_softc* %149)
  br label %206

151:                                              ; preds = %3
  %152 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %153 = call i32 @ET_LOCK(%struct.et_softc* %152)
  %154 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %155 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %158 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = xor i32 %156, %159
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @IFCAP_TXCSUM, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %198

165:                                              ; preds = %151
  %166 = load i32, i32* @IFCAP_TXCSUM, align 4
  %167 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %168 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %198

172:                                              ; preds = %165
  %173 = load i32, i32* @IFCAP_TXCSUM, align 4
  %174 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %175 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = xor i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* @IFCAP_TXCSUM, align 4
  %179 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %172
  %185 = load i32, i32* @ET_CSUM_FEATURES, align 4
  %186 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %197

190:                                              ; preds = %172
  %191 = load i32, i32* @ET_CSUM_FEATURES, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %194 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %190, %184
  br label %198

198:                                              ; preds = %197, %165, %151
  %199 = load %struct.et_softc*, %struct.et_softc** %7, align 8
  %200 = call i32 @ET_UNLOCK(%struct.et_softc* %199)
  br label %206

201:                                              ; preds = %3
  %202 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %203 = load i32, i32* %5, align 4
  %204 = load i64, i64* %6, align 8
  %205 = call i32 @ether_ioctl(%struct.ifnet* %202, i32 %203, i64 %204)
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %201, %198, %148, %114, %102, %77, %69
  %207 = load i32, i32* %10, align 4
  ret i32 %207
}

declare dso_local i32 @ET_LOCK(%struct.et_softc*) #1

declare dso_local i32 @et_setmulti(%struct.et_softc*) #1

declare dso_local i32 @et_init_locked(%struct.et_softc*) #1

declare dso_local i32 @et_stop(%struct.et_softc*) #1

declare dso_local i32 @ET_UNLOCK(%struct.et_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ET_FRAMELEN(i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
