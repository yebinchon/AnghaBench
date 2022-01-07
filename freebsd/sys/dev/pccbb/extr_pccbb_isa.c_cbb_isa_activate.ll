; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_isa.c_cbb_isa_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_isa.c_cbb_isa_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { %struct.resource*, i32, i32, %struct.resource* }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@isa_intr_mask = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Cannot allocate I/O\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cbb_isa_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_isa_activate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbb_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cbb_softc* @device_get_softc(i32 %8)
  store %struct.cbb_softc* %9, %struct.cbb_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_IRQ, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call %struct.resource* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %6, i32 %12)
  store %struct.resource* %13, %struct.resource** %5, align 8
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = icmp eq %struct.resource* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = icmp eq %struct.resource* %21, null
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %42

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @isa_intr_mask, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %39

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_IRQ, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call %struct.resource* @bus_alloc_resource(i32 %33, i32 %34, i32* %6, i32 %35, i32 %36, i32 1, i32 %37)
  store %struct.resource* %38, %struct.resource** %5, align 8
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %17

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = icmp eq %struct.resource* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %82

48:                                               ; preds = %43
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %51 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %50, i32 0, i32 3
  store %struct.resource* %49, %struct.resource** %51, align 8
  store i32 0, i32* %6, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IOPORT, align 4
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = call %struct.resource* @bus_alloc_resource_any(i32 %52, i32 %53, i32* %6, i32 %54)
  store %struct.resource* %55, %struct.resource** %5, align 8
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = icmp eq %struct.resource* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %62 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %61, i32 0, i32 3
  %63 = load %struct.resource*, %struct.resource** %62, align 8
  %64 = call i32 @bus_release_resource(i32 %59, i32 %60, i32 0, %struct.resource* %63)
  %65 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %65, i32 0, i32 3
  store %struct.resource* null, %struct.resource** %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %2, align 4
  br label %82

70:                                               ; preds = %48
  %71 = load %struct.resource*, %struct.resource** %5, align 8
  %72 = call i32 @rman_get_bustag(%struct.resource* %71)
  %73 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %74 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.resource*, %struct.resource** %5, align 8
  %76 = call i32 @rman_get_bushandle(%struct.resource* %75)
  %77 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %78 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.resource*, %struct.resource** %5, align 8
  %80 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %81 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %80, i32 0, i32 0
  store %struct.resource* %79, %struct.resource** %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %70, %58, %46
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
