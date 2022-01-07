; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_foffset_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_foffset_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.mtx = type { i32 }

@FOF_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FOF_OFFSET passed\00", align 1
@FOF_NOLOCK = common dso_local global i32 0, align 4
@mtxpool_sleep = common dso_local global i32 0, align 4
@FOFFSET_LOCKED = common dso_local global i32 0, align 4
@FOFFSET_LOCK_WAITING = common dso_local global i32 0, align 4
@PUSER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"vofflock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foffset_lock(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @FOF_OFFSET, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FOF_NOLOCK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = load i32, i32* @mtxpool_sleep, align 4
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = call %struct.mtx* @mtx_pool_find(i32 %23, %struct.file* %24)
  store %struct.mtx* %25, %struct.mtx** %6, align 8
  %26 = load %struct.mtx*, %struct.mtx** %6, align 8
  %27 = call i32 @mtx_lock(%struct.mtx* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @FOF_NOLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %40, %32
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FOFFSET_LOCKED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* @FOFFSET_LOCK_WAITING, align 4
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load %struct.mtx*, %struct.mtx** %6, align 8
  %49 = load i64, i64* @PUSER, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call i32 @msleep(i32* %47, %struct.mtx* %48, i64 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %33

52:                                               ; preds = %33
  %53 = load i32, i32* @FOFFSET_LOCKED, align 4
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %22
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.mtx*, %struct.mtx** %6, align 8
  %63 = call i32 @mtx_unlock(%struct.mtx* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.file*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @msleep(i32*, %struct.mtx*, i64, i8*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
