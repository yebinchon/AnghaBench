; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_firewire_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_firewire_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_softc = type { %struct.firewire_comm* }
%struct.firewire_comm = type { i32, i32, %struct.fw_device*, %struct.fw_device*, %struct.fw_device*, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.fw_device = type { i32 }
%struct.TYPE_2__ = type { i64 }

@FWBUSDETACH = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fwthr\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"firewire probe thread didn't die\0A\00", align 1
@link = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @firewire_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firewire_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.firewire_softc*, align 8
  %5 = alloca %struct.firewire_comm*, align 8
  %6 = alloca %struct.fw_device*, align 8
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.firewire_softc* @device_get_softc(i32 %9)
  store %struct.firewire_softc* %10, %struct.firewire_softc** %4, align 8
  %11 = load %struct.firewire_softc*, %struct.firewire_softc** %4, align 8
  %12 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %11, i32 0, i32 0
  %13 = load %struct.firewire_comm*, %struct.firewire_comm** %12, align 8
  store %struct.firewire_comm* %13, %struct.firewire_comm** %5, align 8
  %14 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %15 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i32, i32* @FWBUSDETACH, align 4
  %18 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %19 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 4
  %20 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %21 = call i32 @wakeup(%struct.firewire_comm* %20)
  %22 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %23 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %26 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %25, i32 0, i32 0
  %27 = load i32, i32* @PWAIT, align 4
  %28 = load i32, i32* @hz, align 4
  %29 = mul nsw i32 %28, 60
  %30 = call i64 @msleep(i32 %24, i32* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %1
  %35 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %36 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %39 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %38, i32 0, i32 9
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %44 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %43, i32 0, i32 9
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %51 = call i32 @fw_drain_txq(%struct.firewire_comm* %50)
  br label %52

52:                                               ; preds = %49, %42, %34
  %53 = load %struct.firewire_softc*, %struct.firewire_softc** %4, align 8
  %54 = call i32 @fwdev_destroydev(%struct.firewire_softc* %53)
  store i32 %54, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %111

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @bus_generic_detach(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %111

64:                                               ; preds = %58
  %65 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %66 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %65, i32 0, i32 8
  %67 = call i32 @callout_stop(i32* %66)
  %68 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %69 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %68, i32 0, i32 7
  %70 = call i32 @callout_stop(i32* %69)
  %71 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %72 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %71, i32 0, i32 6
  %73 = call i32 @callout_stop(i32* %72)
  %74 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %75 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %74, i32 0, i32 5
  %76 = call %struct.fw_device* @STAILQ_FIRST(i32* %75)
  store %struct.fw_device* %76, %struct.fw_device** %6, align 8
  br label %77

77:                                               ; preds = %87, %64
  %78 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %79 = icmp ne %struct.fw_device* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %82 = load i32, i32* @link, align 4
  %83 = call %struct.fw_device* @STAILQ_NEXT(%struct.fw_device* %81, i32 %82)
  store %struct.fw_device* %83, %struct.fw_device** %7, align 8
  %84 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %85 = load i32, i32* @M_FW, align 4
  %86 = call i32 @free(%struct.fw_device* %84, i32 %85)
  br label %87

87:                                               ; preds = %80
  %88 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  store %struct.fw_device* %88, %struct.fw_device** %6, align 8
  br label %77

89:                                               ; preds = %77
  %90 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %91 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %90, i32 0, i32 4
  %92 = load %struct.fw_device*, %struct.fw_device** %91, align 8
  %93 = load i32, i32* @M_FW, align 4
  %94 = call i32 @free(%struct.fw_device* %92, i32 %93)
  %95 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %96 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %95, i32 0, i32 3
  %97 = load %struct.fw_device*, %struct.fw_device** %96, align 8
  %98 = load i32, i32* @M_FW, align 4
  %99 = call i32 @free(%struct.fw_device* %97, i32 %98)
  %100 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %101 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %100, i32 0, i32 2
  %102 = load %struct.fw_device*, %struct.fw_device** %101, align 8
  %103 = load i32, i32* @M_FW, align 4
  %104 = call i32 @free(%struct.fw_device* %102, i32 %103)
  %105 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %106 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %105, i32 0, i32 1
  %107 = call i32 @mtx_destroy(i32* %106)
  %108 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %109 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %108, i32 0, i32 0
  %110 = call i32 @mtx_destroy(i32* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %89, %62, %56
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.firewire_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.firewire_comm*) #1

declare dso_local i64 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fw_drain_txq(%struct.firewire_comm*) #1

declare dso_local i32 @fwdev_destroydev(%struct.firewire_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local %struct.fw_device* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.fw_device* @STAILQ_NEXT(%struct.fw_device*, i32) #1

declare dso_local i32 @free(%struct.fw_device*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
