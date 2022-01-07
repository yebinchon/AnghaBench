; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_write_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_write_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [27 x i8] c"attempt to write input pin\00", align 1
@REG_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct_softc*, i32, i32)* @nct_write_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct_write_pin(%struct.nct_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nct_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nct_softc* %0, %struct.nct_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @nct_pin_is_input(%struct.nct_softc* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 3
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 7
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %23 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @GET_BIT(i32 %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %34 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @GET_BIT(i32 %39, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %96

45:                                               ; preds = %32, %3
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %50 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %48
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %45
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %64 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %62
  store i32 %70, i32* %68, align 4
  br label %84

71:                                               ; preds = %45
  %72 = load i64, i64* %7, align 8
  %73 = trunc i64 %72 to i32
  %74 = shl i32 1, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %77 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %75
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %71, %59
  %85 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %86 = load i32, i32* @REG_DAT, align 4
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.nct_softc*, %struct.nct_softc** %4, align 8
  %89 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @nct_write_reg(%struct.nct_softc* %85, i32 %86, i64 %87, i32 %94)
  br label %96

96:                                               ; preds = %84, %44
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @nct_pin_is_input(%struct.nct_softc*, i32) #1

declare dso_local i32 @GET_BIT(i32, i64) #1

declare dso_local i32 @nct_write_reg(%struct.nct_softc*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
