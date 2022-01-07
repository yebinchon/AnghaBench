; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicoc_softc = type { i32*, i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"iicoc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not allocate bus resource.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not allocate iicbus instance.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iicoc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicoc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iicoc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.iicoc_softc* @device_get_softc(i32 %6)
  store %struct.iicoc_softc* %7, %struct.iicoc_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_unit(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %14 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %13, i32 0, i32 3
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %18 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %22 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %21, i32 0, i32 2
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = call i32* @bus_alloc_resource_anywhere(i32 %19, i32 %20, i64* %22, i32 256, i32 %23)
  %25 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %26 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %28 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @iicoc_init(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32* @device_add_child(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %39 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %40 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.iicoc_softc*, %struct.iicoc_softc** %5, align 8
  %42 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

48:                                               ; preds = %34
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @bus_generic_attach(i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %45, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.iicoc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iicoc_init(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
