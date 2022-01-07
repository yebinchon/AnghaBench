; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_TXSTATUS0 = common dso_local global i32 0, align 4
@BWI_TXSTATUS0_VALID = common dso_local global i32 0, align 4
@BWI_TXSTATUS1 = common dso_local global i32 0, align 4
@BWI_TXSTATUS0_TXID_MASK = common dso_local global i32 0, align 4
@BWI_TXSTATUS0_DATA_TXCNT_MASK = common dso_local global i32 0, align 4
@BWI_TXSTATUS0_AMPDU = common dso_local global i32 0, align 4
@BWI_TXSTATUS0_PENDING = common dso_local global i32 0, align 4
@BWI_TXSTATUS0_ACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_txeof(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  br label %7

7:                                                ; preds = %34, %33, %1
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %9 = load i32, i32* @BWI_TXSTATUS0, align 4
  %10 = call i32 @CSR_READ_4(%struct.bwi_softc* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BWI_TXSTATUS0_VALID, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %43

16:                                               ; preds = %7
  %17 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %18 = load i32, i32* @BWI_TXSTATUS1, align 4
  %19 = call i32 @CSR_READ_4(%struct.bwi_softc* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @BWI_TXSTATUS0_TXID_MASK, align 4
  %22 = call i8* @__SHIFTOUT(i32 %20, i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @BWI_TXSTATUS0_DATA_TXCNT_MASK, align 4
  %25 = call i8* @__SHIFTOUT(i32 %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @BWI_TXSTATUS0_AMPDU, align 4
  %29 = load i32, i32* @BWI_TXSTATUS0_PENDING, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %7

34:                                               ; preds = %16
  %35 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @le16toh(i8* %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @BWI_TXSTATUS0_ACKED, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @_bwi_txeof(%struct.bwi_softc* %35, i32 %37, i32 %40, i32 %41)
  br label %7

43:                                               ; preds = %15
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %45 = call i32 @bwi_start_locked(%struct.bwi_softc* %44)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i8* @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @_bwi_txeof(%struct.bwi_softc*, i32, i32, i32) #1

declare dso_local i32 @le16toh(i8*) #1

declare dso_local i32 @bwi_start_locked(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
