; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_register_isrcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_register_isrcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mips_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"error registering IRQ %zu: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_mips_softc*)* @bcm_mips_register_isrcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips_register_isrcs(%struct.bcm_mips_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_mips_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bcm_mips_softc* %0, %struct.bcm_mips_softc** %3, align 8
  %9 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %10 = call i64 @bcm_mips_pic_xref(%struct.bcm_mips_softc* %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @device_get_nameunit(i32 %13)
  store i8* %14, i8** %4, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %82, %1
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i64 @nitems(%struct.TYPE_2__* %19)
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %15
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %23, i64* %29, align 8
  %30 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %43 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @intr_isrc_register(i32* %47, i32 %50, i64 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %52, i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %22
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = call i32 @intr_isrc_deregister(i32* %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %3, align 8
  %75 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %22
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %15

85:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @bcm_mips_pic_xref(%struct.bcm_mips_softc*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i64 @nitems(%struct.TYPE_2__*) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i64, i8*, i8*, i64) #1

declare dso_local i32 @intr_isrc_deregister(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
