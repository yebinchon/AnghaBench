; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_spi_softc = type { i32, i32, i32*, i32* }
%struct.chipc_caps = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate device registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate flash region\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to add spibus\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"failed to add %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to attach %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @chipc_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_spi_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.chipc_spi_softc*, align 8
  %5 = alloca %struct.chipc_caps*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.chipc_spi_softc* @device_get_softc(i32* %10)
  store %struct.chipc_spi_softc* %11, %struct.chipc_spi_softc** %4, align 8
  %12 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = call i8* @bus_alloc_resource_any(i32* %14, i32 %15, i32* %17, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @device_printf(i32* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %134

31:                                               ; preds = %1
  %32 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  %36 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %36, i32 0, i32 1
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32* %34, i32 %35, i32* %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 (i32*, i8*, ...) @device_printf(i32* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %9, align 4
  br label %100

51:                                               ; preds = %31
  %52 = load i32*, i32** %3, align 8
  %53 = call i32* @device_add_child(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %53, i32** %7, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 (i32*, i8*, ...) @device_printf(i32* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %9, align 4
  br label %100

59:                                               ; preds = %51
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @bus_generic_attach(i32* %60)
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %100

64:                                               ; preds = %59
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @device_get_parent(i32* %65)
  %67 = call %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i32 %66)
  store %struct.chipc_caps* %67, %struct.chipc_caps** %5, align 8
  %68 = load %struct.chipc_caps*, %struct.chipc_caps** %5, align 8
  %69 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @chipc_sflash_device_name(i32 %70)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %64
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32* @BUS_ADD_CHILD(i32* %75, i32 0, i8* %76, i32 -1)
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32*, i32** %3, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (i32*, i8*, ...) @device_printf(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %9, align 4
  br label %100

85:                                               ; preds = %74
  %86 = load %struct.chipc_caps*, %struct.chipc_caps** %5, align 8
  %87 = getelementptr inbounds %struct.chipc_caps, %struct.chipc_caps* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @chipc_register_slicer(i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @device_probe_and_attach(i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32*, i32** %3, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32*, i8*, ...) @device_printf(i32* %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %95, i32 %96)
  br label %100

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %64
  store i32 0, i32* %2, align 4
  br label %134

100:                                              ; preds = %93, %80, %63, %55, %47
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @device_delete_children(i32* %101)
  %103 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %104 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* @SYS_RES_MEMORY, align 4
  %110 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %111 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %114 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @bus_release_resource(i32* %108, i32 %109, i32 %112, i32* %115)
  br label %117

117:                                              ; preds = %107, %100
  %118 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %119 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* @SYS_RES_MEMORY, align 4
  %125 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %126 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %4, align 8
  %129 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @bus_release_resource(i32* %123, i32 %124, i32 %127, i32* %130)
  br label %132

132:                                              ; preds = %122, %117
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %99, %27
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.chipc_spi_softc* @device_get_softc(i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local %struct.chipc_caps* @BHND_CHIPC_GET_CAPS(i32) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i8* @chipc_sflash_device_name(i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @chipc_register_slicer(i32) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @device_delete_children(i32*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
