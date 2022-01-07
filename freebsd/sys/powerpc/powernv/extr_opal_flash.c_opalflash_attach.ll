; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opalflash_softc = type { i32, i32, i32, %struct.TYPE_3__*, i32, i8* }
%struct.TYPE_3__ = type { i8*, i32*, i8*, i32, i32, i8*, i32, %struct.opalflash_softc*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ibm,opal-id\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ibm,flash-block-size\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot determine flash block size.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"no-erase\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unable to get flash size.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"opalflash\00", align 1
@opalflash_open = common dso_local global i32 0, align 4
@opalflash_close = common dso_local global i32 0, align 4
@opalflash_strategy = common dso_local global i32 0, align 4
@opalflash_ioctl = common dso_local global i32 0, align 4
@opalflash_getattr = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i32 0, align 4
@FLASH_BLOCKSIZE = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@opalflash_task = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"task: OPAL Flash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @opalflash_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opalflash_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.opalflash_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*], align 16
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.opalflash_softc* @device_get_softc(i32 %9)
  store %struct.opalflash_softc* %10, %struct.opalflash_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %13 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @OF_getencprop(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, i32 8)
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %20 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @OF_getencprop(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %6, i32 8)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %129

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @OF_hasprop(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %34 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %37 = call i32 @OPALFLASH_LOCK_INIT(%struct.opalflash_softc* %36)
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %40 = call i64 @OF_getencprop(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %39, i32 16)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %129

46:                                               ; preds = %35
  %47 = call %struct.TYPE_3__* (...) @disk_alloc()
  %48 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %49 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %48, i32 0, i32 3
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %49, align 8
  %50 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %51 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %53, align 8
  %54 = load i32, i32* @opalflash_open, align 4
  %55 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %56 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 12
  store i32 %54, i32* %58, align 8
  %59 = load i32, i32* @opalflash_close, align 4
  %60 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %61 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 11
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @opalflash_strategy, align 4
  %65 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %66 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 10
  store i32 %64, i32* %68, align 8
  %69 = load i32, i32* @opalflash_ioctl, align 4
  %70 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %71 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 9
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @opalflash_getattr, align 4
  %75 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %76 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  store i32 %74, i32* %78, align 8
  %79 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %80 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %81 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 7
  store %struct.opalflash_softc* %79, %struct.opalflash_softc** %83, align 8
  %84 = load i32, i32* @DFLTPHYS, align 4
  %85 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %86 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  store i32 %84, i32* %88, align 8
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %92 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  store i8* %90, i8** %94, align 8
  %95 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %96 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @device_get_unit(i32 %97)
  %99 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %100 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @FLASH_BLOCKSIZE, align 4
  %104 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %105 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %104, i32 0, i32 3
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32 %103, i32* %107, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %110 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 8
  %113 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %114 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  %117 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %118 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* @DISK_VERSION, align 4
  %121 = call i32 @disk_create(%struct.TYPE_3__* %119, i32 %120)
  %122 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %123 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %122, i32 0, i32 2
  %124 = call i32 @bioq_init(i32* %123)
  %125 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %126 = load %struct.opalflash_softc*, %struct.opalflash_softc** %4, align 8
  %127 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %126, i32 0, i32 1
  %128 = call i32 @kproc_create(i32* @opalflash_task, %struct.opalflash_softc* %125, i32* %127, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %46, %42, %24
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.opalflash_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OPALFLASH_LOCK_INIT(%struct.opalflash_softc*) #1

declare dso_local %struct.TYPE_3__* @disk_alloc(...) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @disk_create(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @kproc_create(i32*, %struct.opalflash_softc*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
