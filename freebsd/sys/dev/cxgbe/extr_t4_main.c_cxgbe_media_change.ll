; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.vi_info* }
%struct.vi_info = type { %struct.port_info* }
%struct.port_info = type { i64, %struct.adapter*, %struct.link_config, %struct.ifmedia }
%struct.adapter = type { i32 }
%struct.link_config = type { i32, i32, i32, i32 }
%struct.ifmedia = type { i32 }

@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"t4mec\00", align 1
@IFM_AUTO = common dso_local global i64 0, align 8
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbe_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vi_info*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.ifmedia*, align 8
  %7 = alloca %struct.link_config*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load %struct.vi_info*, %struct.vi_info** %11, align 8
  store %struct.vi_info* %12, %struct.vi_info** %4, align 8
  %13 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %14 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %13, i32 0, i32 0
  %15 = load %struct.port_info*, %struct.port_info** %14, align 8
  store %struct.port_info* %15, %struct.port_info** %5, align 8
  %16 = load %struct.port_info*, %struct.port_info** %5, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 3
  store %struct.ifmedia* %17, %struct.ifmedia** %6, align 8
  %18 = load %struct.port_info*, %struct.port_info** %5, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 2
  store %struct.link_config* %19, %struct.link_config** %7, align 8
  %20 = load %struct.port_info*, %struct.port_info** %5, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 1
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  store %struct.adapter* %22, %struct.adapter** %8, align 8
  %23 = load %struct.adapter*, %struct.adapter** %8, align 8
  %24 = load i32, i32* @SLEEP_OK, align 4
  %25 = load i32, i32* @INTR_OK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @begin_synchronized_op(%struct.adapter* %23, i32* null, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %119

32:                                               ; preds = %1
  %33 = load %struct.port_info*, %struct.port_info** %5, align 8
  %34 = call i32 @PORT_LOCK(%struct.port_info* %33)
  %35 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %36 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IFM_SUBTYPE(i32 %37)
  %39 = load i64, i64* @IFM_AUTO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %32
  %42 = load %struct.link_config*, %struct.link_config** %7, align 8
  %43 = getelementptr inbounds %struct.link_config, %struct.link_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOTSUP, align 4
  store i32 %49, i32* %9, align 4
  br label %113

50:                                               ; preds = %41
  %51 = load i32, i32* @AUTONEG_ENABLE, align 4
  %52 = load %struct.link_config*, %struct.link_config** %7, align 8
  %53 = getelementptr inbounds %struct.link_config, %struct.link_config* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.link_config*, %struct.link_config** %7, align 8
  %55 = getelementptr inbounds %struct.link_config, %struct.link_config* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @PAUSE_AUTONEG, align 4
  %57 = load %struct.link_config*, %struct.link_config** %7, align 8
  %58 = getelementptr inbounds %struct.link_config, %struct.link_config* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %102

61:                                               ; preds = %32
  %62 = load i32, i32* @AUTONEG_DISABLE, align 4
  %63 = load %struct.link_config*, %struct.link_config** %7, align 8
  %64 = getelementptr inbounds %struct.link_config, %struct.link_config* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %66 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ifmedia_baudrate(i32 %67)
  %69 = sdiv i32 %68, 1000000
  %70 = load %struct.link_config*, %struct.link_config** %7, align 8
  %71 = getelementptr inbounds %struct.link_config, %struct.link_config* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.link_config*, %struct.link_config** %7, align 8
  %73 = getelementptr inbounds %struct.link_config, %struct.link_config* %72, i32 0, i32 2
  store i32 0, i32* %73, align 4
  %74 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %75 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IFM_OPTIONS(i32 %76)
  %78 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %61
  %82 = load i32, i32* @PAUSE_RX, align 4
  %83 = load %struct.link_config*, %struct.link_config** %7, align 8
  %84 = getelementptr inbounds %struct.link_config, %struct.link_config* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %61
  %88 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %89 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IFM_OPTIONS(i32 %90)
  %92 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i32, i32* @PAUSE_TX, align 4
  %97 = load %struct.link_config*, %struct.link_config** %7, align 8
  %98 = getelementptr inbounds %struct.link_config, %struct.link_config* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %87
  br label %102

102:                                              ; preds = %101, %50
  %103 = load %struct.port_info*, %struct.port_info** %5, align 8
  %104 = getelementptr inbounds %struct.port_info, %struct.port_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.port_info*, %struct.port_info** %5, align 8
  %109 = call i32 @fixup_link_config(%struct.port_info* %108)
  %110 = load %struct.port_info*, %struct.port_info** %5, align 8
  %111 = call i32 @apply_link_config(%struct.port_info* %110)
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %48
  %114 = load %struct.port_info*, %struct.port_info** %5, align 8
  %115 = call i32 @PORT_UNLOCK(%struct.port_info* %114)
  %116 = load %struct.adapter*, %struct.adapter** %8, align 8
  %117 = call i32 @end_synchronized_op(%struct.adapter* %116, i32 0)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %113, %30
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @PORT_LOCK(%struct.port_info*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @ifmedia_baudrate(i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @fixup_link_config(%struct.port_info*) #1

declare dso_local i32 @apply_link_config(%struct.port_info*) #1

declare dso_local i32 @PORT_UNLOCK(%struct.port_info*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
