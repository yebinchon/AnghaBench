; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i64 }
%struct.resource = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"could not allocate I/O resource for probe\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BSR = common dso_local global i32 0, align 4
@BSR_IDENTIFY_MASK = common dso_local global i64 0, align 8
@BSR_IDENTIFY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"identification value not in BSR\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"identification value not in BSR after write\0A\00", align 1
@REV = common dso_local global i32 0, align 4
@REV_CHIP_MASK = common dso_local global i64 0, align 8
@REV_CHIP_SHIFT = common dso_local global i64 0, align 8
@smc_chip_ids = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Unknown chip revision: %d\0A\00", align 1
@BAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.smc_softc*, align 8
  %9 = alloca %struct.resource*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.smc_softc* @device_get_softc(i32 %10)
  store %struct.smc_softc* %11, %struct.smc_softc** %8, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.smc_softc*, %struct.smc_softc** %8, align 8
  %14 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %20, i32 %21, i32* %4, i32 16, i32 %22)
  store %struct.resource* %23, %struct.resource** %9, align 8
  %24 = load %struct.resource*, %struct.resource** %9, align 8
  %25 = icmp eq %struct.resource* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %111

34:                                               ; preds = %19
  %35 = load %struct.resource*, %struct.resource** %9, align 8
  %36 = load i32, i32* @BSR, align 4
  %37 = call i64 @bus_read_2(%struct.resource* %35, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @BSR_IDENTIFY_MASK, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* @BSR_IDENTIFY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load i64, i64* @bootverbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %6, align 4
  br label %104

51:                                               ; preds = %34
  %52 = load %struct.resource*, %struct.resource** %9, align 8
  %53 = load i32, i32* @BSR, align 4
  %54 = call i32 @bus_write_2(%struct.resource* %52, i32 %53, i32 0)
  %55 = load %struct.resource*, %struct.resource** %9, align 8
  %56 = load i32, i32* @BSR, align 4
  %57 = call i64 @bus_read_2(%struct.resource* %55, i32 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @BSR_IDENTIFY_MASK, align 8
  %60 = and i64 %58, %59
  %61 = load i64, i64* @BSR_IDENTIFY, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load i64, i64* @bootverbose, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %6, align 4
  br label %104

71:                                               ; preds = %51
  %72 = load %struct.resource*, %struct.resource** %9, align 8
  %73 = load i32, i32* @BSR, align 4
  %74 = call i32 @bus_write_2(%struct.resource* %72, i32 %73, i32 3)
  %75 = load %struct.resource*, %struct.resource** %9, align 8
  %76 = load i32, i32* @REV, align 4
  %77 = call i64 @bus_read_2(%struct.resource* %75, i32 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @REV_CHIP_MASK, align 8
  %80 = and i64 %78, %79
  %81 = load i64, i64* @REV_CHIP_SHIFT, align 8
  %82 = lshr i64 %80, %81
  store i64 %82, i64* %7, align 8
  %83 = load i32**, i32*** @smc_chip_ids, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %71
  %89 = load i64, i64* @bootverbose, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = load i64, i64* %7, align 8
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %6, align 4
  br label %104

97:                                               ; preds = %71
  %98 = load i32, i32* %3, align 4
  %99 = load i32**, i32*** @smc_chip_ids, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds i32*, i32** %99, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @device_set_desc(i32 %98, i32* %102)
  br label %104

104:                                              ; preds = %97, %95, %69, %49
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.resource*, %struct.resource** %9, align 8
  %109 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 %107, %struct.resource* %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %104, %32
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.smc_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bus_read_2(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_2(%struct.resource*, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
