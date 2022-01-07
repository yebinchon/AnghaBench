; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_obio.c_obio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_obio.c_obio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obio_softc = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@mips_bus_space_generic = common dso_local global i32 0, align 4
@MALTA_UART0ADR = common dso_local global i32 0, align 4
@MALTA_PCIMEM3_SIZE = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"OBIO I/O\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"obio_attach: failed to set up I/O rman\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"OBIO IRQ\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"obio_attach: failed to set up IRQ rman\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uart\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obio_attach(i32 %0) #0 {
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
  %9 = load i32, i32* @MALTA_UART0ADR, align 4
  %10 = call i32 @MIPS_PHYS_TO_KSEG1(i32 %9)
  %11 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %12 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @MALTA_PCIMEM3_SIZE, align 4
  %14 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %15 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i8*, i8** @RMAN_ARRAY, align 8
  %17 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %18 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %21 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %24 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %23, i32 0, i32 3
  %25 = call i64 @rman_init(%struct.TYPE_3__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %29 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %28, i32 0, i32 3
  %30 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %31 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %37 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = call i64 @rman_manage_region(%struct.TYPE_3__* %29, i32 %32, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27, %1
  %43 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i8*, i8** @RMAN_ARRAY, align 8
  %46 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %47 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %50 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %53 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %52, i32 0, i32 2
  %54 = call i64 @rman_init(%struct.TYPE_3__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %44
  %57 = load %struct.obio_softc*, %struct.obio_softc** %3, align 8
  %58 = getelementptr inbounds %struct.obio_softc, %struct.obio_softc* %57, i32 0, i32 2
  %59 = call i64 @rman_manage_region(%struct.TYPE_3__* %58, i32 4, i32 4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %44
  %62 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @device_add_child(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @bus_generic_probe(i32 %66)
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @bus_generic_attach(i32 %68)
  ret i32 0
}

declare dso_local %struct.obio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MIPS_PHYS_TO_KSEG1(i32) #1

declare dso_local i64 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_3__*, i32, i32) #1

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
