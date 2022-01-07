; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_sii_new_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_sii_new_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_raid_md_object* }
%struct.g_raid_md_object = type { i32 }
%struct.g_raid_md_sii_object = type { i64, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sii_raid_conf = type { i64 }
%struct.g_raid_md_sii_perdisk = type { %struct.sii_raid_conf* }

@.str = private unnamed_addr constant [11 x i8] c"Newer disk\00", align 1
@M_MD_SII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Matching disk (%d of %d up)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Older disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_disk*)* @g_raid_md_sii_new_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_sii_new_disk(%struct.g_raid_disk* %0) #0 {
  %2 = alloca %struct.g_raid_disk*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_md_object*, align 8
  %5 = alloca %struct.g_raid_md_sii_object*, align 8
  %6 = alloca %struct.sii_raid_conf*, align 8
  %7 = alloca %struct.g_raid_md_sii_perdisk*, align 8
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
  %15 = bitcast %struct.g_raid_md_object* %14 to %struct.g_raid_md_sii_object*
  store %struct.g_raid_md_sii_object* %15, %struct.g_raid_md_sii_object** %5, align 8
  %16 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %17 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.g_raid_md_sii_perdisk*
  store %struct.g_raid_md_sii_perdisk* %19, %struct.g_raid_md_sii_perdisk** %7, align 8
  %20 = load %struct.g_raid_md_sii_perdisk*, %struct.g_raid_md_sii_perdisk** %7, align 8
  %21 = getelementptr inbounds %struct.g_raid_md_sii_perdisk, %struct.g_raid_md_sii_perdisk* %20, i32 0, i32 0
  %22 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %21, align 8
  store %struct.sii_raid_conf* %22, %struct.sii_raid_conf** %6, align 8
  %23 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %24 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %29 = call i64 @g_raid_md_sii_start_disk(%struct.g_raid_disk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %4, align 8
  %33 = call i32 @g_raid_md_write_sii(%struct.g_raid_md_object* %32, i32* null, i32* null, i32* null)
  br label %34

34:                                               ; preds = %31, %27
  br label %117

35:                                               ; preds = %1
  %36 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %37 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %6, align 8
  %42 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %45 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %40, %35
  %50 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %51 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %53 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %58 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* @M_MD_SII, align 4
  %61 = call i32 @free(%struct.TYPE_3__* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %6, align 8
  %64 = call %struct.TYPE_3__* @sii_meta_copy(%struct.sii_raid_conf* %63)
  %65 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %66 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %65, i32 0, i32 3
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %68 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %73 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %6, align 8
  %75 = call i32 @sii_meta_total_disks(%struct.sii_raid_conf* %74)
  %76 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %77 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %79 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  br label %105

80:                                               ; preds = %40
  %81 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %6, align 8
  %82 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %85 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %80
  %89 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %90 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %94 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %95 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %98 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %99)
  br label %104

101:                                              ; preds = %80
  %102 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %103 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %88
  br label %105

105:                                              ; preds = %104, %62
  %106 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %107 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.g_raid_md_sii_object*, %struct.g_raid_md_sii_object** %5, align 8
  %110 = getelementptr inbounds %struct.g_raid_md_sii_object, %struct.g_raid_md_sii_object* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %115 = call i32 @g_raid_md_sii_start(%struct.g_raid_softc* %114)
  br label %116

116:                                              ; preds = %113, %105
  br label %117

117:                                              ; preds = %116, %34
  ret void
}

declare dso_local i64 @g_raid_md_sii_start_disk(%struct.g_raid_disk*) #1

declare dso_local i32 @g_raid_md_write_sii(%struct.g_raid_md_object*, i32*, i32*, i32*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @sii_meta_copy(%struct.sii_raid_conf*) #1

declare dso_local i32 @sii_meta_total_disks(%struct.sii_raid_conf*) #1

declare dso_local i32 @g_raid_md_sii_start(%struct.g_raid_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
