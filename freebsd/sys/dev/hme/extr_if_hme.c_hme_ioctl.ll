; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.hme_softc* }
%struct.hme_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_LINK0 = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @hme_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.hme_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 4
  %12 = load %struct.hme_softc*, %struct.hme_softc** %11, align 8
  store %struct.hme_softc* %12, %struct.hme_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %146 [
    i32 129, label %16
    i32 133, label %104
    i32 132, label %104
    i32 131, label %111
    i32 128, label %111
    i32 130, label %120
  ]

16:                                               ; preds = %3
  %17 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %18 = call i32 @HME_LOCK(%struct.hme_softc* %17)
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
  %36 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %37 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %35, %38
  %40 = load i32, i32* @IFF_ALLMULTI, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %47 = call i32 @hme_setladrf(%struct.hme_softc* %46, i32 1)
  br label %51

48:                                               ; preds = %32, %25
  %49 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %50 = call i32 @hme_init_locked(%struct.hme_softc* %49)
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
  %60 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %61 = call i32 @hme_stop(%struct.hme_softc* %60)
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IFF_LINK0, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @CSUM_UDP, align 4
  %72 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %73 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %83

76:                                               ; preds = %63
  %77 = load i32, i32* @CSUM_UDP, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %80 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IFCAP_TXCSUM, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %92 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %101 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %103 = call i32 @HME_UNLOCK(%struct.hme_softc* %102)
  br label %151

104:                                              ; preds = %3, %3
  %105 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %106 = call i32 @HME_LOCK(%struct.hme_softc* %105)
  %107 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %108 = call i32 @hme_setladrf(%struct.hme_softc* %107, i32 1)
  %109 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %110 = call i32 @HME_UNLOCK(%struct.hme_softc* %109)
  store i32 0, i32* %9, align 4
  br label %151

111:                                              ; preds = %3, %3
  %112 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %113 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %114 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %115 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @ifmedia_ioctl(%struct.ifnet* %112, %struct.ifreq* %113, i32* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  br label %151

120:                                              ; preds = %3
  %121 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %122 = call i32 @HME_LOCK(%struct.hme_softc* %121)
  %123 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %124 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %129 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IFCAP_TXCSUM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %120
  %135 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %136 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  br label %143

140:                                              ; preds = %120
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 3
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %134
  %144 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %145 = call i32 @HME_UNLOCK(%struct.hme_softc* %144)
  br label %151

146:                                              ; preds = %3
  %147 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @ether_ioctl(%struct.ifnet* %147, i32 %148, i64 %149)
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %146, %143, %111, %104, %96
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i32 @HME_LOCK(%struct.hme_softc*) #1

declare dso_local i32 @hme_setladrf(%struct.hme_softc*, i32) #1

declare dso_local i32 @hme_init_locked(%struct.hme_softc*) #1

declare dso_local i32 @hme_stop(%struct.hme_softc*) #1

declare dso_local i32 @HME_UNLOCK(%struct.hme_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
