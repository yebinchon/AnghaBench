; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_cpu.c_ofw_cpu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_cpu.c_ofw_cpu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_cpulist_softc = type { i32 }
%struct.ofw_cpu_softc = type { i32*, i32, i32, i32* }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Too many address cells\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"missing 'reg' property\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Malformed reg property\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid reg size %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"missing 'clock-frequency' property\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Nominal frequency %dMhz\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ofw_cpu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_cpu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofw_cpulist_softc*, align 8
  %5 = alloca %struct.ofw_cpu_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ofw_cpu_softc*
  store %struct.ofw_cpu_softc* %11, %struct.ofw_cpu_softc** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ofw_cpulist_softc*
  store %struct.ofw_cpulist_softc* %15, %struct.ofw_cpulist_softc** %4, align 8
  %16 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @nitems(i32* %18)
  %20 = load %struct.ofw_cpulist_softc*, %struct.ofw_cpulist_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ofw_cpulist_softc, %struct.ofw_cpulist_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %2, align 4
  br label %119

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ofw_bus_get_node(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %39 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @OF_getencprop(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %40, i32 8)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %78

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = srem i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* @bootverbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  br label %77

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 4
  %61 = load %struct.ofw_cpulist_softc*, %struct.ofw_cpulist_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ofw_cpulist_softc, %struct.ofw_cpulist_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i64, i64* @bootverbose, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %76

73:                                               ; preds = %58
  %74 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %44
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @device_get_unit(i32 %79)
  %81 = call i8* @pcpu_find(i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %84 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @OF_getencprop(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %7, i32 4)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load i64, i64* @bootverbose, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  br label %100

95:                                               ; preds = %78
  %96 = load i32, i32* %7, align 4
  %97 = sdiv i32 %96, 1000000
  %98 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %99 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %94
  %101 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %102 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i64, i64* @bootverbose, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.ofw_cpu_softc*, %struct.ofw_cpu_softc** %5, align 8
  %111 = getelementptr inbounds %struct.ofw_cpu_softc, %struct.ofw_cpu_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %105, %100
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @bus_generic_probe(i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @bus_generic_attach(i32 %117)
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %30
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i8* @pcpu_find(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
