; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem_sbus.c_gem_sbus_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem_sbus.c_gem_sbus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32*, i32 }

@GEM_RES_INTR = common dso_local global i64 0, align 8
@gem_sbus_res_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gem_sbus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_sbus_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.gem_softc* @device_get_softc(i32 %4)
  store %struct.gem_softc* %5, %struct.gem_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %8 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @GEM_RES_INTR, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_teardown_intr(i32 %6, i32 %12, i32 %15)
  %17 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %18 = call i32 @gem_detach(%struct.gem_softc* %17)
  %19 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %20 = call i32 @GEM_LOCK_DESTROY(%struct.gem_softc* %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @gem_sbus_res_spec, align 4
  %23 = load %struct.gem_softc*, %struct.gem_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_release_resources(i32 %21, i32 %22, i32* %25)
  ret i32 0
}

declare dso_local %struct.gem_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @gem_detach(%struct.gem_softc*) #1

declare dso_local i32 @GEM_LOCK_DESTROY(%struct.gem_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
