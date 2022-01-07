; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_iocsetcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_iocsetcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { %struct.ifnet*, %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, i32, i32)*, i32, i32 }
%struct.ifreq = type { i32 }

@SIOCSIFCAP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@CSUM_IP_TSO = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, %struct.ifreq*)* @hn_xpnt_vf_iocsetcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_xpnt_vf_iocsetcaps(%struct.hn_softc* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.ifreq*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %9 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %10 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %9)
  %11 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 1
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 0
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %6, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 1
  %26 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %25, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = load i32, i32* @SIOCSIFCAP, align 4
  %29 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %30 = ptrtoint %struct.ifreq* %29 to i32
  %31 = call i32 %26(%struct.ifnet* %27, i32 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %45 = call i32 @HN_CSUM_IP_HWASSIST(%struct.hn_softc* %44)
  %46 = and i32 %43, %45
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFCAP_TXCSUM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %66

59:                                               ; preds = %2
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %71 = call i32 @HN_CSUM_IP6_HWASSIST(%struct.hn_softc* %70)
  %72 = and i32 %69, %71
  store i32 %72, i32* %7, align 4
  %73 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %92

85:                                               ; preds = %66
  %86 = load i32, i32* %7, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CSUM_IP_TSO, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %7, align 4
  %98 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IFCAP_TSO4, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %117

110:                                              ; preds = %92
  %111 = load i32, i32* %7, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %114 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CSUM_IP6_TSO, align 4
  %122 = and i32 %120, %121
  store i32 %122, i32* %7, align 4
  %123 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IFCAP_TSO6, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %117
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %142

135:                                              ; preds = %117
  %136 = load i32, i32* %7, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %129
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @HN_CSUM_IP_HWASSIST(%struct.hn_softc*) #1

declare dso_local i32 @HN_CSUM_IP6_HWASSIST(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
