; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_set_current_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_set_current_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.link_config, %struct.ifmedia }
%struct.link_config = type { i64, i32, i32, i32 }
%struct.ifmedia = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFM_NONE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*)* @set_current_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_current_media(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  %3 = alloca %struct.link_config*, align 8
  %4 = alloca %struct.ifmedia*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %7 = load %struct.port_info*, %struct.port_info** %2, align 8
  %8 = call i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info* %7)
  %9 = load %struct.port_info*, %struct.port_info** %2, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 1
  store %struct.ifmedia* %10, %struct.ifmedia** %4, align 8
  %11 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %12 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %17 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IFM_SUBTYPE(i32 %20)
  %22 = load i64, i64* @IFM_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %94

25:                                               ; preds = %15, %1
  %26 = load %struct.port_info*, %struct.port_info** %2, align 8
  %27 = getelementptr inbounds %struct.port_info, %struct.port_info* %26, i32 0, i32 0
  store %struct.link_config* %27, %struct.link_config** %3, align 8
  %28 = load %struct.link_config*, %struct.link_config** %3, align 8
  %29 = getelementptr inbounds %struct.link_config, %struct.link_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AUTONEG_DISABLE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load %struct.link_config*, %struct.link_config** %3, align 8
  %35 = getelementptr inbounds %struct.link_config, %struct.link_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %42 = load i32, i32* @IFM_ETHER, align 4
  %43 = load i32, i32* @IFM_AUTO, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ifmedia_set(%struct.ifmedia* %41, i32 %44)
  br label %94

46:                                               ; preds = %33, %25
  %47 = load i32, i32* @IFM_ETHER, align 4
  %48 = load i32, i32* @IFM_FDX, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.link_config*, %struct.link_config** %3, align 8
  %51 = getelementptr inbounds %struct.link_config, %struct.link_config* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PAUSE_TX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %46
  %61 = load %struct.link_config*, %struct.link_config** %3, align 8
  %62 = getelementptr inbounds %struct.link_config, %struct.link_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PAUSE_RX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.link_config*, %struct.link_config** %3, align 8
  %73 = getelementptr inbounds %struct.link_config, %struct.link_config* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.port_info*, %struct.port_info** %2, align 8
  %78 = call i32 @port_top_speed(%struct.port_info* %77)
  %79 = mul nsw i32 %78, 1000
  store i32 %79, i32* %6, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load %struct.link_config*, %struct.link_config** %3, align 8
  %82 = getelementptr inbounds %struct.link_config, %struct.link_config* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.port_info*, %struct.port_info** %2, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @speed_to_fwcap(i32 %86)
  %88 = call i32 @port_mword(%struct.port_info* %85, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @ifmedia_set(%struct.ifmedia* %91, i32 %92)
  br label %94

94:                                               ; preds = %84, %40, %24
  ret void
}

declare dso_local i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @ifmedia_set(%struct.ifmedia*, i32) #1

declare dso_local i32 @port_top_speed(%struct.port_info*) #1

declare dso_local i32 @port_mword(%struct.port_info*, i32) #1

declare dso_local i32 @speed_to_fwcap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
