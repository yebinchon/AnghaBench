; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_begin_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i64, i32 }
%struct.ata_kauai_softc = type { i32*, i32*, i32*, i32 }

@UDMA_CONFIG_REG = common dso_local global i32 0, align 4
@PIO_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_kauai_begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_kauai_begin_transaction(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_kauai_softc*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %4 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %5 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.ata_kauai_softc* @device_get_softc(i32 %6)
  store %struct.ata_kauai_softc* %7, %struct.ata_kauai_softc** %3, align 8
  %8 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UDMA_CONFIG_REG, align 4
  %12 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %16 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bus_write_4(i32 %10, i32 %11, i32 %19)
  %21 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PIO_CONFIG_REG, align 4
  %25 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %29 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %37 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %32, %40
  %42 = call i32 @bus_write_4(i32 %23, i32 %24, i32 %41)
  %43 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %44 = call i32 @ata_begin_transaction(%struct.ata_request* %43)
  ret i32 %44
}

declare dso_local %struct.ata_kauai_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @ata_begin_transaction(%struct.ata_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
