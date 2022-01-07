; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_init_link_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_init_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.link_config }
%struct.link_config = type { i32, i32, i32, i64 }

@t4_autoneg = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_AUTO = common dso_local global i32 0, align 4
@t4_pause_settings = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@t4_fec = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@FEC_NONE = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i32 0, align 4
@FEC_BASER_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*)* @init_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_link_config(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  %3 = alloca %struct.link_config*, align 8
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %4 = load %struct.port_info*, %struct.port_info** %2, align 8
  %5 = getelementptr inbounds %struct.port_info, %struct.port_info* %4, i32 0, i32 0
  store %struct.link_config* %5, %struct.link_config** %3, align 8
  %6 = load %struct.port_info*, %struct.port_info** %2, align 8
  %7 = call i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info* %6)
  %8 = load %struct.link_config*, %struct.link_config** %3, align 8
  %9 = getelementptr inbounds %struct.link_config, %struct.link_config* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @t4_autoneg, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @AUTONEG_DISABLE, align 4
  %14 = load %struct.link_config*, %struct.link_config** %3, align 8
  %15 = getelementptr inbounds %struct.link_config, %struct.link_config* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @t4_autoneg, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @AUTONEG_ENABLE, align 4
  %21 = load %struct.link_config*, %struct.link_config** %3, align 8
  %22 = getelementptr inbounds %struct.link_config, %struct.link_config* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @AUTONEG_AUTO, align 4
  %25 = load %struct.link_config*, %struct.link_config** %3, align 8
  %26 = getelementptr inbounds %struct.link_config, %struct.link_config* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, i32* @t4_pause_settings, align 4
  %30 = load i32, i32* @PAUSE_TX, align 4
  %31 = load i32, i32* @PAUSE_RX, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PAUSE_AUTONEG, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = load %struct.link_config*, %struct.link_config** %3, align 8
  %37 = getelementptr inbounds %struct.link_config, %struct.link_config* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @t4_fec, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %45, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @t4_fec, align 4
  %42 = load i32, i32* @FEC_AUTO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %28
  %46 = load i32, i32* @FEC_AUTO, align 4
  %47 = load %struct.link_config*, %struct.link_config** %3, align 8
  %48 = getelementptr inbounds %struct.link_config, %struct.link_config* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %75

49:                                               ; preds = %40
  %50 = load i32, i32* @FEC_NONE, align 4
  %51 = load %struct.link_config*, %struct.link_config** %3, align 8
  %52 = getelementptr inbounds %struct.link_config, %struct.link_config* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @t4_fec, align 4
  %54 = load i32, i32* @FEC_RS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* @FEC_RS, align 4
  %59 = load %struct.link_config*, %struct.link_config** %3, align 8
  %60 = getelementptr inbounds %struct.link_config, %struct.link_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %49
  %64 = load i32, i32* @t4_fec, align 4
  %65 = load i32, i32* @FEC_BASER_RS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @FEC_BASER_RS, align 4
  %70 = load %struct.link_config*, %struct.link_config** %3, align 8
  %71 = getelementptr inbounds %struct.link_config, %struct.link_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %74, %45
  ret void
}

declare dso_local i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
