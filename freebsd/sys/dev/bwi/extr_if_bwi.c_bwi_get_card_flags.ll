; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_get_card_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_get_card_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i64, i64, i32, i32 }

@BWI_SPROM_CARD_FLAGS = common dso_local global i32 0, align 4
@BWI_BBPID_BCM4301 = common dso_local global i64 0, align 8
@BWI_CARD_F_BT_COEXIST = common dso_local global i32 0, align 4
@BWI_CARD_F_PA_GPIO9 = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"card flags 0x%04x\0A\00", align 1
@PCI_VENDOR_APPLE = common dso_local global i64 0, align 8
@PCI_VENDOR_DELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_get_card_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_get_card_flags(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %3 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %4 = load i32, i32* @BWI_SPROM_CARD_FLAGS, align 4
  %5 = call i32 @bwi_read_sprom(%struct.bwi_softc* %3, i32 %4)
  %6 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 65535
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 4136
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BWI_BBPID_BCM4301, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 116
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @BWI_CARD_F_BT_COEXIST, align 4
  %33 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %26, %20, %15
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 4203
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 78
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %49 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 64
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @BWI_CARD_F_PA_GPIO9, align 4
  %54 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %47, %42, %37
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %60 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %61 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %62 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DPRINTF(%struct.bwi_softc* %59, i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32 @bwi_read_sprom(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
