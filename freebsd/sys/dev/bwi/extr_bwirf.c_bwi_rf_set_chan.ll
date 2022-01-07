; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_2__, %struct.bwi_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.bwi_softc = type { i64 }

@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_CHAN = common dso_local global i32 0, align 4
@BWI_RF_CHAN = common dso_local global i32 0, align 4
@BWI_SPROM_LOCALE_JAPAN = common dso_local global i64 0, align 8
@BWI_HFLAG_NOT_JAPAN = common dso_local global i32 0, align 4
@BWI_RF_CHAN_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_set_chan(%struct.bwi_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_softc*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 1
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %63

15:                                               ; preds = %3
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %17 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %18 = load i32, i32* @BWI_COMM_MOBJ_CHAN, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @bwi_rf_work_around(%struct.bwi_mac* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %29 = load i32, i32* @BWI_RF_CHAN, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @BWI_RF_2GHZ_CHAN(i32 %30)
  %32 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %28, i32 %29, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 14
  br i1 %34, label %35, label %53

35:                                               ; preds = %27
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %37 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BWI_SPROM_LOCALE_JAPAN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %43 = load i32, i32* @BWI_HFLAG_NOT_JAPAN, align 4
  %44 = call i32 @HFLAGS_CLRBITS(%struct.bwi_mac* %42, i32 %43)
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %47 = load i32, i32* @BWI_HFLAG_NOT_JAPAN, align 4
  %48 = call i32 @HFLAGS_SETBITS(%struct.bwi_mac* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %51 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %52 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %50, i32 %51, i32 2048)
  br label %57

53:                                               ; preds = %27
  %54 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %55 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %56 = call i32 @CSR_CLRBITS_2(%struct.bwi_softc* %54, i32 %55, i32 2112)
  br label %57

57:                                               ; preds = %53, %49
  %58 = call i32 @DELAY(i32 8000)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %61 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %14
  ret void
}

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @bwi_rf_work_around(%struct.bwi_mac*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @BWI_RF_2GHZ_CHAN(i32) #1

declare dso_local i32 @HFLAGS_CLRBITS(%struct.bwi_mac*, i32) #1

declare dso_local i32 @HFLAGS_SETBITS(%struct.bwi_mac*, i32) #1

declare dso_local i32 @CSR_SETBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_CLRBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
