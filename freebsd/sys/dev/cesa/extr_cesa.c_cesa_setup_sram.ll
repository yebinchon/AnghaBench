; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_setup_sram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_setup_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i64, i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"sram-handle\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@MV_DEV_88F6828 = common dso_local global i64 0, align 8
@MV_DEV_88F6820 = common dso_local global i64 0, align 8
@MV_DEV_88F6810 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cesa_softc*)* @cesa_setup_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_setup_sram(%struct.cesa_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cesa_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.cesa_softc* %0, %struct.cesa_softc** %3, align 8
  %10 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %11 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  %14 = bitcast i8** %6 to i8*
  %15 = call i32 @OF_getencprop(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %14, i32 8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @OF_instance_to_package(i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %27 = bitcast i8** %26 to i8*
  %28 = call i32 @OF_getencprop(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 16)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %77

33:                                               ; preds = %20
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %35 = load i8*, i8** %34, align 16
  %36 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %37 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %41 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %43 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MV_DEV_88F6828, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %33
  %48 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %49 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MV_DEV_88F6820, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %55 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MV_DEV_88F6810, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %77

60:                                               ; preds = %53, %47, %33
  %61 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %62 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %65 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @pmap_mapdev(i8* %63, i8* %66)
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %60
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %76 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %70, %59, %31, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @OF_getencprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_instance_to_package(i64) #1

declare dso_local i8* @pmap_mapdev(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
