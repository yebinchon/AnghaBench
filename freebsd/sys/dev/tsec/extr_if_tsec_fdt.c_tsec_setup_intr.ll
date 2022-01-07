; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate %s IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to set up %s IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not release %s IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsec_softc*, %struct.resource**, i8**, i32*, i32, i8*)* @tsec_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_setup_intr(%struct.tsec_softc* %0, %struct.resource** %1, i8** %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsec_softc*, align 8
  %9 = alloca %struct.resource**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %8, align 8
  store %struct.resource** %1, %struct.resource*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.tsec_softc*, %struct.tsec_softc** %8, align 8
  %16 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SYS_RES_IRQ, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call %struct.resource* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %19, i32 %20)
  %22 = load %struct.resource**, %struct.resource*** %9, align 8
  store %struct.resource* %21, %struct.resource** %22, align 8
  %23 = load %struct.resource**, %struct.resource*** %9, align 8
  %24 = load %struct.resource*, %struct.resource** %23, align 8
  %25 = icmp eq %struct.resource* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load %struct.tsec_softc*, %struct.tsec_softc** %8, align 8
  %28 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %7, align 4
  br label %74

33:                                               ; preds = %6
  %34 = load %struct.tsec_softc*, %struct.tsec_softc** %8, align 8
  %35 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.resource**, %struct.resource*** %9, align 8
  %38 = load %struct.resource*, %struct.resource** %37, align 8
  %39 = load i32, i32* @INTR_TYPE_NET, align 4
  %40 = load i32, i32* @INTR_MPSAFE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.tsec_softc*, %struct.tsec_softc** %8, align 8
  %44 = load i8**, i8*** %10, align 8
  %45 = call i32 @bus_setup_intr(i32 %36, %struct.resource* %38, i32 %41, i32* null, i32 %42, %struct.tsec_softc* %43, i8** %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %33
  %49 = load %struct.tsec_softc*, %struct.tsec_softc** %8, align 8
  %50 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load %struct.tsec_softc*, %struct.tsec_softc** %8, align 8
  %55 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SYS_RES_IRQ, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.resource**, %struct.resource*** %9, align 8
  %61 = load %struct.resource*, %struct.resource** %60, align 8
  %62 = call i64 @bus_release_resource(i32 %56, i32 %57, i32 %59, %struct.resource* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %48
  %65 = load %struct.tsec_softc*, %struct.tsec_softc** %8, align 8
  %66 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %64, %48
  %71 = load %struct.resource**, %struct.resource*** %9, align 8
  store %struct.resource* null, %struct.resource** %71, align 8
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %7, align 4
  br label %74

73:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %70, %26
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, %struct.tsec_softc*, i8**) #1

declare dso_local i64 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
