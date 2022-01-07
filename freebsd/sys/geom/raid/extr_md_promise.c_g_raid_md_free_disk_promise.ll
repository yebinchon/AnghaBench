; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_free_disk_promise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_free_disk_promise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_md_object = type { i32 }
%struct.g_raid_disk = type { i32* }
%struct.g_raid_md_promise_perdisk = type { i32, %struct.g_raid_md_promise_perdisk** }

@M_MD_PROMISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_md_object*, %struct.g_raid_disk*)* @g_raid_md_free_disk_promise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_free_disk_promise(%struct.g_raid_md_object* %0, %struct.g_raid_disk* %1) #0 {
  %3 = alloca %struct.g_raid_md_object*, align 8
  %4 = alloca %struct.g_raid_disk*, align 8
  %5 = alloca %struct.g_raid_md_promise_perdisk*, align 8
  %6 = alloca i32, align 4
  store %struct.g_raid_md_object* %0, %struct.g_raid_md_object** %3, align 8
  store %struct.g_raid_disk* %1, %struct.g_raid_disk** %4, align 8
  %7 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %8 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.g_raid_md_promise_perdisk*
  store %struct.g_raid_md_promise_perdisk* %10, %struct.g_raid_md_promise_perdisk** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %5, align 8
  %14 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %11
  %18 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %5, align 8
  %19 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %18, i32 0, i32 1
  %20 = load %struct.g_raid_md_promise_perdisk**, %struct.g_raid_md_promise_perdisk*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %20, i64 %22
  %24 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %23, align 8
  %25 = icmp ne %struct.g_raid_md_promise_perdisk* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %5, align 8
  %28 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %27, i32 0, i32 1
  %29 = load %struct.g_raid_md_promise_perdisk**, %struct.g_raid_md_promise_perdisk*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %29, i64 %31
  %33 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %32, align 8
  %34 = load i32, i32* @M_MD_PROMISE, align 4
  %35 = call i32 @free(%struct.g_raid_md_promise_perdisk* %33, i32 %34)
  %36 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %5, align 8
  %37 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %36, i32 0, i32 1
  %38 = load %struct.g_raid_md_promise_perdisk**, %struct.g_raid_md_promise_perdisk*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %38, i64 %40
  store %struct.g_raid_md_promise_perdisk* null, %struct.g_raid_md_promise_perdisk** %41, align 8
  br label %42

42:                                               ; preds = %26, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %5, align 8
  %48 = load i32, i32* @M_MD_PROMISE, align 4
  %49 = call i32 @free(%struct.g_raid_md_promise_perdisk* %47, i32 %48)
  %50 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %51 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  ret i32 0
}

declare dso_local i32 @free(%struct.g_raid_md_promise_perdisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
