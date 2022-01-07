; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_read_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_read_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@REG_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct_softc*, i32)* @nct_read_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct_read_pin(%struct.nct_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nct_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nct_softc* %0, %struct.nct_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @nct_pin_is_input(%struct.nct_softc* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %15 = load i32, i32* @REG_DAT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @nct_get_pin_reg(%struct.nct_softc* %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %90

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 3
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 7
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %26 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @GET_BIT(i32 %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %18
  %36 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %37 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @GET_BIT(i32 %42, i64 %43)
  store i32 %44, i32* %3, align 4
  br label %90

45:                                               ; preds = %18
  %46 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %47 = load i32, i32* @REG_DAT, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @nct_get_pin_reg(%struct.nct_softc* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i64, i64* %6, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 1, %51
  %53 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %54 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %52
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %45
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 1, %65
  %67 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %68 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %66
  store i32 %74, i32* %72, align 4
  br label %88

75:                                               ; preds = %45
  %76 = load i64, i64* %6, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %81 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %79
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %75, %63
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %35, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @nct_pin_is_input(%struct.nct_softc*, i32) #1

declare dso_local i32 @nct_get_pin_reg(%struct.nct_softc*, i32, i32) #1

declare dso_local i32 @GET_BIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
