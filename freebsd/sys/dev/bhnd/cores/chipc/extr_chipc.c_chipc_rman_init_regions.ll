; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_rman_init_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_rman_init_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32, i32, i32 }
%struct.chipc_region = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no rid for chipc region %s%u.%u\00", align 1
@cr_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_softc*, i32, i64)* @chipc_rman_init_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_rman_init_regions(%struct.chipc_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chipc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.chipc_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.chipc_softc* %0, %struct.chipc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %15 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @bhnd_get_region_count(i32 %16, i32 %17, i64 %18)
  store i64 %19, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %20

20:                                               ; preds = %75, %3
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  %25 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call %struct.chipc_region* @chipc_alloc_region(%struct.chipc_softc* %25, i32 %26, i64 %27, i64 %28)
  store %struct.chipc_region* %29, %struct.chipc_region** %8, align 8
  %30 = load %struct.chipc_region*, %struct.chipc_region** %8, align 8
  %31 = icmp eq %struct.chipc_region* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ENODEV, align 4
  store i32 %33, i32* %4, align 4
  br label %79

34:                                               ; preds = %24
  %35 = load %struct.chipc_region*, %struct.chipc_region** %8, align 8
  %36 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %41 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @bhnd_port_type_name(i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @BHND_DEBUG_DEV(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %45, i64 %46)
  %48 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %49 = load %struct.chipc_region*, %struct.chipc_region** %8, align 8
  %50 = call i32 @chipc_free_region(%struct.chipc_softc* %48, %struct.chipc_region* %49)
  br label %75

51:                                               ; preds = %34
  %52 = load %struct.chipc_region*, %struct.chipc_region** %8, align 8
  %53 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.chipc_region*, %struct.chipc_region** %8, align 8
  %56 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %10, align 4
  %58 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %59 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @rman_manage_region(i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %66 = load %struct.chipc_region*, %struct.chipc_region** %8, align 8
  %67 = call i32 @chipc_free_region(%struct.chipc_softc* %65, %struct.chipc_region* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %79

69:                                               ; preds = %51
  %70 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %71 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %70, i32 0, i32 0
  %72 = load %struct.chipc_region*, %struct.chipc_region** %8, align 8
  %73 = load i32, i32* @cr_link, align 4
  %74 = call i32 @STAILQ_INSERT_TAIL(i32* %71, %struct.chipc_region* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %39
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %20

78:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %64, %32
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @bhnd_get_region_count(i32, i32, i64) #1

declare dso_local %struct.chipc_region* @chipc_alloc_region(%struct.chipc_softc*, i32, i64, i64) #1

declare dso_local i32 @BHND_DEBUG_DEV(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @bhnd_port_type_name(i32) #1

declare dso_local i32 @chipc_free_region(%struct.chipc_softc*, %struct.chipc_region*) #1

declare dso_local i32 @rman_manage_region(i32*, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.chipc_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
