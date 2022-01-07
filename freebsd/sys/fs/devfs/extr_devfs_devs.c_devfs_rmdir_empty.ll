; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_rmdir_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_rmdir_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { %struct.devfs_dirent*, i32 }
%struct.devfs_dirent = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"devfs_rmdir_empty: de is not a directory\00", align 1
@DE_DOOMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"devfs_rmdir_empty: . missing\00", align 1
@de_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"devfs_rmdir_empty: .. missing\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"devfs_rmdir_empty: NULL dd\00", align 1
@DEVFS_DEL_NORECURSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devfs_mount*, %struct.devfs_dirent*)* @devfs_rmdir_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_rmdir_empty(%struct.devfs_mount* %0, %struct.devfs_dirent* %1) #0 {
  %3 = alloca %struct.devfs_mount*, align 8
  %4 = alloca %struct.devfs_dirent*, align 8
  %5 = alloca %struct.devfs_dirent*, align 8
  %6 = alloca %struct.devfs_dirent*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  store %struct.devfs_mount* %0, %struct.devfs_mount** %3, align 8
  store %struct.devfs_dirent* %1, %struct.devfs_dirent** %4, align 8
  %8 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %9 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %8, i32 0, i32 1
  %10 = load i32, i32* @SX_XLOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  br label %12

12:                                               ; preds = %97, %2
  %13 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %14 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DT_DIR, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %23 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DE_DOOMED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %12
  %29 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %30 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %31 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %30, i32 0, i32 0
  %32 = load %struct.devfs_dirent*, %struct.devfs_dirent** %31, align 8
  %33 = icmp eq %struct.devfs_dirent* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %12
  br label %99

35:                                               ; preds = %28
  %36 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %37 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %36, i32 0, i32 1
  %38 = call %struct.devfs_dirent* @TAILQ_FIRST(i32* %37)
  store %struct.devfs_dirent* %38, %struct.devfs_dirent** %6, align 8
  %39 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %40 = icmp ne %struct.devfs_dirent* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %44 = load i32, i32* @de_list, align 4
  %45 = call %struct.devfs_dirent* @TAILQ_NEXT(%struct.devfs_dirent* %43, i32 %44)
  store %struct.devfs_dirent* %45, %struct.devfs_dirent** %7, align 8
  %46 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %47 = icmp ne %struct.devfs_dirent* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @KASSERT(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %51 = load i32, i32* @de_list, align 4
  %52 = call %struct.devfs_dirent* @TAILQ_NEXT(%struct.devfs_dirent* %50, i32 %51)
  %53 = icmp ne %struct.devfs_dirent* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  br label %99

55:                                               ; preds = %35
  %56 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %57 = call %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent* %56)
  store %struct.devfs_dirent* %57, %struct.devfs_dirent** %5, align 8
  %58 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %59 = icmp ne %struct.devfs_dirent* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %63 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %62, i32 0, i32 1
  %64 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %65 = load i32, i32* @de_list, align 4
  %66 = call i32 @TAILQ_REMOVE(i32* %63, %struct.devfs_dirent* %64, i32 %65)
  %67 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %68 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %67, i32 0, i32 1
  %69 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %70 = load i32, i32* @de_list, align 4
  %71 = call i32 @TAILQ_REMOVE(i32* %68, %struct.devfs_dirent* %69, i32 %70)
  %72 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %73 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %72, i32 0, i32 1
  %74 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %75 = load i32, i32* @de_list, align 4
  %76 = call i32 @TAILQ_REMOVE(i32* %73, %struct.devfs_dirent* %74, i32 %75)
  %77 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %78 = call i32 @DEVFS_DE_HOLD(%struct.devfs_dirent* %77)
  %79 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %80 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %81 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %82 = call i32 @devfs_delete(%struct.devfs_mount* %79, %struct.devfs_dirent* %80, i32 %81)
  %83 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %84 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %85 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %86 = call i32 @devfs_delete(%struct.devfs_mount* %83, %struct.devfs_dirent* %84, i32 %85)
  %87 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %88 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %89 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %90 = call i32 @devfs_delete(%struct.devfs_mount* %87, %struct.devfs_dirent* %88, i32 %89)
  %91 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %92 = call i64 @DEVFS_DE_DROP(%struct.devfs_dirent* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %55
  %95 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %96 = call i32 @devfs_dirent_free(%struct.devfs_dirent* %95)
  br label %99

97:                                               ; preds = %55
  %98 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  store %struct.devfs_dirent* %98, %struct.devfs_dirent** %4, align 8
  br label %12

99:                                               ; preds = %94, %54, %34
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.devfs_dirent* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.devfs_dirent* @TAILQ_NEXT(%struct.devfs_dirent*, i32) #1

declare dso_local %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.devfs_dirent*, i32) #1

declare dso_local i32 @DEVFS_DE_HOLD(%struct.devfs_dirent*) #1

declare dso_local i32 @devfs_delete(%struct.devfs_mount*, %struct.devfs_dirent*, i32) #1

declare dso_local i64 @DEVFS_DE_DROP(%struct.devfs_dirent*) #1

declare dso_local i32 @devfs_dirent_free(%struct.devfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
