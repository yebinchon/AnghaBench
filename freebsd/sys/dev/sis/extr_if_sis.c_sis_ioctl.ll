; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.sis_softc* }
%struct.sis_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@SIS_IER = common dso_local global i32 0, align 4
@sis_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @sis_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sis_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 4
  %14 = load %struct.sis_softc*, %struct.sis_softc** %13, align 8
  store %struct.sis_softc* %14, %struct.sis_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %157 [
    i32 129, label %18
    i32 133, label %73
    i32 132, label %73
    i32 131, label %88
    i32 128, label %88
    i32 130, label %99
  ]

18:                                               ; preds = %3
  %19 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %20 = call i32 @SIS_LOCK(%struct.sis_softc* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %18
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %39 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %37, %40
  %42 = load i32, i32* @IFF_PROMISC, align 4
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %49 = call i32 @sis_rxfilter(%struct.sis_softc* %48)
  br label %53

50:                                               ; preds = %34, %27
  %51 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %52 = call i32 @sis_initl(%struct.sis_softc* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %65

54:                                               ; preds = %18
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %63 = call i32 @sis_stop(%struct.sis_softc* %62)
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %70 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %72 = call i32 @SIS_UNLOCK(%struct.sis_softc* %71)
  br label %162

73:                                               ; preds = %3, %3
  %74 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %75 = call i32 @SIS_LOCK(%struct.sis_softc* %74)
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %84 = call i32 @sis_rxfilter(%struct.sis_softc* %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %87 = call i32 @SIS_UNLOCK(%struct.sis_softc* %86)
  br label %162

88:                                               ; preds = %3, %3
  %89 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %90 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.mii_data* @device_get_softc(i32 %91)
  store %struct.mii_data* %92, %struct.mii_data** %9, align 8
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %95 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %96 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %95, i32 0, i32 0
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ifmedia_ioctl(%struct.ifnet* %93, %struct.ifreq* %94, i32* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %162

99:                                               ; preds = %3
  %100 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %101 = call i32 @SIS_LOCK(%struct.sis_softc* %100)
  %102 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %103 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = xor i32 %104, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @IFCAP_WOL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %154

113:                                              ; preds = %99
  %114 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IFCAP_WOL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %127 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = xor i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %120
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %138 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = xor i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %131
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %149 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = xor i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %142
  br label %154

154:                                              ; preds = %153, %113, %99
  %155 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %156 = call i32 @SIS_UNLOCK(%struct.sis_softc* %155)
  br label %162

157:                                              ; preds = %3
  %158 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @ether_ioctl(%struct.ifnet* %158, i32 %159, i64 %160)
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %157, %154, %88, %85, %65
  %163 = load i32, i32* %10, align 4
  ret i32 %163
}

declare dso_local i32 @SIS_LOCK(%struct.sis_softc*) #1

declare dso_local i32 @sis_rxfilter(%struct.sis_softc*) #1

declare dso_local i32 @sis_initl(%struct.sis_softc*) #1

declare dso_local i32 @sis_stop(%struct.sis_softc*) #1

declare dso_local i32 @SIS_UNLOCK(%struct.sis_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
