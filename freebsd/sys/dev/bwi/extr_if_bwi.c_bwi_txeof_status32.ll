; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_txeof_status32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_txeof_status32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BWI_RX32_STATUS = common dso_local global i64 0, align 8
@BWI_RX32_STATUS_INDEX_MASK = common dso_local global i32 0, align 4
@BWI_RX32_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_txeof_status32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_txeof_status32(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %6 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @BWI_RX32_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @CSR_READ_4(%struct.bwi_softc* %11, i64 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @BWI_RX32_STATUS_INDEX_MASK, align 4
  %18 = call i32 @__SHIFTOUT(i64 %16, i32 %17)
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @bwi_txeof_status(%struct.bwi_softc* %22, i32 %23)
  %25 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @BWI_RX32_INDEX, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %25, i64 %28, i32 %32)
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %35 = call i32 @bwi_start_locked(%struct.bwi_softc* %34)
  ret void
}

declare dso_local i64 @CSR_READ_4(%struct.bwi_softc*, i64) #1

declare dso_local i32 @__SHIFTOUT(i64, i32) #1

declare dso_local i32 @bwi_txeof_status(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i64, i32) #1

declare dso_local i32 @bwi_start_locked(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
