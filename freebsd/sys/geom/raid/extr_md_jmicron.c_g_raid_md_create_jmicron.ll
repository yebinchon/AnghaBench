; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_create_jmicron.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_create_jmicron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_md_object = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid_md_jmicron_object = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"JMicron-%08x\00", align 1
@G_RAID_MD_TASTE_FAIL = common dso_local global i32 0, align 4
@G_RAID_MD_TASTE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_md_object*, %struct.g_class*, %struct.g_geom**)* @g_raid_md_create_jmicron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_create_jmicron(%struct.g_raid_md_object* %0, %struct.g_class* %1, %struct.g_geom** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_md_object*, align 8
  %6 = alloca %struct.g_class*, align 8
  %7 = alloca %struct.g_geom**, align 8
  %8 = alloca %struct.g_raid_softc*, align 8
  %9 = alloca %struct.g_raid_md_jmicron_object*, align 8
  %10 = alloca [16 x i8], align 16
  store %struct.g_raid_md_object* %0, %struct.g_raid_md_object** %5, align 8
  store %struct.g_class* %1, %struct.g_class** %6, align 8
  store %struct.g_geom** %2, %struct.g_geom*** %7, align 8
  %11 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %12 = bitcast %struct.g_raid_md_object* %11 to %struct.g_raid_md_jmicron_object*
  store %struct.g_raid_md_jmicron_object* %12, %struct.g_raid_md_jmicron_object** %9, align 8
  %13 = call i32 (...) @arc4random()
  %14 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %9, align 8
  %15 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %17 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %9, align 8
  %18 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snprintf(i8* %16, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.g_class*, %struct.g_class** %6, align 8
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %23 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %24 = call %struct.g_raid_softc* @g_raid_create_node(%struct.g_class* %21, i8* %22, %struct.g_raid_md_object* %23)
  store %struct.g_raid_softc* %24, %struct.g_raid_softc** %8, align 8
  %25 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %26 = icmp eq %struct.g_raid_softc* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @G_RAID_MD_TASTE_FAIL, align 4
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %31 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %32 = getelementptr inbounds %struct.g_raid_md_object, %struct.g_raid_md_object* %31, i32 0, i32 0
  store %struct.g_raid_softc* %30, %struct.g_raid_softc** %32, align 8
  %33 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %34 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %33, i32 0, i32 0
  %35 = load %struct.g_geom*, %struct.g_geom** %34, align 8
  %36 = load %struct.g_geom**, %struct.g_geom*** %7, align 8
  store %struct.g_geom* %35, %struct.g_geom** %36, align 8
  %37 = load i32, i32* @G_RAID_MD_TASTE_NEW, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %27
  %39 = load i32, i32* %4, align 4
  ret i32 %39
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
