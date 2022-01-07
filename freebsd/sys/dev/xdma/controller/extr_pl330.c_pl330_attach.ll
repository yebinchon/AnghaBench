; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_softc = type { i32*, i32**, i32 }

@pl330_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PL330_NCHANNELS = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pl330_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pl330_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl330_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pl330_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pl330_softc* @device_get_softc(i32 %9)
  store %struct.pl330_softc* %10, %struct.pl330_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pl330_softc*, %struct.pl330_softc** %4, align 8
  %13 = getelementptr inbounds %struct.pl330_softc, %struct.pl330_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @pl330_spec, align 4
  %16 = load %struct.pl330_softc*, %struct.pl330_softc** %4, align 8
  %17 = getelementptr inbounds %struct.pl330_softc, %struct.pl330_softc* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %82

25:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %71, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PL330_NCHANNELS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load %struct.pl330_softc*, %struct.pl330_softc** %4, align 8
  %32 = getelementptr inbounds %struct.pl330_softc, %struct.pl330_softc* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %33, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %74

41:                                               ; preds = %30
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.pl330_softc*, %struct.pl330_softc** %4, align 8
  %44 = getelementptr inbounds %struct.pl330_softc, %struct.pl330_softc* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @INTR_TYPE_MISC, align 4
  %52 = load i32, i32* @INTR_MPSAFE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @pl330_intr, align 4
  %55 = load %struct.pl330_softc*, %struct.pl330_softc** %4, align 8
  %56 = load %struct.pl330_softc*, %struct.pl330_softc** %4, align 8
  %57 = getelementptr inbounds %struct.pl330_softc, %struct.pl330_softc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bus_setup_intr(i32 %42, i32* %50, i32 %53, i32* null, i32 %54, %struct.pl330_softc* %55, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %41
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  br label %82

70:                                               ; preds = %41
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %26

74:                                               ; preds = %40, %26
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @ofw_bus_get_node(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @OF_xref_from_node(i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @OF_device_register_xref(i32 %79, i32 %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %74, %66, %21
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.pl330_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.pl330_softc*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
