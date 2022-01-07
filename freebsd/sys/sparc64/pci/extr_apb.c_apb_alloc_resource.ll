; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_apb.c_apb_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_apb.c_apb_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.apb_softc = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"can't decode default resource id %d for %s, bypassing\0A\00", align 1
@APB_IO_SCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"device %s requested unsupported I/O range 0x%jx-0x%jx\0A\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"device %s requested decoded I/O range 0x%jx-0x%jx\0A\00", align 1
@APB_MEM_SCALE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"device %s requested unsupported memory range 0x%jx-0x%jx\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"device %s requested decoded memory range 0x%jx-0x%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @apb_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @apb_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.apb_softc*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.apb_softc* @device_get_softc(i32 %19)
  store %struct.apb_softc* %20, %struct.apb_softc** %18, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %8
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @device_get_nameunit(i32 %29)
  %31 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  br label %97

32:                                               ; preds = %8
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %96 [
    i32 129, label %34
    i32 128, label %65
  ]

34:                                               ; preds = %32
  %35 = load %struct.apb_softc*, %struct.apb_softc** %18, align 8
  %36 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @APB_IO_SCALE, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @apb_checkrange(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @device_get_nameunit(i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %107

50:                                               ; preds = %34
  %51 = load i32, i32* @bootverbose, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.apb_softc*, %struct.apb_softc** %18, align 8
  %55 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @device_get_nameunit(i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %53, %50
  br label %96

65:                                               ; preds = %32
  %66 = load %struct.apb_softc*, %struct.apb_softc** %18, align 8
  %67 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @APB_MEM_SCALE, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @apb_checkrange(i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @device_get_nameunit(i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %107

81:                                               ; preds = %65
  %82 = load i32, i32* @bootverbose, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.apb_softc*, %struct.apb_softc** %18, align 8
  %86 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @device_get_nameunit(i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %84, %81
  br label %96

96:                                               ; preds = %32, %95, %64
  br label %97

97:                                               ; preds = %96, %25
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = call %struct.resource* @bus_generic_alloc_resource(i32 %98, i32 %99, i32 %100, i32* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store %struct.resource* %106, %struct.resource** %9, align 8
  br label %107

107:                                              ; preds = %97, %74, %43
  %108 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %108
}

declare dso_local %struct.apb_softc* @device_get_softc(i32) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @apb_checkrange(i32, i32, i32, i32) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
