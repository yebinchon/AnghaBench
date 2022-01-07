; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_obio.c_obio_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_obio.c_obio_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.rman = type { i32 }
%struct.obio_softc = type { %struct.rman, %struct.rman }

@OCTEON_IRQ_UART0 = common dso_local global i32 0, align 4
@OCTEON_IRQ_UART1 = common dso_local global i32 0, align 4
@octeon_uart_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @obio_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @obio_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource*, align 8
  %19 = alloca %struct.rman*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.obio_softc*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* null, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.obio_softc* @device_get_softc(i32 %23)
  store %struct.obio_softc* %24, %struct.obio_softc** %22, align 8
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %45 [
    i32 129, label %26
    i32 128, label %37
    i32 130, label %38
  ]

26:                                               ; preds = %8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  switch i32 %28, label %33 [
    i32 0, label %29
    i32 1, label %31
  ]

29:                                               ; preds = %26
  %30 = load i32, i32* @OCTEON_IRQ_UART0, align 4
  store i32 %30, i32* %15, align 4
  store i32 %30, i32* %14, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @OCTEON_IRQ_UART1, align 4
  store i32 %32, i32* %15, align 4
  store i32 %32, i32* %14, align 4
  br label %34

33:                                               ; preds = %26
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %74

34:                                               ; preds = %31, %29
  %35 = load %struct.obio_softc*, %struct.obio_softc** %22, align 8
  %36 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %35, i32 0, i32 1
  store %struct.rman* %36, %struct.rman** %19, align 8
  br label %46

37:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %74

38:                                               ; preds = %8
  %39 = load %struct.obio_softc*, %struct.obio_softc** %22, align 8
  %40 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %39, i32 0, i32 0
  store %struct.rman* %40, %struct.rman** %19, align 8
  store i32* @octeon_uart_tag, i32** %20, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = call i32 @CVMX_MIO_UARTX_RBR(i32 %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  store i32 %44, i32* %14, align 4
  br label %46

45:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %74

46:                                               ; preds = %38, %34
  %47 = load %struct.rman*, %struct.rman** %19, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.resource* @rman_reserve_resource(%struct.rman* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store %struct.resource* %53, %struct.resource** %18, align 8
  %54 = load %struct.resource*, %struct.resource** %18, align 8
  %55 = icmp eq %struct.resource* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %74

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 129
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %61, %struct.resource** %9, align 8
  br label %74

62:                                               ; preds = %57
  %63 = load %struct.resource*, %struct.resource** %18, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rman_set_rid(%struct.resource* %63, i32 %65)
  %67 = load %struct.resource*, %struct.resource** %18, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = call i32 @rman_set_bustag(%struct.resource* %67, i32* %68)
  %70 = load %struct.resource*, %struct.resource** %18, align 8
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @rman_set_bushandle(%struct.resource* %70, i32 %71)
  %73 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %73, %struct.resource** %9, align 8
  br label %74

74:                                               ; preds = %62, %60, %56, %45, %37, %33
  %75 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %75
}

declare dso_local %struct.obio_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @CVMX_MIO_UARTX_RBR(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
