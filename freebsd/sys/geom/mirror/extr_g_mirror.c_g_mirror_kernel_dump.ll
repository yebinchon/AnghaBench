; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_kernel_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_kernel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, %struct.g_mirror_softc* }
%struct.g_mirror_softc = type { i32 }
%struct.g_mirror_disk = type { i32 }
%struct.g_kerneldump = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Kernel dump will go to %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_mirror_kernel_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_kernel_dump(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.g_mirror_disk*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.g_kerneldump*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %10, align 8
  store %struct.g_mirror_softc* %11, %struct.g_mirror_softc** %3, align 8
  %12 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %13 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %12, i32 0, i32 0
  %14 = call %struct.g_mirror_disk* @LIST_FIRST(i32* %13)
  store %struct.g_mirror_disk* %14, %struct.g_mirror_disk** %4, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.g_kerneldump*
  store %struct.g_kerneldump* %18, %struct.g_kerneldump** %6, align 8
  %19 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %20 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %21, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %35 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %1
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = call %struct.bio* @g_clone_bio(%struct.bio* %37)
  store %struct.bio* %38, %struct.bio** %5, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = icmp eq %struct.bio* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @g_io_deliver(%struct.bio* %42, i32 %43)
  br label %57

45:                                               ; preds = %36
  %46 = load i32, i32* @g_std_done, align 4
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %51 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @g_io_request(%struct.bio* %49, i32 %52)
  %54 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %55 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %54)
  %56 = call i32 @G_MIRROR_DEBUG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %45, %41
  ret void
}

declare dso_local %struct.g_mirror_disk* @LIST_FIRST(i32*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
