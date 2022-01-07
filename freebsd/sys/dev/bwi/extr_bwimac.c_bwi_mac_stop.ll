; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32 }

@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_ENABLE = common dso_local global i32 0, align 4
@BWI_MAC_INTR_STATUS = common dso_local global i32 0, align 4
@BWI_INTR_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"can't stop MAC\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@NRETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_mac_stop(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 0
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  store %struct.bwi_softc* %9, %struct.bwi_softc** %4, align 8
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %11 = call i32 @bwi_mac_config_ps(%struct.bwi_mac* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %18 = load i32, i32* @BWI_MAC_STATUS, align 4
  %19 = load i32, i32* @BWI_MAC_STATUS_ENABLE, align 4
  %20 = call i32 @CSR_CLRBITS_4(%struct.bwi_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %22 = load i32, i32* @BWI_MAC_STATUS, align 4
  %23 = call i32 @CSR_READ_4(%struct.bwi_softc* %21, i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %37, %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 10000
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %29 = load i32, i32* @BWI_MAC_INTR_STATUS, align 4
  %30 = call i32 @CSR_READ_4(%struct.bwi_softc* %28, i32 %29)
  %31 = load i32, i32* @BWI_INTR_READY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %40

35:                                               ; preds = %27
  %36 = call i32 @DELAY(i32 1)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %24

40:                                               ; preds = %34, %24
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 10000
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @bwi_mac_config_ps(%struct.bwi_mac*) #1

declare dso_local i32 @CSR_CLRBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
