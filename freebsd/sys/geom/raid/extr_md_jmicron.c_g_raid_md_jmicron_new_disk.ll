; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_jmicron_new_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_jmicron_new_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_raid_md_object* }
%struct.g_raid_md_object = type { i32 }
%struct.g_raid_md_jmicron_object = type { i64, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.jmicron_raid_conf = type { i32 }
%struct.g_raid_md_jmicron_perdisk = type { %struct.jmicron_raid_conf* }

@M_MD_JMICRON = common dso_local global i32 0, align 4
@JMICRON_F_BADSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Matching disk (%d of %d+%d up)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_disk*)* @g_raid_md_jmicron_new_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_jmicron_new_disk(%struct.g_raid_disk* %0) #0 {
  %2 = alloca %struct.g_raid_disk*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_md_object*, align 8
  %5 = alloca %struct.g_raid_md_jmicron_object*, align 8
  %6 = alloca %struct.jmicron_raid_conf*, align 8
  %7 = alloca %struct.g_raid_md_jmicron_perdisk*, align 8
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
  %15 = bitcast %struct.g_raid_md_object* %14 to %struct.g_raid_md_jmicron_object*
  store %struct.g_raid_md_jmicron_object* %15, %struct.g_raid_md_jmicron_object** %5, align 8
  %16 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %17 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.g_raid_md_jmicron_perdisk*
  store %struct.g_raid_md_jmicron_perdisk* %19, %struct.g_raid_md_jmicron_perdisk** %7, align 8
  %20 = load %struct.g_raid_md_jmicron_perdisk*, %struct.g_raid_md_jmicron_perdisk** %7, align 8
  %21 = getelementptr inbounds %struct.g_raid_md_jmicron_perdisk, %struct.g_raid_md_jmicron_perdisk* %20, i32 0, i32 0
  %22 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %21, align 8
  store %struct.jmicron_raid_conf* %22, %struct.jmicron_raid_conf** %6, align 8
  %23 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %24 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %29 = call i64 @g_raid_md_jmicron_start_disk(%struct.g_raid_disk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %4, align 8
  %33 = call i32 @g_raid_md_write_jmicron(%struct.g_raid_md_object* %32, i32* null, i32* null, i32* null)
  br label %34

34:                                               ; preds = %31, %27
  br label %115

35:                                               ; preds = %1
  %36 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %37 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %42 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %45 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @jmicron_meta_find_disk(%struct.TYPE_5__* %43, i32 %48)
  %50 = icmp eq i32 %49, -3
  br i1 %50, label %51, label %71

51:                                               ; preds = %40, %35
  %52 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %53 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %58 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* @M_MD_JMICRON, align 4
  %61 = call i32 @free(%struct.TYPE_5__* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %6, align 8
  %64 = call %struct.TYPE_5__* @jmicron_meta_copy(%struct.jmicron_raid_conf* %63)
  %65 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %66 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %65, i32 0, i32 2
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  %67 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %6, align 8
  %68 = call i64 @jmicron_meta_total_disks(%struct.jmicron_raid_conf* %67)
  %69 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %70 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %40
  %72 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %6, align 8
  %73 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @JMICRON_F_BADSEC, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %78 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 4
  %83 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %84 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %88 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %89 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %92 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %95 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i64 @jmicron_meta_total_spare(%struct.TYPE_5__* %96)
  %98 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %93, i64 %97)
  %99 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %100 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %103 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %106 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = call i64 @jmicron_meta_total_spare(%struct.TYPE_5__* %107)
  %109 = add nsw i64 %104, %108
  %110 = icmp eq i64 %101, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %71
  %112 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %113 = call i32 @g_raid_md_jmicron_start(%struct.g_raid_softc* %112)
  br label %114

114:                                              ; preds = %111, %71
  br label %115

115:                                              ; preds = %114, %34
  ret void
}

declare dso_local i64 @g_raid_md_jmicron_start_disk(%struct.g_raid_disk*) #1

declare dso_local i32 @g_raid_md_write_jmicron(%struct.g_raid_md_object*, i32*, i32*, i32*) #1

declare dso_local i32 @jmicron_meta_find_disk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_5__* @jmicron_meta_copy(%struct.jmicron_raid_conf*) #1

declare dso_local i64 @jmicron_meta_total_disks(%struct.jmicron_raid_conf*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i64, i64, i64) #1

declare dso_local i64 @jmicron_meta_total_spare(%struct.TYPE_5__*) #1

declare dso_local i32 @g_raid_md_jmicron_start(%struct.g_raid_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
