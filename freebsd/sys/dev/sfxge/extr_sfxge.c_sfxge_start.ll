; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SFXGE_STARTED = common dso_local global i64 0, align 8
@SFXGE_REGISTERED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sfxge_start: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_start(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %5 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %6 = call i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc* %5)
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SFXGE_STARTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

13:                                               ; preds = %1
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SFXGE_REGISTERED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %94

21:                                               ; preds = %13
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %23 = call i32 @sfxge_set_drv_limits(%struct.sfxge_softc* %22)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %94

26:                                               ; preds = %21
  %27 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @efx_nic_init(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %94

33:                                               ; preds = %26
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %35 = call i32 @sfxge_intr_start(%struct.sfxge_softc* %34)
  store i32 %35, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %89

38:                                               ; preds = %33
  %39 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %40 = call i32 @sfxge_ev_start(%struct.sfxge_softc* %39)
  store i32 %40, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %86

43:                                               ; preds = %38
  %44 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %45 = call i32 @sfxge_port_start(%struct.sfxge_softc* %44)
  store i32 %45, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %83

48:                                               ; preds = %43
  %49 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %50 = call i32 @sfxge_rx_start(%struct.sfxge_softc* %49)
  store i32 %50, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %80

53:                                               ; preds = %48
  %54 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %55 = call i32 @sfxge_tx_start(%struct.sfxge_softc* %54)
  store i32 %55, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %77

58:                                               ; preds = %53
  %59 = load i64, i64* @SFXGE_STARTED, align 8
  %60 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %61 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %63 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %64 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %70
  store i32 %76, i32* %74, align 4
  store i32 0, i32* %2, align 4
  br label %101

77:                                               ; preds = %57
  %78 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %79 = call i32 @sfxge_rx_stop(%struct.sfxge_softc* %78)
  br label %80

80:                                               ; preds = %77, %52
  %81 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %82 = call i32 @sfxge_port_stop(%struct.sfxge_softc* %81)
  br label %83

83:                                               ; preds = %80, %47
  %84 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %85 = call i32 @sfxge_ev_stop(%struct.sfxge_softc* %84)
  br label %86

86:                                               ; preds = %83, %42
  %87 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %88 = call i32 @sfxge_intr_stop(%struct.sfxge_softc* %87)
  br label %89

89:                                               ; preds = %86, %37
  %90 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %91 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @efx_nic_fini(i32 %92)
  br label %94

94:                                               ; preds = %89, %32, %25, %19
  %95 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %96 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %94, %58, %12
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_set_drv_limits(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_init(i32) #1

declare dso_local i32 @sfxge_intr_start(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_ev_start(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_port_start(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_rx_start(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_tx_start(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_rx_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_port_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_ev_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_intr_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_fini(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
