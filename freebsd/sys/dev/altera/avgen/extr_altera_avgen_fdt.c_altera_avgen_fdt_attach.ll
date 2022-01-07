; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen_fdt.c_altera_avgen_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen_fdt.c_altera_avgen_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_avgen_softc = type { i32, i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"sri-cambridge,width\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"sri-cambridge,fileio\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sri-cambridge,geomio\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sri-cambridge,mmapio\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"sri-cambridge,devname\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"sri-cambridge,devunit\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @altera_avgen_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_avgen_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.altera_avgen_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.altera_avgen_softc* @device_get_softc(i32 %13)
  store %struct.altera_avgen_softc* %14, %struct.altera_avgen_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %17 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_unit(i32 %18)
  %20 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %21 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %11, align 4
  %22 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %23 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ofw_bus_get_node(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @OF_getprop(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %10, i32 8)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i8*, i8** %10, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %33 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %29, %1
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @OF_getprop_alloc(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @OF_getprop_alloc(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @OF_getprop_alloc(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @OF_getprop_alloc(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @OF_getprop(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %10, i32 8)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i8*, i8** %10, align 8
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %34
  %50 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %51 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  %54 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %55 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %54, i32 0, i32 2
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = call i32* @bus_alloc_resource_any(i32 %52, i32 %53, i64* %55, i32 %56)
  %58 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %59 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %61 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %2, align 4
  br label %114

68:                                               ; preds = %49
  %69 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @altera_avgen_attach(%struct.altera_avgen_softc* %69, i8* %70, i8* %71, i8* %72, i8* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SYS_RES_MEMORY, align 4
  %81 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %82 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %4, align 8
  %85 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bus_release_resource(i32 %79, i32 %80, i64 %83, i32* %86)
  br label %88

88:                                               ; preds = %78, %68
  %89 = load i8*, i8** %5, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @OF_prop_free(i8* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @OF_prop_free(i8* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @OF_prop_free(i8* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @OF_prop_free(i8* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %64
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.altera_avgen_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @altera_avgen_attach(%struct.altera_avgen_softc*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
