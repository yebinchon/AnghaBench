; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.uio = type { i64, %struct.thread* }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"uio_td %p is not td %p\00", align 1
@FOF_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"No FOF_OFFSET\00", align 1
@FNONBLOCK = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@POSIX_FADV_DONTNEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @vn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_read(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %16 = load %struct.uio*, %struct.uio** %7, align 8
  %17 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 1
  %18 = load %struct.thread*, %struct.thread** %17, align 8
  %19 = load %struct.thread*, %struct.thread** %10, align 8
  %20 = icmp eq %struct.thread* %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.uio*, %struct.uio** %7, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 1
  %24 = load %struct.thread*, %struct.thread** %23, align 8
  %25 = load %struct.thread*, %struct.thread** %10, align 8
  %26 = bitcast %struct.thread* %25 to i8*
  %27 = call i32 @KASSERT(i32 %21, i8* %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FOF_OFFSET, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 3
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  store %struct.vnode* %34, %struct.vnode** %11, align 8
  store i32 0, i32* %14, align 4
  %35 = load %struct.file*, %struct.file** %6, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FNONBLOCK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load i32, i32* @IO_NDELAY, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %41, %5
  %46 = load %struct.file*, %struct.file** %6, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @O_DIRECT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @IO_DIRECT, align 4
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = load %struct.uio*, %struct.uio** %7, align 8
  %59 = call i32 @get_advice(%struct.file* %57, %struct.uio* %58)
  store i32 %59, i32* %15, align 4
  %60 = load %struct.vnode*, %struct.vnode** %11, align 8
  %61 = load i32, i32* @LK_SHARED, align 4
  %62 = load i32, i32* @LK_RETRY, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @vn_lock(%struct.vnode* %60, i32 %63)
  %65 = load i32, i32* %15, align 4
  switch i32 %65, label %73 [
    i32 130, label %66
    i32 128, label %66
    i32 131, label %66
    i32 129, label %72
  ]

66:                                               ; preds = %56, %56, %56
  %67 = load %struct.uio*, %struct.uio** %7, align 8
  %68 = load %struct.file*, %struct.file** %6, align 8
  %69 = call i32 @sequential_heuristic(%struct.uio* %67, %struct.file* %68)
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %73

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %56, %72, %66
  %74 = load %struct.uio*, %struct.uio** %7, align 8
  %75 = getelementptr inbounds %struct.uio, %struct.uio* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %12, align 8
  %77 = load %struct.vnode*, %struct.vnode** %11, align 8
  %78 = load %struct.uio*, %struct.uio** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.file*, %struct.file** %6, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @VOP_READ(%struct.vnode* %77, %struct.uio* %78, i32 %79, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.uio*, %struct.uio** %7, align 8
  %85 = getelementptr inbounds %struct.uio, %struct.uio* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.file*, %struct.file** %6, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.vnode*, %struct.vnode** %11, align 8
  %90 = call i32 @VOP_UNLOCK(%struct.vnode* %89, i32 0)
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %73
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %94, 131
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.uio*, %struct.uio** %7, align 8
  %99 = getelementptr inbounds %struct.uio, %struct.uio* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.vnode*, %struct.vnode** %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.uio*, %struct.uio** %7, align 8
  %106 = getelementptr inbounds %struct.uio, %struct.uio* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 1
  %109 = load i32, i32* @POSIX_FADV_DONTNEED, align 4
  %110 = call i32 @VOP_ADVISE(%struct.vnode* %103, i64 %104, i64 %108, i32 %109)
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %102, %96, %93, %73
  %112 = load i32, i32* %13, align 4
  ret i32 %112
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @get_advice(%struct.file*, %struct.uio*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @sequential_heuristic(%struct.uio*, %struct.file*) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_ADVISE(%struct.vnode*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
