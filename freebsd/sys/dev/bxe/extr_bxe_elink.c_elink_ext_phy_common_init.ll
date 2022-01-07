; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_common_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"ext_phy 0x%x common init not required\0A\00", align 1
@ELINK_LOG_ID_PHY_UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bxe_softc*, i32*, i32*, i32, i32, i32)* @elink_ext_phy_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_ext_phy_common_init(%struct.bxe_softc* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* @ELINK_STATUS_OK, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32, i32* %11, align 4
  switch i32 %15, label %46 [
    i32 136, label %16
    i32 132, label %23
    i32 130, label %23
    i32 129, label %23
    i32 131, label %30
    i32 135, label %37
    i32 134, label %37
    i32 133, label %37
    i32 128, label %44
  ]

16:                                               ; preds = %6
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @elink_8073_common_init_phy(%struct.bxe_softc* %17, i32* %18, i32* %19, i32 %20, i32 %21)
  store i64 %22, i64* %13, align 8
  br label %50

23:                                               ; preds = %6, %6, %6
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @elink_8727_common_init_phy(%struct.bxe_softc* %24, i32* %25, i32* %26, i32 %27, i32 %28)
  store i64 %29, i64* %13, align 8
  br label %50

30:                                               ; preds = %6
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @elink_8726_common_init_phy(%struct.bxe_softc* %31, i32* %32, i32* %33, i32 %34, i32 %35)
  store i64 %36, i64* %13, align 8
  br label %50

37:                                               ; preds = %6, %6, %6
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @elink_84833_common_init_phy(%struct.bxe_softc* %38, i32* %39, i32* %40, i32 %41, i32 %42)
  store i64 %43, i64* %13, align 8
  br label %50

44:                                               ; preds = %6
  %45 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %45, i64* %13, align 8
  br label %50

46:                                               ; preds = %6
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %44, %37, %30, %23, %16
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @ELINK_STATUS_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %56 = load i32, i32* @ELINK_LOG_ID_PHY_UNINITIALIZED, align 4
  %57 = call i32 @elink_cb_event_log(%struct.bxe_softc* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %13, align 8
  ret i64 %59
}

declare dso_local i64 @elink_8073_common_init_phy(%struct.bxe_softc*, i32*, i32*, i32, i32) #1

declare dso_local i64 @elink_8727_common_init_phy(%struct.bxe_softc*, i32*, i32*, i32, i32) #1

declare dso_local i64 @elink_8726_common_init_phy(%struct.bxe_softc*, i32*, i32*, i32, i32) #1

declare dso_local i64 @elink_84833_common_init_phy(%struct.bxe_softc*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_cb_event_log(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
