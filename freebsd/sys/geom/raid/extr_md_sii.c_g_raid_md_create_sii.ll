; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_create_sii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_create_sii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_md_object = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid_md_sii_object = type { i32*, i64, i8* }

@.str = private unnamed_addr constant [29 x i8] c"SiI-%02x%02x%02x%02x%02x%02x\00", align 1
@G_RAID_MD_TASTE_FAIL = common dso_local global i32 0, align 4
@G_RAID_MD_TASTE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_md_object*, %struct.g_class*, %struct.g_geom**)* @g_raid_md_create_sii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_create_sii(%struct.g_raid_md_object* %0, %struct.g_class* %1, %struct.g_geom** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_md_object*, align 8
  %6 = alloca %struct.g_class*, align 8
  %7 = alloca %struct.g_geom**, align 8
  %8 = alloca %struct.g_raid_softc*, align 8
  %9 = alloca %struct.g_raid_md_sii_object*, align 8
  %10 = alloca [32 x i8], align 16
  store %struct.g_raid_md_object* %0, %struct.g_raid_md_object** %5, align 8
  store %struct.g_class* %1, %struct.g_class** %6, align 8
  store %struct.g_geom** %2, %struct.g_geom*** %7, align 8
  %11 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %12 = bitcast %struct.g_raid_md_object* %11 to %struct.g_raid_md_sii_object*
  store %struct.g_raid_md_sii_object* %12, %struct.g_raid_md_sii_object** %9, align 8
  %13 = call i8* (...) @arc4random()
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %16 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %14, i32* %18, align 4
  %19 = call i8* (...) @arc4random()
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %22 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  store i32 %20, i32* %24, align 4
  %25 = call i8* (...) @arc4random()
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %28 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 %26, i32* %30, align 4
  %31 = call i8* (...) @arc4random()
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %34 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %32, i32* %36, align 4
  %37 = call i8* (...) @arc4random()
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %40 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  %43 = call i8* (...) @arc4random()
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %46 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  %49 = call i8* (...) @arc4random()
  %50 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %51 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %53 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %55 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %56 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %61 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %66 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %71 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %76 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %9, align 8
  %81 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @snprintf(i8* %54, i32 32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %84)
  %86 = load %struct.g_class*, %struct.g_class** %6, align 8
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %88 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %89 = call %struct.g_raid_softc* @g_raid_create_node(%struct.g_class* %86, i8* %87, %struct.g_raid_md_object* %88)
  store %struct.g_raid_softc* %89, %struct.g_raid_softc** %8, align 8
  %90 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %91 = icmp eq %struct.g_raid_softc* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %3
  %93 = load i32, i32* @G_RAID_MD_TASTE_FAIL, align 4
  store i32 %93, i32* %4, align 4
  br label %103

94:                                               ; preds = %3
  %95 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %96 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %97 = getelementptr inbounds %struct.g_raid_md_object, %struct.g_raid_md_object* %96, i32 0, i32 0
  store %struct.g_raid_softc* %95, %struct.g_raid_softc** %97, align 8
  %98 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %99 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %98, i32 0, i32 0
  %100 = load %struct.g_geom*, %struct.g_geom** %99, align 8
  %101 = load %struct.g_geom**, %struct.g_geom*** %7, align 8
  store %struct.g_geom* %100, %struct.g_geom** %101, align 8
  %102 = load i32, i32* @G_RAID_MD_TASTE_NEW, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %94, %92
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @arc4random(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.g_raid_softc* @g_raid_create_node(%struct.g_class*, i8*, %struct.g_raid_md_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
