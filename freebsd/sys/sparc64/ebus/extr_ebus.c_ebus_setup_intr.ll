; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.resource = type { i32 }
%struct.ebus_softc = type { i32, i64 }

@EBUS_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid interrupt vector 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@intr_vectors = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"invalid interrupt controller for vector 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @ebus_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebus_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.ebus_softc*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.ebus_softc* @device_get_softc(i32 %20)
  store %struct.ebus_softc* %21, %struct.ebus_softc** %18, align 8
  %22 = load %struct.ebus_softc*, %struct.ebus_softc** %18, align 8
  %23 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EBUS_PCI, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %8
  %29 = load %struct.resource*, %struct.resource** %12, align 8
  %30 = call i64 @rman_get_start(%struct.resource* %29)
  store i64 %30, i64* %19, align 8
  %31 = load i64, i64* %19, align 8
  %32 = call i64 @INTIGN(i64 %31)
  %33 = load %struct.ebus_softc*, %struct.ebus_softc** %18, align 8
  %34 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = load i64, i64* %19, align 8
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %9, align 4
  br label %65

42:                                               ; preds = %28
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %44 = load i64, i64* %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %9, align 4
  br label %65

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.resource*, %struct.resource** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i8**, i8*** %17, align 8
  %64 = call i32 @bus_generic_setup_intr(i32 %56, i32 %57, %struct.resource* %58, i32 %59, i32* %60, i32* %61, i8* %62, i8** %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %55, %49, %37
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.ebus_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @INTIGN(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @bus_generic_setup_intr(i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
