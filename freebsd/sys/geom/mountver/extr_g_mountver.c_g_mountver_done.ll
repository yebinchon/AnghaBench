; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i32, %struct.bio*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { i32 }

@ENXIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"parent request was for someone else\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_mountver_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mountver_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ENXIO, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = call i32 @g_std_done(%struct.bio* %11)
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.g_geom*, %struct.g_geom** %17, align 8
  store %struct.g_geom* %18, %struct.g_geom** %3, align 8
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 3
  %21 = load %struct.bio*, %struct.bio** %20, align 8
  store %struct.bio* %21, %struct.bio** %4, align 8
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %26 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %25, i32 0, i32 0
  %27 = call i64 @LIST_FIRST(i32* %26)
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = call i32 @g_destroy_bio(%struct.bio* %31)
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = call i32 @g_mountver_queue(%struct.bio* %37)
  br label %39

39:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @g_std_done(%struct.bio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @LIST_FIRST(i32*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_mountver_queue(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
