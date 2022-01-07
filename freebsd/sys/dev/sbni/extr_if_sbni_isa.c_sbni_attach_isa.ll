; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_isa.c_sbni_attach_isa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_isa.c_sbni_attach_isa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sbni_flags = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"irq conflict!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot initialize driver\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sbni_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"bus_setup_intr\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbni_attach_isa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_attach_isa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbni_softc*, align 8
  %5 = alloca %struct.sbni_flags, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.sbni_softc* @device_get_softc(i32 %7)
  store %struct.sbni_softc* %8, %struct.sbni_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %11 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_IRQ, align 4
  %14 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %15 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %14, i32 0, i32 3
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %19 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %21 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %28 = call i32 @sbni_release_resources(%struct.sbni_softc* %27)
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %2, align 4
  br label %79

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_flags(i32 %31)
  %33 = bitcast %struct.sbni_flags* %5 to i32*
  store i32 %32, i32* %33, align 4
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_get_unit(i32 %35)
  %37 = mul nsw i32 %36, 2
  %38 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sbni_attach(%struct.sbni_softc* %34, i32 %37, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %47 = call i32 @sbni_release_resources(%struct.sbni_softc* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %79

49:                                               ; preds = %30
  %50 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %51 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %57 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @INTR_TYPE_NET, align 4
  %60 = load i32, i32* @INTR_MPSAFE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @sbni_intr, align 4
  %63 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %64 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %65 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %64, i32 0, i32 0
  %66 = call i32 @bus_setup_intr(i32 %55, i32* %58, i32 %61, i32* null, i32 %62, %struct.sbni_softc* %63, i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %54
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %73 = call i32 @sbni_detach(%struct.sbni_softc* %72)
  %74 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %75 = call i32 @sbni_release_resources(%struct.sbni_softc* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77, %49
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %69, %43, %24
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.sbni_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @sbni_release_resources(%struct.sbni_softc*) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @sbni_attach(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.sbni_softc*, i32*) #1

declare dso_local i32 @sbni_detach(%struct.sbni_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
