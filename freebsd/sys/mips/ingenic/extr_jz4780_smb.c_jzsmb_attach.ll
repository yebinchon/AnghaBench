; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jzsmb_softc = type { i64, i32, i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"jzsmb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot get bus frequency\0A\00", align 1
@jzsmb_spec = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"cannot add iicbus child device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jzsmb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzsmb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jzsmb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.jzsmb_softc* @device_get_softc(i32 %7)
  store %struct.jzsmb_softc* %8, %struct.jzsmb_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ofw_bus_get_node(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %12 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %19 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %18, i32 0, i32 3
  %20 = call i32 @clk_get_by_ofw_index(i32 %17, i32 0, i32 0, i32** %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %95

26:                                               ; preds = %1
  %27 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @clk_enable(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %95

36:                                               ; preds = %26
  %37 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %38 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %41 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %40, i32 0, i32 0
  %42 = call i32 @clk_get_freq(i32* %39, i64* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %36
  %46 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %47 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %36
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %115

54:                                               ; preds = %45
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @jzsmb_spec, align 4
  %57 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %58 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %57, i32 0, i32 4
  %59 = call i64 @bus_alloc_resources(i32 %55, i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %6, align 4
  br label %95

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %68 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %67, i32 0, i32 1
  %69 = call i64 @OF_getencprop(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %68, i32 4)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %73 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %65
  %77 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %78 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %77, i32 0, i32 1
  store i32 100000, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %3, align 4
  %81 = call i32* @device_add_child(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %82 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %83 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %82, i32 0, i32 5
  store i32* %81, i32** %83, align 8
  %84 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %85 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %6, align 4
  br label %95

92:                                               ; preds = %79
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @bus_generic_attach(i32 %93)
  store i32 0, i32* %2, align 4
  br label %115

95:                                               ; preds = %88, %61, %33, %23
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @jzsmb_spec, align 4
  %98 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %99 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %98, i32 0, i32 4
  %100 = call i32 @bus_release_resources(i32 %96, i32 %97, i32* %99)
  %101 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %102 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %107 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @clk_release(i32* %108)
  br label %110

110:                                              ; preds = %105, %95
  %111 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %4, align 8
  %112 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %111, i32 0, i32 2
  %113 = call i32 @mtx_destroy(i32* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %92, %50
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.jzsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @clk_get_freq(i32*, i64*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
