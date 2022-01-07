; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_foffset_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_foffset_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i8*, i8* }
%struct.mtx = type { i32 }

@FOF_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FOF_OFFSET passed\00", align 1
@FOF_NOLOCK = common dso_local global i32 0, align 4
@FOF_NOUPDATE = common dso_local global i32 0, align 4
@FOF_NEXTOFF = common dso_local global i32 0, align 4
@mtxpool_sleep = common dso_local global i32 0, align 4
@FOFFSET_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Lost FOFFSET_LOCKED\00", align 1
@FOFFSET_LOCK_WAITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foffset_unlock(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @FOF_OFFSET, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FOF_NOLOCK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @FOF_NOUPDATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FOF_NEXTOFF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %27
  br label %90

37:                                               ; preds = %3
  %38 = load i32, i32* @mtxpool_sleep, align 4
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = call %struct.mtx* @mtx_pool_find(i32 %38, %struct.file* %39)
  store %struct.mtx* %40, %struct.mtx** %7, align 8
  %41 = load %struct.mtx*, %struct.mtx** %7, align 8
  %42 = call i32 @mtx_lock(%struct.mtx* %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FOF_NOUPDATE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %37
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FOF_NEXTOFF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @FOF_NOLOCK, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FOFFSET_LOCKED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @KASSERT(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.file*, %struct.file** %4, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FOFFSET_LOCK_WAITING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %65
  %81 = load %struct.file*, %struct.file** %4, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = call i32 @wakeup(i32* %82)
  br label %84

84:                                               ; preds = %80, %65
  %85 = load %struct.file*, %struct.file** %4, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %60
  %88 = load %struct.mtx*, %struct.mtx** %7, align 8
  %89 = call i32 @mtx_unlock(%struct.mtx* %88)
  br label %90

90:                                               ; preds = %87, %36
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.file*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
