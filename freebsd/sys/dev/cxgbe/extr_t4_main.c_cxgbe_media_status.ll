; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.vi_info* }
%struct.vi_info = type { %struct.port_info* }
%struct.port_info = type { i64, %struct.link_config, %struct.adapter* }
%struct.link_config = type { i32, i32, i32 }
%struct.adapter = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"t4med\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbe_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.vi_info*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.link_config*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.vi_info*, %struct.vi_info** %10, align 8
  store %struct.vi_info* %11, %struct.vi_info** %5, align 8
  %12 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %13 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %12, i32 0, i32 0
  %14 = load %struct.port_info*, %struct.port_info** %13, align 8
  store %struct.port_info* %14, %struct.port_info** %6, align 8
  %15 = load %struct.port_info*, %struct.port_info** %6, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 2
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %7, align 8
  %18 = load %struct.port_info*, %struct.port_info** %6, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 1
  store %struct.link_config* %19, %struct.link_config** %8, align 8
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = load i32, i32* @SLEEP_OK, align 4
  %22 = load i32, i32* @INTR_OK, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @begin_synchronized_op(%struct.adapter* %20, i32* null, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %108

27:                                               ; preds = %2
  %28 = load %struct.port_info*, %struct.port_info** %6, align 8
  %29 = call i32 @PORT_LOCK(%struct.port_info* %28)
  %30 = load %struct.port_info*, %struct.port_info** %6, align 8
  %31 = getelementptr inbounds %struct.port_info, %struct.port_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.port_info*, %struct.port_info** %6, align 8
  %36 = call i32 @t4_update_port_info(%struct.port_info* %35)
  %37 = load %struct.port_info*, %struct.port_info** %6, align 8
  %38 = call i32 @build_medialist(%struct.port_info* %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @IFM_AVALID, align 4
  %41 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %42 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.link_config*, %struct.link_config** %8, align 8
  %44 = getelementptr inbounds %struct.link_config, %struct.link_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %103

48:                                               ; preds = %39
  %49 = load i32, i32* @IFM_ACTIVE, align 4
  %50 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %51 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @IFM_ETHER, align 4
  %55 = load i32, i32* @IFM_FDX, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %58 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %60 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %64 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.link_config*, %struct.link_config** %8, align 8
  %68 = getelementptr inbounds %struct.link_config, %struct.link_config* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PAUSE_RX, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %48
  %74 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %75 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %76 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %48
  %80 = load %struct.link_config*, %struct.link_config** %8, align 8
  %81 = getelementptr inbounds %struct.link_config, %struct.link_config* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PAUSE_TX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %88 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %89 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.port_info*, %struct.port_info** %6, align 8
  %94 = load %struct.link_config*, %struct.link_config** %8, align 8
  %95 = getelementptr inbounds %struct.link_config, %struct.link_config* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @speed_to_fwcap(i32 %96)
  %98 = call i32 @port_mword(%struct.port_info* %93, i32 %97)
  %99 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %100 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %92, %47
  %104 = load %struct.port_info*, %struct.port_info** %6, align 8
  %105 = call i32 @PORT_UNLOCK(%struct.port_info* %104)
  %106 = load %struct.adapter*, %struct.adapter** %7, align 8
  %107 = call i32 @end_synchronized_op(%struct.adapter* %106, i32 0)
  br label %108

108:                                              ; preds = %103, %26
  ret void
}

declare dso_local i64 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @PORT_LOCK(%struct.port_info*) #1

declare dso_local i32 @t4_update_port_info(%struct.port_info*) #1

declare dso_local i32 @build_medialist(%struct.port_info*) #1

declare dso_local i32 @port_mword(%struct.port_info*, i32) #1

declare dso_local i32 @speed_to_fwcap(i32) #1

declare dso_local i32 @PORT_UNLOCK(%struct.port_info*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
