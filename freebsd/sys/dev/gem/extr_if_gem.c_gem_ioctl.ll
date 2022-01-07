; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.gem_softc* }
%struct.gem_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_LINK0 = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @gem_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.gem_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 4
  %12 = load %struct.gem_softc*, %struct.gem_softc** %11, align 8
  store %struct.gem_softc* %12, %struct.gem_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %154 [
    i32 129, label %16
    i32 133, label %104
    i32 132, label %104
    i32 131, label %119
    i32 128, label %119
    i32 130, label %128
  ]

16:                                               ; preds = %3
  %17 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %18 = call i32 @GEM_LOCK(%struct.gem_softc* %17)
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
  %36 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %37 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %35, %38
  %40 = load i32, i32* @IFF_ALLMULTI, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %47 = call i32 @gem_setladrf(%struct.gem_softc* %46)
  br label %51

48:                                               ; preds = %32, %25
  %49 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %50 = call i32 @gem_init_locked(%struct.gem_softc* %49)
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
  %61 = call i32 @gem_stop(%struct.ifnet* %60, i32 0)
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
  %72 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %73 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %83

76:                                               ; preds = %63
  %77 = load i32, i32* @CSUM_UDP, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %80 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %79, i32 0, i32 1
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
  %91 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %92 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %101 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %103 = call i32 @GEM_UNLOCK(%struct.gem_softc* %102)
  br label %159

104:                                              ; preds = %3, %3
  %105 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %106 = call i32 @GEM_LOCK(%struct.gem_softc* %105)
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %115 = call i32 @gem_setladrf(%struct.gem_softc* %114)
  br label %116

116:                                              ; preds = %113, %104
  %117 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %118 = call i32 @GEM_UNLOCK(%struct.gem_softc* %117)
  br label %159

119:                                              ; preds = %3, %3
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %122 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %123 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @ifmedia_ioctl(%struct.ifnet* %120, %struct.ifreq* %121, i32* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  br label %159

128:                                              ; preds = %3
  %129 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %130 = call i32 @GEM_LOCK(%struct.gem_softc* %129)
  %131 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %132 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %135 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IFCAP_TXCSUM, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %128
  %143 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %144 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  br label %151

148:                                              ; preds = %128
  %149 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 3
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %142
  %152 = load %struct.gem_softc*, %struct.gem_softc** %7, align 8
  %153 = call i32 @GEM_UNLOCK(%struct.gem_softc* %152)
  br label %159

154:                                              ; preds = %3
  %155 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @ether_ioctl(%struct.ifnet* %155, i32 %156, i64 %157)
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %154, %151, %119, %116, %96
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i32 @GEM_LOCK(%struct.gem_softc*) #1

declare dso_local i32 @gem_setladrf(%struct.gem_softc*) #1

declare dso_local i32 @gem_init_locked(%struct.gem_softc*) #1

declare dso_local i32 @gem_stop(%struct.ifnet*, i32) #1

declare dso_local i32 @GEM_UNLOCK(%struct.gem_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
