; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_request_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_sync_request_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bio** }
%struct.bio = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"unexpected sync BIO at %p:%d\00", align 1
@M_MIRROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_disk*, %struct.bio*)* @g_mirror_sync_request_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_sync_request_free(%struct.g_mirror_disk* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_mirror_disk*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %7 = icmp ne %struct.g_mirror_disk* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %10 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bio**, %struct.bio*** %11, align 8
  %13 = icmp ne %struct.bio** %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %20 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.bio**, %struct.bio*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bio*, %struct.bio** %22, i64 %24
  %26 = load %struct.bio*, %struct.bio** %25, align 8
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = icmp eq %struct.bio* %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %29, i8* %33)
  %35 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %36 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.bio**, %struct.bio*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bio*, %struct.bio** %38, i64 %40
  store %struct.bio* null, %struct.bio** %41, align 8
  br label %42

42:                                               ; preds = %14, %8, %2
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @M_MIRROR, align 4
  %47 = call i32 @free(i32 %45, i32 %46)
  %48 = load %struct.bio*, %struct.bio** %4, align 8
  %49 = call i32 @g_destroy_bio(%struct.bio* %48)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
