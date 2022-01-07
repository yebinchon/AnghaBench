; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_g_raid_md_nvidia_new_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_g_raid_md_nvidia_new_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_raid_md_object* }
%struct.g_raid_md_object = type { i32 }
%struct.g_raid_md_nvidia_object = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.nvidia_raid_conf = type { i32, i64 }
%struct.g_raid_md_nvidia_perdisk = type { %struct.nvidia_raid_conf* }

@.str = private unnamed_addr constant [11 x i8] c"Newer disk\00", align 1
@M_MD_NVIDIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Matching disk (%d of %d up)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Spare disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_disk*)* @g_raid_md_nvidia_new_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_nvidia_new_disk(%struct.g_raid_disk* %0) #0 {
  %2 = alloca %struct.g_raid_disk*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_md_object*, align 8
  %5 = alloca %struct.g_raid_md_nvidia_object*, align 8
  %6 = alloca %struct.nvidia_raid_conf*, align 8
  %7 = alloca %struct.g_raid_md_nvidia_perdisk*, align 8
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
  %15 = bitcast %struct.g_raid_md_object* %14 to %struct.g_raid_md_nvidia_object*
  store %struct.g_raid_md_nvidia_object* %15, %struct.g_raid_md_nvidia_object** %5, align 8
  %16 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %17 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.g_raid_md_nvidia_perdisk*
  store %struct.g_raid_md_nvidia_perdisk* %19, %struct.g_raid_md_nvidia_perdisk** %7, align 8
  %20 = load %struct.g_raid_md_nvidia_perdisk*, %struct.g_raid_md_nvidia_perdisk** %7, align 8
  %21 = getelementptr inbounds %struct.g_raid_md_nvidia_perdisk, %struct.g_raid_md_nvidia_perdisk* %20, i32 0, i32 0
  %22 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %21, align 8
  store %struct.nvidia_raid_conf* %22, %struct.nvidia_raid_conf** %6, align 8
  %23 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %24 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %29 = call i64 @g_raid_md_nvidia_start_disk(%struct.g_raid_disk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %4, align 8
  %33 = call i32 @g_raid_md_write_nvidia(%struct.g_raid_md_object* %32, i32* null, i32* null, i32* null)
  br label %34

34:                                               ; preds = %31, %27
  br label %116

35:                                               ; preds = %1
  %36 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %37 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %42 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %47 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %45, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %40, %35
  %53 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %54 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %56 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %61 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* @M_MD_NVIDIA, align 4
  %64 = call i32 @free(%struct.TYPE_3__* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %6, align 8
  %67 = call %struct.TYPE_3__* @nvidia_meta_copy(%struct.nvidia_raid_conf* %66)
  %68 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %69 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %68, i32 0, i32 2
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %69, align 8
  %70 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %6, align 8
  %71 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %74 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %76 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %104

77:                                               ; preds = %40
  %78 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %6, align 8
  %79 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %82 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %80, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %89 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %93 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %94 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %97 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %98)
  br label %103

100:                                              ; preds = %77
  %101 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %102 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %87
  br label %104

104:                                              ; preds = %103, %65
  %105 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %106 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.g_raid_md_nvidia_object*, %struct.g_raid_md_nvidia_object** %5, align 8
  %109 = getelementptr inbounds %struct.g_raid_md_nvidia_object, %struct.g_raid_md_nvidia_object* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %114 = call i32 @g_raid_md_nvidia_start(%struct.g_raid_softc* %113)
  br label %115

115:                                              ; preds = %112, %104
  br label %116

116:                                              ; preds = %115, %34
  ret void
}

declare dso_local i64 @g_raid_md_nvidia_start_disk(%struct.g_raid_disk*) #1

declare dso_local i32 @g_raid_md_write_nvidia(%struct.g_raid_md_object*, i32*, i32*, i32*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @nvidia_meta_copy(%struct.nvidia_raid_conf*) #1

declare dso_local i32 @g_raid_md_nvidia_start(%struct.g_raid_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
