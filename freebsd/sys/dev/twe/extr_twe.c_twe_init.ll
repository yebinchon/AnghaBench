; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@TWE_MAX_UNITS = common dso_local global i32 0, align 4
@TWE_INIT_MESSAGE_CREDITS = common dso_local global i32 0, align 4
@TWE_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@TWE_PARAM_FEATURES = common dso_local global i32 0, align 4
@TWE_PARAM_FEATURES_DriverShutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twe_init(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %4 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %5 = call i32 @TWE_CONFIG_LOCK(%struct.twe_softc* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %14, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TWE_MAX_UNITS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @twe_add_unit(%struct.twe_softc* %11, i32 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %6

17:                                               ; preds = %6
  %18 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %19 = call i32 @TWE_CONFIG_UNLOCK(%struct.twe_softc* %18)
  %20 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %21 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %20)
  %22 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %23 = load i32, i32* @TWE_INIT_MESSAGE_CREDITS, align 4
  %24 = call i32 @twe_init_connection(%struct.twe_softc* %22, i32 %23)
  %25 = load i32, i32* @TWE_STATE_SHUTDOWN, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %28 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %32 = call i32 @twe_enable_interrupts(%struct.twe_softc* %31)
  %33 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %34 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %33)
  ret void
}

declare dso_local i32 @TWE_CONFIG_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @twe_add_unit(%struct.twe_softc*, i32) #1

declare dso_local i32 @TWE_CONFIG_UNLOCK(%struct.twe_softc*) #1

declare dso_local i32 @TWE_IO_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @twe_init_connection(%struct.twe_softc*, i32) #1

declare dso_local i32 @twe_enable_interrupts(%struct.twe_softc*) #1

declare dso_local i32 @TWE_IO_UNLOCK(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
