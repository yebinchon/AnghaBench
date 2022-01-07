; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rxvf_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rxvf_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@HN_FLAG_RXVF = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_NONE = common dso_local global i32 0, align 4
@HN_NVS_DATAPATH_VF = common dso_local global i32 0, align 4
@HN_NVS_DATAPATH_SYNTH = common dso_local global i32 0, align 4
@HN_LINK_FLAG_LINKUP = common dso_local global i32 0, align 4
@HN_LINK_FLAG_NETCHG = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"HYPERV_NIC_VF\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VF_UP\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"VF_DOWN\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"datapath is switched %s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, %struct.ifnet*, i32)* @hn_rxvf_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_rxvf_change(%struct.hn_softc* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %9 = call i32 @HN_LOCK(%struct.hn_softc* %8)
  %10 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %139

17:                                               ; preds = %3
  %18 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = call i32 @hn_ismyvf(%struct.hn_softc* %18, %struct.ifnet* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %139

23:                                               ; preds = %17
  %24 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 2
  %26 = load %struct.ifnet*, %struct.ifnet** %25, align 8
  store %struct.ifnet* %26, %struct.ifnet** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HN_FLAG_RXVF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %139

37:                                               ; preds = %29
  %38 = load i32, i32* @HN_FLAG_RXVF, align 4
  %39 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %40 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %44 = call i32 @hn_rxfilter_config(%struct.hn_softc* %43)
  br label %74

45:                                               ; preds = %23
  %46 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %47 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HN_FLAG_RXVF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %139

53:                                               ; preds = %45
  %54 = load i32, i32* @HN_FLAG_RXVF, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %57 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %68 = call i32 @hn_rxfilter_config(%struct.hn_softc* %67)
  br label %73

69:                                               ; preds = %53
  %70 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %71 = load i32, i32* @NDIS_PACKET_TYPE_NONE, align 4
  %72 = call i32 @hn_set_rxfilter(%struct.hn_softc* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  br label %74

74:                                               ; preds = %73, %37
  %75 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @HN_NVS_DATAPATH_VF, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @HN_NVS_DATAPATH_SYNTH, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @hn_nvs_set_datapath(%struct.hn_softc* %75, i32 %83)
  %85 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  br label %91

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi %struct.ifnet* [ %89, %88 ], [ null, %90 ]
  %93 = call i32 @hn_rxvf_set(%struct.hn_softc* %85, %struct.ifnet* %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %98 = call i32 @hn_vf_rss_fixup(%struct.hn_softc* %97, i32 1)
  %99 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %100 = call i32 @hn_suspend_mgmt(%struct.hn_softc* %99)
  %101 = load i32, i32* @HN_LINK_FLAG_LINKUP, align 4
  %102 = load i32, i32* @HN_LINK_FLAG_NETCHG, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %106 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %110 = load i32, i32* @LINK_STATE_DOWN, align 4
  %111 = call i32 @if_link_state_change(%struct.ifnet* %109, i32 %110)
  br label %117

112:                                              ; preds = %91
  %113 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %114 = call i32 @hn_vf_rss_restore(%struct.hn_softc* %113)
  %115 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %116 = call i32 @hn_resume_mgmt(%struct.hn_softc* %115)
  br label %117

117:                                              ; preds = %112, %96
  %118 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %125 = call i32 @devctl_notify(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %120, i8* %124, i32* null)
  %126 = load i64, i64* @bootverbose, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %117
  %129 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %134 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %135 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @if_printf(%struct.ifnet* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %133, i32 %136)
  br label %138

138:                                              ; preds = %128, %117
  br label %139

139:                                              ; preds = %138, %52, %36, %22, %16
  %140 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %141 = call i32 @HN_UNLOCK(%struct.hn_softc* %140)
  ret void
}

declare dso_local i32 @HN_LOCK(%struct.hn_softc*) #1

declare dso_local i32 @hn_ismyvf(%struct.hn_softc*, %struct.ifnet*) #1

declare dso_local i32 @hn_rxfilter_config(%struct.hn_softc*) #1

declare dso_local i32 @hn_set_rxfilter(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_nvs_set_datapath(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_rxvf_set(%struct.hn_softc*, %struct.ifnet*) #1

declare dso_local i32 @hn_vf_rss_fixup(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_suspend_mgmt(%struct.hn_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @hn_vf_rss_restore(%struct.hn_softc*) #1

declare dso_local i32 @hn_resume_mgmt(%struct.hn_softc*) #1

declare dso_local i32 @devctl_notify(i8*, i32, i8*, i32*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i8*, i32) #1

declare dso_local i32 @HN_UNLOCK(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
