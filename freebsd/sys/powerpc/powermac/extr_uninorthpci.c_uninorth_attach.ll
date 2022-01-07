; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uninorth_softc = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"u3-agp\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"u4-pcie\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"skipslot\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"uninorth pcicfg\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uninorth_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uninorth_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.uninorth_softc* @device_get_softc(i32 %14)
  store %struct.uninorth_softc* %15, %struct.uninorth_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @device_get_name(i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_unit(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %22 = call i32 @OF_getprop(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %21, i32 12)
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %90

26:                                               ; preds = %1
  %27 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %28 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @ofw_bus_get_compat(i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %36 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %35, i32 0, i32 0
  store i32 3, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %43 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %42, i32 0, i32 0
  store i32 4, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  store i32 1, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @OF_parent(i32 %45)
  %47 = call i32 @OF_getprop(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %10, i32 4)
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 32
  store i32 %54, i32* %9, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %52, %44
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 8388608
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i64 @pmap_mapdev(i32 %61, i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %66 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 12582912
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i64 @pmap_mapdev(i32 %68, i32 %69)
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %73 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %77 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %76, i32 0, i32 1
  %78 = call i64 @resource_int_value(i8* %74, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %59
  %81 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %82 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %59
  %84 = load %struct.uninorth_softc*, %struct.uninorth_softc** %4, align 8
  %85 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %84, i32 0, i32 2
  %86 = load i32, i32* @MTX_SPIN, align 4
  %87 = call i32 @mtx_init(i32* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @ofw_pci_attach(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %83, %24
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.uninorth_softc* @device_get_softc(i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ofw_pci_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
