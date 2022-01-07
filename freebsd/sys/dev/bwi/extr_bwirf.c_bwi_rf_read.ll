; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc*, %struct.bwi_rf }
%struct.bwi_softc = type { i32 }
%struct.bwi_rf = type { i32, i64 }

@BWI_RF_CTRL = common dso_local global i32 0, align 4
@BWI_RF_DATA_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_rf_read(%struct.bwi_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca %struct.bwi_softc*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 1
  store %struct.bwi_rf* %8, %struct.bwi_rf** %5, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 0
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %10, align 8
  store %struct.bwi_softc* %11, %struct.bwi_softc** %6, align 8
  %12 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %13 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %18 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 112
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 128
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 128
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 112
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %24
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %37 = load i32, i32* @BWI_RF_CTRL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %41 = load i32, i32* @BWI_RF_DATA_LO, align 4
  %42 = call i32 @CSR_READ_2(%struct.bwi_softc* %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
