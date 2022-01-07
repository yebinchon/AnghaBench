; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_intel_new_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_intel_new_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_raid_md_object* }
%struct.g_raid_md_object = type { i32 }
%struct.g_raid_md_intel_object = type { i64, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.intel_raid_conf = type { i64 }
%struct.g_raid_md_intel_perdisk = type { %struct.intel_raid_conf* }

@.str = private unnamed_addr constant [11 x i8] c"Newer disk\00", align 1
@M_MD_INTEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Matching disk (%d of %d up)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Older disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_disk*)* @g_raid_md_intel_new_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_intel_new_disk(%struct.g_raid_disk* %0) #0 {
  %2 = alloca %struct.g_raid_disk*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_md_object*, align 8
  %5 = alloca %struct.g_raid_md_intel_object*, align 8
  %6 = alloca %struct.intel_raid_conf*, align 8
  %7 = alloca %struct.g_raid_md_intel_perdisk*, align 8
  store %struct.g_raid_disk* %0, %struct.g_raid_disk** %2, align 8
  %8 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %9 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %8, i32 0, i32 1
  %10 = load %struct.g_raid_softc*, %struct.g_raid_softc** %9, align 8
  store %struct.g_raid_softc* %10, %struct.g_raid_softc** %3, align 8
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %11, i32 0, i32 0
  %13 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %12, align 8
  store %struct.g_raid_md_object* %13, %struct.g_raid_md_object** %4, align 8
  %14 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %4, align 8
  %15 = bitcast %struct.g_raid_md_object* %14 to %struct.g_raid_md_intel_object*
  store %struct.g_raid_md_intel_object* %15, %struct.g_raid_md_intel_object** %5, align 8
  %16 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %17 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.g_raid_md_intel_perdisk*
  store %struct.g_raid_md_intel_perdisk* %19, %struct.g_raid_md_intel_perdisk** %7, align 8
  %20 = load %struct.g_raid_md_intel_perdisk*, %struct.g_raid_md_intel_perdisk** %7, align 8
  %21 = getelementptr inbounds %struct.g_raid_md_intel_perdisk, %struct.g_raid_md_intel_perdisk* %20, i32 0, i32 0
  %22 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %21, align 8
  store %struct.intel_raid_conf* %22, %struct.intel_raid_conf** %6, align 8
  %23 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %24 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %29 = call i64 @g_raid_md_intel_start_disk(%struct.g_raid_disk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %4, align 8
  %33 = call i32 @g_raid_md_write_intel(%struct.g_raid_md_object* %32, i32* null, i32* null, i32* null)
  br label %34

34:                                               ; preds = %31, %27
  br label %117

35:                                               ; preds = %1
  %36 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %37 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %6, align 8
  %42 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %45 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %40, %35
  %50 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %51 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %53 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %58 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* @M_MD_INTEL, align 4
  %61 = call i32 @free(%struct.TYPE_3__* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %6, align 8
  %64 = call %struct.TYPE_3__* @intel_meta_copy(%struct.intel_raid_conf* %63)
  %65 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %66 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %65, i32 0, i32 2
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %68 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %73 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %75 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  br label %103

76:                                               ; preds = %40
  %77 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %6, align 8
  %78 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %81 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %86 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %90 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %91 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %94 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %97)
  br label %102

99:                                               ; preds = %76
  %100 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %101 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %84
  br label %103

103:                                              ; preds = %102, %62
  %104 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %105 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.g_raid_md_intel_object*, %struct.g_raid_md_intel_object** %5, align 8
  %108 = getelementptr inbounds %struct.g_raid_md_intel_object, %struct.g_raid_md_intel_object* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %106, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %115 = call i32 @g_raid_md_intel_start(%struct.g_raid_softc* %114)
  br label %116

116:                                              ; preds = %113, %103
  br label %117

117:                                              ; preds = %116, %34
  ret void
}

declare dso_local i64 @g_raid_md_intel_start_disk(%struct.g_raid_disk*) #1

declare dso_local i32 @g_raid_md_write_intel(%struct.g_raid_md_object*, i32*, i32*, i32*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @intel_meta_copy(%struct.intel_raid_conf*) #1

declare dso_local i32 @g_raid_md_intel_start(%struct.g_raid_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
