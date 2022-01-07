; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_cqspi.c_cqspi_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_cqspi.c_cqspi_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqspi_softc = type { i32 }

@CMD_WRITE_ENABLE = common dso_local global i32 0, align 4
@CMD_QUAD_SECTOR_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cqspi_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_erase(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cqspi_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.cqspi_softc* @device_get_softc(i32 %9)
  store %struct.cqspi_softc* %10, %struct.cqspi_softc** %7, align 8
  %11 = load %struct.cqspi_softc*, %struct.cqspi_softc** %7, align 8
  %12 = call i32 @cqspi_wait_idle(%struct.cqspi_softc* %11)
  %13 = load %struct.cqspi_softc*, %struct.cqspi_softc** %7, align 8
  %14 = call i32 @cqspi_wait_ready(%struct.cqspi_softc* %13)
  %15 = load %struct.cqspi_softc*, %struct.cqspi_softc** %7, align 8
  %16 = load i32, i32* @CMD_WRITE_ENABLE, align 4
  %17 = call i32 @cqspi_cmd_write(%struct.cqspi_softc* %15, i32 %16, i32 0, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.cqspi_softc*, %struct.cqspi_softc** %7, align 8
  %19 = call i32 @cqspi_wait_idle(%struct.cqspi_softc* %18)
  %20 = load %struct.cqspi_softc*, %struct.cqspi_softc** %7, align 8
  %21 = call i32 @cqspi_wait_ready(%struct.cqspi_softc* %20)
  %22 = load %struct.cqspi_softc*, %struct.cqspi_softc** %7, align 8
  %23 = load i32, i32* @CMD_QUAD_SECTOR_ERASE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cqspi_cmd_write_addr(%struct.cqspi_softc* %22, i32 %23, i32 %24, i32 4)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.cqspi_softc*, %struct.cqspi_softc** %7, align 8
  %27 = call i32 @cqspi_wait_idle(%struct.cqspi_softc* %26)
  ret i32 0
}

declare dso_local %struct.cqspi_softc* @device_get_softc(i32) #1

declare dso_local i32 @cqspi_wait_idle(%struct.cqspi_softc*) #1

declare dso_local i32 @cqspi_wait_ready(%struct.cqspi_softc*) #1

declare dso_local i32 @cqspi_cmd_write(%struct.cqspi_softc*, i32, i32, i32) #1

declare dso_local i32 @cqspi_cmd_write_addr(%struct.cqspi_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
