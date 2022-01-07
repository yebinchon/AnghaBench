; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_get_disk_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_get_disk_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3disk_softc = type { i32, i32, i32 }

@PS3_LPAR_ID_PME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"blk_size\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not get block size (0x%08x)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"n_blocks\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Could not get total number of blocks (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3disk_softc*)* @ps3disk_get_disk_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3disk_get_disk_geometry(%struct.ps3disk_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3disk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ps3disk_softc* %0, %struct.ps3disk_softc** %3, align 8
  %9 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ps3bus_get_busidx(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ps3bus_get_devidx(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %17 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = ashr i32 %17, 32
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %25, i32 0, i32 1
  %27 = call i32 @lv1_get_repository_node_value(i32 %16, i32 %20, i32 %23, i32 %24, i32 0, i32* %26, i32* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %1
  %36 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %37 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = ashr i32 %37, 32
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %45, i32 0, i32 0
  %47 = call i32 @lv1_get_repository_node_value(i32 %36, i32 %40, i32 %43, i32 %44, i32 0, i32* %46, i32* %7)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %35
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %30
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @ps3bus_get_busidx(i32) #1

declare dso_local i32 @ps3bus_get_devidx(i32) #1

declare dso_local i32 @lv1_get_repository_node_value(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lv1_repository_string(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
