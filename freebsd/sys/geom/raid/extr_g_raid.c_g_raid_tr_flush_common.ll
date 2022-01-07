; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_tr_flush_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_tr_flush_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i64 }
%struct.bio = type { i64, %struct.g_raid_subdisk* }
%struct.bio_queue_head = type { i32 }

@G_RAID_SUBDISK_S_NONE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_FAILED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_tr_flush_common(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca %struct.bio_queue_head, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %11 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %10, i32 0, i32 0
  %12 = load %struct.g_raid_volume*, %struct.g_raid_volume** %11, align 8
  store %struct.g_raid_volume* %12, %struct.g_raid_volume** %5, align 8
  %13 = call i32 @bioq_init(%struct.bio_queue_head* %7)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %51, %2
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %17 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %22 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %21, i32 0, i32 1
  %23 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %23, i64 %25
  store %struct.g_raid_subdisk* %26, %struct.g_raid_subdisk** %6, align 8
  %27 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %28 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @G_RAID_SUBDISK_S_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %34 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @G_RAID_SUBDISK_S_FAILED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %20
  br label %51

39:                                               ; preds = %32
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = call %struct.bio* @g_clone_bio(%struct.bio* %40)
  store %struct.bio* %41, %struct.bio** %8, align 8
  %42 = load %struct.bio*, %struct.bio** %8, align 8
  %43 = icmp eq %struct.bio* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %68

45:                                               ; preds = %39
  %46 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %47 = load %struct.bio*, %struct.bio** %8, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  store %struct.g_raid_subdisk* %46, %struct.g_raid_subdisk** %48, align 8
  %49 = load %struct.bio*, %struct.bio** %8, align 8
  %50 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %7, %struct.bio* %49)
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %14

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %58, %54
  %56 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %56, %struct.bio** %8, align 8
  %57 = icmp ne %struct.bio* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.bio*, %struct.bio** %8, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 1
  %61 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %60, align 8
  store %struct.g_raid_subdisk* %61, %struct.g_raid_subdisk** %6, align 8
  %62 = load %struct.bio*, %struct.bio** %8, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 1
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %63, align 8
  %64 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %65 = load %struct.bio*, %struct.bio** %8, align 8
  %66 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %64, %struct.bio* %65)
  br label %55

67:                                               ; preds = %55
  br label %90

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %72, %68
  %70 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %70, %struct.bio** %8, align 8
  %71 = icmp ne %struct.bio* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.bio*, %struct.bio** %8, align 8
  %74 = call i32 @g_destroy_bio(%struct.bio* %73)
  br label %69

75:                                               ; preds = %69
  %76 = load %struct.bio*, %struct.bio** %4, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i64, i64* @ENOMEM, align 8
  %82 = load %struct.bio*, %struct.bio** %4, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.bio*, %struct.bio** %4, align 8
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @g_raid_iodone(%struct.bio* %85, i64 %88)
  br label %90

90:                                               ; preds = %84, %67
  ret void
}

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk*, %struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_raid_iodone(%struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
