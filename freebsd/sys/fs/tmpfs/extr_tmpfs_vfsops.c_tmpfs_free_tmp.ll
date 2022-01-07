; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_free_tmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_free_tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i64, i64, i64, i32, i32, i32 }

@M_TMPFSMNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_free_tmp(%struct.tmpfs_mount* %0) #0 {
  %2 = alloca %struct.tmpfs_mount*, align 8
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %2, align 8
  %3 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %4 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @MPASS(i32 %7)
  %9 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %10 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %14 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %19 = call i32 @TMPFS_UNLOCK(%struct.tmpfs_mount* %18)
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %22 = call i32 @TMPFS_UNLOCK(%struct.tmpfs_mount* %21)
  %23 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %24 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @uma_zdestroy(i32 %25)
  %27 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %28 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @uma_zdestroy(i32 %29)
  %31 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %32 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %31, i32 0, i32 3
  %33 = call i32 @mtx_destroy(i32* %32)
  %34 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %35 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @MPASS(i32 %38)
  %40 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %41 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @MPASS(i32 %44)
  %46 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %2, align 8
  %47 = load i32, i32* @M_TMPFSMNT, align 4
  %48 = call i32 @free(%struct.tmpfs_mount* %46, i32 %47)
  br label %49

49:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TMPFS_UNLOCK(%struct.tmpfs_mount*) #1

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.tmpfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
