; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_create_intel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_create_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_md_object = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid_md_intel_object = type { i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"Intel-%08x\00", align 1
@G_RAID_MD_TASTE_FAIL = common dso_local global i32 0, align 4
@G_RAID_MD_TASTE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_md_object*, %struct.g_class*, %struct.g_geom**)* @g_raid_md_create_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_create_intel(%struct.g_raid_md_object* %0, %struct.g_class* %1, %struct.g_geom** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_md_object*, align 8
  %6 = alloca %struct.g_class*, align 8
  %7 = alloca %struct.g_geom**, align 8
  %8 = alloca %struct.g_raid_softc*, align 8
  %9 = alloca %struct.g_raid_md_intel_object*, align 8
  %10 = alloca [16 x i8], align 16
  store %struct.g_raid_md_object* %0, %struct.g_raid_md_object** %5, align 8
  store %struct.g_class* %1, %struct.g_class** %6, align 8
  store %struct.g_geom** %2, %struct.g_geom*** %7, align 8
  %11 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %12 = bitcast %struct.g_raid_md_object* %11 to %struct.g_raid_md_intel_object*
  store %struct.g_raid_md_intel_object* %12, %struct.g_raid_md_intel_object** %9, align 8
  %13 = call i32 (...) @arc4random()
  %14 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %9, align 8
  %15 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %9, align 8
  %17 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 8
  %18 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %9, align 8
  %19 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %21 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %9, align 8
  %22 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snprintf(i8* %20, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.g_class*, %struct.g_class** %6, align 8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %27 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %28 = call %struct.g_raid_softc* @g_raid_create_node(%struct.g_class* %25, i8* %26, %struct.g_raid_md_object* %27)
  store %struct.g_raid_softc* %28, %struct.g_raid_softc** %8, align 8
  %29 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %30 = icmp eq %struct.g_raid_softc* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @G_RAID_MD_TASTE_FAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %35 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %36 = getelementptr inbounds %struct.g_raid_md_object, %struct.g_raid_md_object* %35, i32 0, i32 0
  store %struct.g_raid_softc* %34, %struct.g_raid_softc** %36, align 8
  %37 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %38 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %37, i32 0, i32 0
  %39 = load %struct.g_geom*, %struct.g_geom** %38, align 8
  %40 = load %struct.g_geom**, %struct.g_geom*** %7, align 8
  store %struct.g_geom* %39, %struct.g_geom** %40, align 8
  %41 = load i32, i32* @G_RAID_MD_TASTE_NEW, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %31
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.g_raid_softc* @g_raid_create_node(%struct.g_class*, i8*, %struct.g_raid_md_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
