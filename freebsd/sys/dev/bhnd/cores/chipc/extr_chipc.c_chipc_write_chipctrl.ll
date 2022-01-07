; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_write_chipctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_write_chipctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32 }

@CHIPC_CHIPCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @chipc_write_chipctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipc_write_chipctrl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.chipc_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.chipc_softc* @device_get_softc(i32 %9)
  store %struct.chipc_softc* %10, %struct.chipc_softc** %7, align 8
  %11 = load %struct.chipc_softc*, %struct.chipc_softc** %7, align 8
  %12 = call i32 @CHIPC_LOCK(%struct.chipc_softc* %11)
  %13 = load %struct.chipc_softc*, %struct.chipc_softc** %7, align 8
  %14 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CHIPC_CHIPCTRL, align 4
  %17 = call i32 @bhnd_bus_read_4(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = or i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.chipc_softc*, %struct.chipc_softc** %7, align 8
  %27 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CHIPC_CHIPCTRL, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @bhnd_bus_write_4(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.chipc_softc*, %struct.chipc_softc** %7, align 8
  %33 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %32)
  ret void
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32) #1

declare dso_local i32 @CHIPC_LOCK(%struct.chipc_softc*) #1

declare dso_local i32 @bhnd_bus_read_4(i32, i32) #1

declare dso_local i32 @bhnd_bus_write_4(i32, i32, i32) #1

declare dso_local i32 @CHIPC_UNLOCK(%struct.chipc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
