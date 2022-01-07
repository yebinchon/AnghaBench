; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_iodone_raid5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_iodone_raid5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.bio = type { i64, i64, i64, i32, i32, %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.g_raid_subdisk*, %struct.bio*)* @g_raid_tr_iodone_raid5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iodone_raid5(%struct.g_raid_tr_object* %0, %struct.g_raid_subdisk* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.g_raid_tr_object*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %4, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %8 = load %struct.bio*, %struct.bio** %6, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 5
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %10, %struct.bio** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %7, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bio*, %struct.bio** %7, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = call i32 @g_destroy_bio(%struct.bio* %26)
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bio*, %struct.bio** %7, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %21
  %36 = load %struct.bio*, %struct.bio** %7, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bio*, %struct.bio** %7, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bio*, %struct.bio** %7, align 8
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @g_raid_iodone(%struct.bio* %41, i64 %44)
  br label %46

46:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_raid_iodone(%struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
