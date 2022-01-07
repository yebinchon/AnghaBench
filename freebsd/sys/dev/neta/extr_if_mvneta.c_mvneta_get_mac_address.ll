; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/neta/extr_if_mvneta.c_mvneta_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/neta/extr_if_mvneta.c_mvneta_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_softc = type { i32 }

@MVNETA_MACAL = common dso_local global i32 0, align 4
@MVNETA_MACAH = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Could not acquire MAC address. Using randomized one.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_softc*, i32*)* @mvneta_get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_get_mac_address(%struct.mvneta_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.mvneta_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvneta_softc* %0, %struct.mvneta_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.mvneta_softc*, %struct.mvneta_softc** %3, align 8
  %8 = load i32, i32* @MVNETA_MACAL, align 4
  %9 = call i32 @MVNETA_READ(%struct.mvneta_softc* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mvneta_softc*, %struct.mvneta_softc** %3, align 8
  %11 = load i32, i32* @MVNETA_MACAH, align 4
  %12 = call i32 @MVNETA_READ(%struct.mvneta_softc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = call i32 (...) @arc4random()
  %20 = and i32 %19, -256
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mvneta_softc*, %struct.mvneta_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_get_unit(i32 %23)
  %25 = and i32 %24, 255
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @arc4random()
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -50331649
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* @bootverbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.mvneta_softc*, %struct.mvneta_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mvneta_softc, %struct.mvneta_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %18
  br label %39

39:                                               ; preds = %38, %15, %2
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, -16777216
  %42 = lshr i32 %41, 24
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 16711680
  %47 = ashr i32 %46, 16
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 65280
  %52 = ashr i32 %51, 8
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 65280
  %61 = ashr i32 %60, 8
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  store i32 %65, i32* %67, align 4
  ret i32 0
}

declare dso_local i32 @MVNETA_READ(%struct.mvneta_softc*, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
