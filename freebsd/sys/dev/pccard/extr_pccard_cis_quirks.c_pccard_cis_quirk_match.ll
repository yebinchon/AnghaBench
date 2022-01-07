; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis_quirks.c_pccard_cis_quirk_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis_quirks.c_pccard_cis_quirk_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64* }
%struct.pccard_cis_quirk = type { i64, i64, i32* }

@PCMCIA_VENDOR_INVALID = common dso_local global i64 0, align 8
@PCMCIA_PRODUCT_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pccard_softc*, %struct.pccard_cis_quirk*)* @pccard_cis_quirk_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_cis_quirk_match(%struct.pccard_softc* %0, %struct.pccard_cis_quirk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pccard_softc*, align 8
  %5 = alloca %struct.pccard_cis_quirk*, align 8
  store %struct.pccard_softc* %0, %struct.pccard_softc** %4, align 8
  store %struct.pccard_cis_quirk* %1, %struct.pccard_cis_quirk** %5, align 8
  %6 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %7 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pccard_cis_quirk*, %struct.pccard_cis_quirk** %5, align 8
  %11 = getelementptr inbounds %struct.pccard_cis_quirk, %struct.pccard_cis_quirk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %2
  %15 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %16 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pccard_cis_quirk*, %struct.pccard_cis_quirk** %5, align 8
  %20 = getelementptr inbounds %struct.pccard_cis_quirk, %struct.pccard_cis_quirk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %14
  %24 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %25 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCMCIA_VENDOR_INVALID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %32 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCMCIA_PRODUCT_INVALID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %95, label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %39 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCMCIA_VENDOR_INVALID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %37
  %45 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %46 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCMCIA_PRODUCT_INVALID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %44
  %52 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %53 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %51
  %60 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %61 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pccard_cis_quirk*, %struct.pccard_cis_quirk** %5, align 8
  %67 = getelementptr inbounds %struct.pccard_cis_quirk, %struct.pccard_cis_quirk* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcmp(i64 %65, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %59
  %74 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %75 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %73
  %82 = load %struct.pccard_softc*, %struct.pccard_softc** %4, align 8
  %83 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.pccard_cis_quirk*, %struct.pccard_cis_quirk** %5, align 8
  %89 = getelementptr inbounds %struct.pccard_cis_quirk, %struct.pccard_cis_quirk* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @strcmp(i64 %87, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81, %30
  store i32 1, i32* %3, align 4
  br label %97

96:                                               ; preds = %81, %73, %59, %51, %44, %37, %14, %2
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %95
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @strcmp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
