; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunifioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunifioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.ifstat = type { i8* }
%struct.ifmediareq = type { i32, i32, i8*, i8*, i32 }

@tun_ioctl_sx = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TUN_L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\09Opened by PID %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"address set\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mtu set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i8* null, align 8
@TUN_OPEN = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @tunifioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunifioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.tuntap_softc*, align 8
  %9 = alloca %struct.ifstat*, align 8
  %10 = alloca %struct.ifmediareq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %7, align 8
  store i32 0, i32* %12, align 4
  store %struct.ifmediareq* null, %struct.ifmediareq** %10, align 8
  %17 = call i32 @sx_xlock(i32* @tun_ioctl_sx)
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 2
  %20 = load %struct.tuntap_softc*, %struct.tuntap_softc** %19, align 8
  store %struct.tuntap_softc* %20, %struct.tuntap_softc** %8, align 8
  %21 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %22 = icmp eq %struct.tuntap_softc* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %12, align 4
  br label %159

25:                                               ; preds = %3
  %26 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %27 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TUN_L2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %147 [
    i32 132, label %34
    i32 131, label %59
    i32 128, label %77
    i32 129, label %85
    i32 135, label %85
    i32 134, label %85
    i32 133, label %86
    i32 130, label %133
  ]

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = inttoptr i64 %35 to %struct.ifstat*
  store %struct.ifstat* %36, %struct.ifstat** %9, align 8
  %37 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %38 = call i32 @TUN_LOCK(%struct.tuntap_softc* %37)
  %39 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %40 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.ifstat*, %struct.ifstat** %9, align 8
  %45 = getelementptr inbounds %struct.ifstat, %struct.ifstat* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %48 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snprintf(i8* %46, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %56

51:                                               ; preds = %34
  %52 = load %struct.ifstat*, %struct.ifstat** %9, align 8
  %53 = getelementptr inbounds %struct.ifstat, %struct.ifstat* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %51, %43
  %57 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %58 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %57)
  br label %158

59:                                               ; preds = %25
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @ether_ioctl(%struct.ifnet* %63, i32 %64, i64 %65)
  store i32 %66, i32* %12, align 4
  br label %70

67:                                               ; preds = %59
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = call i32 @tuninit(%struct.ifnet* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = call i32 @TUNDEBUG(%struct.ifnet* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70
  br label %158

77:                                               ; preds = %25
  %78 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %79 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %84 = call i32 @TUNDEBUG(%struct.ifnet* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %158

85:                                               ; preds = %25, %25, %25
  br label %158

86:                                               ; preds = %25
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %12, align 4
  br label %158

91:                                               ; preds = %86
  %92 = load i64, i64* %6, align 8
  %93 = inttoptr i64 %92 to %struct.ifmediareq*
  store %struct.ifmediareq* %93, %struct.ifmediareq** %10, align 8
  %94 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %95 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %11, align 4
  %97 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %98 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* @IFM_AVALID, align 4
  %100 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %101 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load i8*, i8** @IFM_ETHER, align 8
  %103 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %104 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %106 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @TUN_OPEN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %91
  %112 = load i32, i32* @IFM_ACTIVE, align 4
  %113 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %114 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %91
  %118 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %119 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %122 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = icmp sge i32 %123, 1
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load i8*, i8** @IFM_ETHER, align 8
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %14, align 4
  %128 = load %struct.ifmediareq*, %struct.ifmediareq** %10, align 8
  %129 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @copyout(i32* %14, i32 %130, i32 4)
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %125, %117
  br label %158

133:                                              ; preds = %25
  %134 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %135 = call i32 @TUN_LOCK(%struct.tuntap_softc* %134)
  %136 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %137 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = call i32 @tun_caps_changed(%struct.ifnet* %141)
  %143 = load %struct.tuntap_softc*, %struct.tuntap_softc** %8, align 8
  %144 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %143)
  %145 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %146 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %145)
  br label %158

147:                                              ; preds = %25
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @ether_ioctl(%struct.ifnet* %151, i32 %152, i64 %153)
  store i32 %154, i32* %12, align 4
  br label %157

155:                                              ; preds = %147
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %155, %150
  br label %158

158:                                              ; preds = %157, %133, %132, %89, %85, %77, %76, %56
  br label %159

159:                                              ; preds = %158, %23
  %160 = call i32 @sx_xunlock(i32* @tun_ioctl_sx)
  %161 = load i32, i32* %12, align 4
  ret i32 %161
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @tuninit(%struct.ifnet*) #1

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @tun_caps_changed(%struct.ifnet*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
