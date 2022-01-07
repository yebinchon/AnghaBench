; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.usb_ether* }
%struct.usb_ether = type { i32 }
%struct.axge_softc = type { i32 }
%struct.ifreq = type { i32 }

@SIOCSIFCAP = common dso_local global i64 0, align 8
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@AXGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64, i64)* @axge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axge_ioctl(%struct.ifnet* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_ether*, align 8
  %8 = alloca %struct.axge_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 4
  %15 = load %struct.usb_ether*, %struct.usb_ether** %14, align 8
  store %struct.usb_ether* %15, %struct.usb_ether** %7, align 8
  %16 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %17 = call %struct.axge_softc* @uether_getsc(%struct.usb_ether* %16)
  store %struct.axge_softc* %17, %struct.axge_softc** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.ifreq*
  store %struct.ifreq* %19, %struct.ifreq** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SIOCSIFCAP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %119

23:                                               ; preds = %3
  %24 = load %struct.axge_softc*, %struct.axge_softc** %8, align 8
  %25 = call i32 @AXGE_LOCK(%struct.axge_softc* %24)
  %26 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IFCAP_TXCSUM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %23
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFCAP_TXCSUM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  %45 = load i32, i32* @IFCAP_TXCSUM, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFCAP_TXCSUM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load i32, i32* @AXGE_CSUM_FEATURES, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %69

62:                                               ; preds = %44
  %63 = load i32, i32* @AXGE_CSUM_FEATURES, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %69, %37, %23
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @IFCAP_RXCSUM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IFCAP_RXCSUM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load i32, i32* @IFCAP_RXCSUM, align 4
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = xor i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %84, %77, %72
  %93 = load i32, i32* %12, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %110

109:                                              ; preds = %95, %92
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %109, %102
  %111 = load %struct.axge_softc*, %struct.axge_softc** %8, align 8
  %112 = call i32 @AXGE_UNLOCK(%struct.axge_softc* %111)
  %113 = load i32, i32* %12, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %117 = call i32 @uether_init(%struct.usb_ether* %116)
  br label %118

118:                                              ; preds = %115, %110
  br label %124

119:                                              ; preds = %3
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @uether_ioctl(%struct.ifnet* %120, i64 %121, i64 %122)
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %119, %118
  %125 = load i32, i32* %10, align 4
  ret i32 %125
}

declare dso_local %struct.axge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @AXGE_LOCK(%struct.axge_softc*) #1

declare dso_local i32 @AXGE_UNLOCK(%struct.axge_softc*) #1

declare dso_local i32 @uether_init(%struct.usb_ether*) #1

declare dso_local i32 @uether_ioctl(%struct.ifnet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
