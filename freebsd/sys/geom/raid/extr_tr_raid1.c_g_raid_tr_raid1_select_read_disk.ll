; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_select_read_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_select_read_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_subdisk = type { i64, i64, i32 }
%struct.g_raid_volume = type { i32, %struct.g_raid_subdisk* }
%struct.bio = type { i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_REBUILD = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_RESYNC = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_LOAD_SCALE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_TRACK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_raid_subdisk* (%struct.g_raid_volume*, %struct.bio*, i32)* @g_raid_tr_raid1_select_read_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_raid_subdisk* @g_raid_tr_raid1_select_read_disk(%struct.g_raid_volume* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.g_raid_volume*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_raid_subdisk*, align 8
  %8 = alloca %struct.g_raid_subdisk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %8, align 8
  %12 = load i32, i32* @INT_MAX, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %118, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %16 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %121

19:                                               ; preds = %13
  %20 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %21 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %20, i32 0, i32 1
  %22 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %22, i64 %24
  store %struct.g_raid_subdisk* %25, %struct.g_raid_subdisk** %7, align 8
  %26 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %27 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %19
  %32 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %33 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @G_RAID_SUBDISK_S_REBUILD, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %39 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @G_RAID_SUBDISK_S_RESYNC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %52 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43, %37
  br label %118

56:                                               ; preds = %43, %19
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %118

63:                                               ; preds = %56
  %64 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %65 = call i32 @G_RAID_SUBDISK_LOAD(%struct.g_raid_subdisk* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %67 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @min(i32 %68, i32 255)
  %70 = shl i32 %69, 22
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %74 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %75 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = shl i64 %77, 16
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %84 = call i64 @G_RAID_SUBDISK_POS(%struct.g_raid_subdisk* %83)
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %63
  %90 = load i32, i32* @G_RAID_SUBDISK_LOAD_SCALE, align 4
  %91 = mul nsw i32 2, %90
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %110

94:                                               ; preds = %63
  %95 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %96 = call i64 @G_RAID_SUBDISK_POS(%struct.g_raid_subdisk* %95)
  %97 = load %struct.bio*, %struct.bio** %5, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = call i64 @ABS(i64 %100)
  %102 = load i64, i64* @G_RAID_SUBDISK_TRACK_SIZE, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load i32, i32* @G_RAID_SUBDISK_LOAD_SCALE, align 4
  %106 = mul nsw i32 1, %105
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %104, %94
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  store %struct.g_raid_subdisk* %115, %struct.g_raid_subdisk** %8, align 8
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %62, %55
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %13

121:                                              ; preds = %13
  %122 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  ret %struct.g_raid_subdisk* %122
}

declare dso_local i32 @G_RAID_SUBDISK_LOAD(%struct.g_raid_subdisk*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @G_RAID_SUBDISK_POS(%struct.g_raid_subdisk*) #1

declare dso_local i64 @ABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
