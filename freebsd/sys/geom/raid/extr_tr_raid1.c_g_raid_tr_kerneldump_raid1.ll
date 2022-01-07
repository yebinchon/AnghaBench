; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_kerneldump_raid1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_kerneldump_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*, i8*, i32, i32, i64)* @g_raid_tr_kerneldump_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_kerneldump_raid1(%struct.g_raid_tr_object* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.g_raid_tr_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.g_raid_volume*, align 8
  %12 = alloca %struct.g_raid_subdisk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %6, align 8
  %17 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %16, i32 0, i32 0
  %18 = load %struct.g_raid_volume*, %struct.g_raid_volume** %17, align 8
  store %struct.g_raid_volume* %18, %struct.g_raid_volume** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %59, %5
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.g_raid_volume*, %struct.g_raid_volume** %11, align 8
  %22 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load %struct.g_raid_volume*, %struct.g_raid_volume** %11, align 8
  %27 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %26, i32 0, i32 1
  %28 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %28, i64 %30
  store %struct.g_raid_subdisk* %31, %struct.g_raid_subdisk** %12, align 8
  %32 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %12, align 8
  %33 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %45 [
    i32 131, label %35
    i32 130, label %36
    i32 128, label %44
    i32 129, label %44
  ]

35:                                               ; preds = %25
  br label %46

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %12, align 8
  %39 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %59

43:                                               ; preds = %36
  br label %46

44:                                               ; preds = %25, %25
  br label %46

45:                                               ; preds = %25
  br label %59

46:                                               ; preds = %44, %43, %35
  %47 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %12, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @g_raid_subdisk_kerneldump(%struct.g_raid_subdisk* %47, i8* %48, i32 %49, i32 %50, i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %55, %46
  br label %59

59:                                               ; preds = %58, %45, %42
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %19

62:                                               ; preds = %19
  %63 = load i32, i32* %15, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ 0, %65 ], [ %67, %66 ]
  ret i32 %69
}

declare dso_local i32 @g_raid_subdisk_kerneldump(%struct.g_raid_subdisk*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
