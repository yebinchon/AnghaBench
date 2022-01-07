; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_vlist_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_vlist_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i32 }
%struct.bio = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"vlist limit runs off the end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.disk*, %struct.bio*, i32**)* @g_disk_vlist_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @g_disk_vlist_limit(%struct.disk* %0, %struct.bio* %1, i32** %2) #0 {
  %4 = alloca %struct.disk*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.disk* %0, %struct.disk** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32** %2, i32*** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.disk*, %struct.disk** %4, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = call i32 @g_disk_maxsegs(%struct.disk* %31, %struct.bio* %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %42, %3
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %52

42:                                               ; preds = %40
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @g_disk_seg_limit(i32* %48, i64* %10, i64* %9, i32* %11)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  br label %34

52:                                               ; preds = %40
  %53 = load i32**, i32*** %6, align 8
  %54 = icmp ne i32** %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = load i32**, i32*** %6, align 8
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* %9, align 8
  ret i64 %59
}

declare dso_local i32 @g_disk_maxsegs(%struct.disk*, %struct.bio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_disk_seg_limit(i32*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
