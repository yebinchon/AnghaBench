; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.cas_softc* }
%struct.cas_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CAS_NO_CSUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CAS_CSUM_FEATURES = common dso_local global i32 0, align 4
@ETHERMIN = common dso_local global i32 0, align 4
@ETHERMTU_JUMBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @cas_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cas_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 5
  %12 = load %struct.cas_softc*, %struct.cas_softc** %11, align 8
  store %struct.cas_softc* %12, %struct.cas_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %151 [
    i32 130, label %16
    i32 131, label %71
    i32 134, label %106
    i32 133, label %106
    i32 128, label %121
    i32 132, label %142
    i32 129, label %142
  ]

16:                                               ; preds = %3
  %17 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %18 = call i32 @CAS_LOCK(%struct.cas_softc* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %16
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %37 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %35, %38
  %40 = load i32, i32* @IFF_ALLMULTI, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %47 = call i32 @cas_setladrf(%struct.cas_softc* %46)
  br label %51

48:                                               ; preds = %32, %25
  %49 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %50 = call i32 @cas_init_locked(%struct.cas_softc* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %63

52:                                               ; preds = %16
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = call i32 @cas_stop(%struct.ifnet* %60)
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %68 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %70 = call i32 @CAS_UNLOCK(%struct.cas_softc* %69)
  br label %156

71:                                               ; preds = %3
  %72 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %73 = call i32 @CAS_LOCK(%struct.cas_softc* %72)
  %74 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %75 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CAS_NO_CSUM, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %9, align 4
  %82 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %83 = call i32 @CAS_UNLOCK(%struct.cas_softc* %82)
  br label %156

84:                                               ; preds = %71
  %85 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %86 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IFCAP_TXCSUM, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* @CAS_CSUM_FEATURES, align 4
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  br label %103

100:                                              ; preds = %84
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 4
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %105 = call i32 @CAS_UNLOCK(%struct.cas_softc* %104)
  br label %156

106:                                              ; preds = %3, %3
  %107 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %108 = call i32 @CAS_LOCK(%struct.cas_softc* %107)
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %117 = call i32 @cas_setladrf(%struct.cas_softc* %116)
  br label %118

118:                                              ; preds = %115, %106
  %119 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %120 = call i32 @CAS_UNLOCK(%struct.cas_softc* %119)
  br label %156

121:                                              ; preds = %3
  %122 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %123 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ETHERMIN, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %129 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ETHERMTU_JUMBO, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127, %121
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %9, align 4
  br label %141

135:                                              ; preds = %127
  %136 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %137 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %135, %133
  br label %156

142:                                              ; preds = %3, %3
  %143 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %144 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %145 = load %struct.cas_softc*, %struct.cas_softc** %7, align 8
  %146 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @ifmedia_ioctl(%struct.ifnet* %143, %struct.ifreq* %144, i32* %148, i32 %149)
  store i32 %150, i32* %9, align 4
  br label %156

151:                                              ; preds = %3
  %152 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @ether_ioctl(%struct.ifnet* %152, i32 %153, i64 %154)
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %151, %142, %141, %118, %103, %80, %63
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local i32 @CAS_LOCK(%struct.cas_softc*) #1

declare dso_local i32 @cas_setladrf(%struct.cas_softc*) #1

declare dso_local i32 @cas_init_locked(%struct.cas_softc*) #1

declare dso_local i32 @cas_stop(%struct.ifnet*) #1

declare dso_local i32 @CAS_UNLOCK(%struct.cas_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
