; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_spi_softc = type { i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chipc_spi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_spi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.chipc_spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.chipc_spi_softc* @device_get_softc(i32 %6)
  store %struct.chipc_spi_softc* %7, %struct.chipc_spi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_release_resource(i32 %14, i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bus_release_resource(i32 %23, i32 %24, i32 %27, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %13, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.chipc_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
