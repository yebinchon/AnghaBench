; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_nemc.c_jz4780_nemc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_nemc.c_jz4780_nemc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_nemc_softc = type { i64, i32, i32, i32, i32 }

@jz4780_nemc_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not lookup device clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"could not enable device clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"could not determine clock speed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_nemc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_nemc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_nemc_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.jz4780_nemc_softc* @device_get_softc(i32 %7)
  store %struct.jz4780_nemc_softc* %8, %struct.jz4780_nemc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @jz4780_nemc_spec, align 4
  %14 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %88

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @ofw_bus_get_node(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @simplebus_init(i32 %26, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %30, i32 0, i32 2
  %32 = call i64 @jz4780_nemc_fill_ranges(i64 %29, i32* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %84

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %37, i32 0, i32 1
  %39 = call i64 @clk_get_by_ofw_index(i32 %36, i32 0, i32 0, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %84

44:                                               ; preds = %35
  %45 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %4, align 8
  %46 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @clk_enable(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %84

53:                                               ; preds = %44
  %54 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %4, align 8
  %55 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @clk_get_freq(i32 %56, i64* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %84

62:                                               ; preds = %53
  %63 = load i64, i64* %6, align 8
  %64 = udiv i64 1000000000000, %63
  %65 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %4, align 8
  %66 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @bus_generic_probe(i32 %67)
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @OF_child(i64 %69)
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %78, %62
  %72 = load i64, i64* %5, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @simplebus_add_device(i32 %75, i64 %76, i32 0, i32* null, i32 -1, i32* null)
  br label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @OF_peer(i64 %79)
  store i64 %80, i64* %5, align 8
  br label %71

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @bus_generic_attach(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %59, %50, %41, %34
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @jz4780_nemc_detach(i32 %85)
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %81, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.jz4780_nemc_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @simplebus_init(i32, i64) #1

declare dso_local i64 @jz4780_nemc_fill_ranges(i64, i32*) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i64 @clk_enable(i32) #1

declare dso_local i64 @clk_get_freq(i32, i64*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @simplebus_add_device(i32, i64, i32, i32*, i32, i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @jz4780_nemc_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
