; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_transaction_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_transaction_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelspi_softc = type { i64, i64, i64 }

@INTELSPI_SSPREG_SSSR = common dso_local global i32 0, align 4
@SSSR_TFL_MASK = common dso_local global i32 0, align 4
@SSSR_TNF = common dso_local global i32 0, align 4
@SSSR_RNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intelspi_softc*)* @intelspi_transaction_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelspi_transaction_done(%struct.intelspi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intelspi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intelspi_softc* %0, %struct.intelspi_softc** %3, align 8
  %6 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %7 = call i32 @INTELSPI_ASSERT_LOCKED(%struct.intelspi_softc* %6)
  %8 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %49

24:                                               ; preds = %15
  %25 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %26 = load i32, i32* @INTELSPI_SSPREG_SSSR, align 4
  %27 = call i32 @INTELSPI_READ(%struct.intelspi_softc* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SSSR_TFL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SSSR_TNF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i1 [ false, %24 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SSSR_RNE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %49

48:                                               ; preds = %42, %37
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %23
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @INTELSPI_ASSERT_LOCKED(%struct.intelspi_softc*) #1

declare dso_local i32 @INTELSPI_READ(%struct.intelspi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
