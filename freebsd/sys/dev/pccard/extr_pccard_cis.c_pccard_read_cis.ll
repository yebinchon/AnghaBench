; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis.c_pccard_read_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_cis.c_pccard_read_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i32** }
%struct.cis_state = type { %struct.TYPE_2__*, i32* }

@PCMCIA_VENDOR_INVALID = common dso_local global i32 0, align 4
@PCMCIA_PRODUCT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pccard\00", align 1
@hz = common dso_local global i32 0, align 4
@pccard_parse_cis_tuple = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pccard_read_cis(%struct.pccard_softc* %0) #0 {
  %2 = alloca %struct.pccard_softc*, align 8
  %3 = alloca %struct.cis_state, align 8
  store %struct.pccard_softc* %0, %struct.pccard_softc** %2, align 8
  %4 = call i32 @bzero(%struct.cis_state* %3, i32 16)
  %5 = load %struct.pccard_softc*, %struct.pccard_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %7, align 8
  %8 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 6
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 2
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 3
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @PCMCIA_VENDOR_INVALID, align 4
  %38 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @PCMCIA_PRODUCT_INVALID, align 4
  %42 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = call i32 @STAILQ_INIT(i32* %47)
  %49 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @hz, align 4
  %51 = sdiv i32 %50, 10
  %52 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.pccard_softc*, %struct.pccard_softc** %2, align 8
  %54 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_get_parent(i32 %55)
  %57 = load %struct.pccard_softc*, %struct.pccard_softc** %2, align 8
  %58 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @pccard_parse_cis_tuple, align 4
  %61 = call i32 @pccard_scan_cis(i32 %56, i32 %59, i32 %60, %struct.cis_state* %3)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %1
  %64 = getelementptr inbounds %struct.cis_state, %struct.cis_state* %3, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %63, %1
  ret void
}

declare dso_local i32 @bzero(%struct.cis_state*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @pccard_scan_cis(i32, i32, i32, %struct.cis_state*) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
