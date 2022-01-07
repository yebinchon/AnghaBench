; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_iostart_raid1_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_iostart_raid1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i32, i32 }
%struct.bio = type { i64, %struct.g_raid_subdisk*, i32 }
%struct.bio_queue_head = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid1_write(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
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

14:                                               ; preds = %55, %2
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %17 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %58

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
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %42 [
    i32 131, label %30
    i32 130, label %31
    i32 128, label %41
    i32 129, label %41
  ]

30:                                               ; preds = %20
  br label %43

31:                                               ; preds = %20
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %36 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %55

40:                                               ; preds = %31
  br label %43

41:                                               ; preds = %20, %20
  br label %43

42:                                               ; preds = %20
  br label %55

43:                                               ; preds = %41, %40, %30
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = call %struct.bio* @g_clone_bio(%struct.bio* %44)
  store %struct.bio* %45, %struct.bio** %8, align 8
  %46 = load %struct.bio*, %struct.bio** %8, align 8
  %47 = icmp eq %struct.bio* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %72

49:                                               ; preds = %43
  %50 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %51 = load %struct.bio*, %struct.bio** %8, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 1
  store %struct.g_raid_subdisk* %50, %struct.g_raid_subdisk** %52, align 8
  %53 = load %struct.bio*, %struct.bio** %8, align 8
  %54 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %7, %struct.bio* %53)
  br label %55

55:                                               ; preds = %49, %42, %39
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %14

58:                                               ; preds = %14
  br label %59

59:                                               ; preds = %62, %58
  %60 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %60, %struct.bio** %8, align 8
  %61 = icmp ne %struct.bio* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.bio*, %struct.bio** %8, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  %65 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %64, align 8
  store %struct.g_raid_subdisk* %65, %struct.g_raid_subdisk** %6, align 8
  %66 = load %struct.bio*, %struct.bio** %8, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 1
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %67, align 8
  %68 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %69 = load %struct.bio*, %struct.bio** %8, align 8
  %70 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %68, %struct.bio* %69)
  br label %59

71:                                               ; preds = %59
  br label %94

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %76, %72
  %74 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %74, %struct.bio** %8, align 8
  %75 = icmp ne %struct.bio* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.bio*, %struct.bio** %8, align 8
  %78 = call i32 @g_destroy_bio(%struct.bio* %77)
  br label %73

79:                                               ; preds = %73
  %80 = load %struct.bio*, %struct.bio** %4, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* @ENOMEM, align 8
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.bio*, %struct.bio** %4, align 8
  %90 = load %struct.bio*, %struct.bio** %4, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @g_raid_iodone(%struct.bio* %89, i64 %92)
  br label %94

94:                                               ; preds = %88, %71
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
