; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_obio.c_obio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_obio.c_obio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obio_softc = type { i32, %struct.TYPE_3__, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@mips_bus_space_generic = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"OBIO I/O\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"obio_attach: failed to set up I/O rman\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"OBIO IRQ\00", align 1
@OCTEON_IRQ_UART0 = common dso_local global i64 0, align 8
@OCTEON_IRQ_UART1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"obio_attach: failed to set up IRQ rman\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @obio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.obio_softc* @device_get_softc(i32 %4)
  store %struct.obio_softc* %5, %struct.obio_softc** %3, align 8
  %6 = load i32, i32* @mips_bus_space_generic, align 4
  %7 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  %9 = call i64 @CVMX_MIO_UARTX_RBR(i32 0)
  %10 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %11 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  %12 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %13 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %12, i32 0, i32 0
  store i32 65536, i32* %13, align 8
  %14 = load i8*, i8** @RMAN_ARRAY, align 8
  %15 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %16 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %22 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %21, i32 0, i32 3
  %23 = call i64 @rman_init(%struct.TYPE_3__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %1
  %26 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %26, i32 0, i32 3
  %28 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %29 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %32 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %35 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = call i64 @rman_manage_region(%struct.TYPE_3__* %27, i64 %30, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25, %1
  %42 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %25
  %44 = load i8*, i8** @RMAN_ARRAY, align 8
  %45 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %46 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %49 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %52 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %51, i32 0, i32 1
  %53 = call i64 @rman_init(%struct.TYPE_3__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %43
  %56 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %57 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %56, i32 0, i32 1
  %58 = load i64, i64* @OCTEON_IRQ_UART0, align 8
  %59 = load i64, i64* @OCTEON_IRQ_UART1, align 8
  %60 = call i64 @rman_manage_region(%struct.TYPE_3__* %57, i64 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55, %43
  %63 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %55
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @device_add_child(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @device_add_child(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @bus_generic_probe(i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @bus_generic_attach(i32 %71)
  ret i32 0
}

declare dso_local %struct.obio_softc* @device_get_softc(i32) #1

declare dso_local i64 @CVMX_MIO_UARTX_RBR(i32) #1

declare dso_local i64 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
