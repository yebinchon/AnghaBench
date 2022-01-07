; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_vmkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_vmkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i32, i32 }
%struct.devfs_dirent = type { i32, i32, i32, %struct.devfs_dirent*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8* }

@DT_DIR = common dso_local global i8* null, align 8
@devfs_inos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DE_DOT = common dso_local global i32 0, align 4
@de_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DE_DOTDOT = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devfs_dirent* @devfs_vmkdir(%struct.devfs_mount* %0, i8* %1, i32 %2, %struct.devfs_dirent* %3, i64 %4) #0 {
  %6 = alloca %struct.devfs_mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.devfs_dirent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.devfs_dirent*, align 8
  %12 = alloca %struct.devfs_dirent*, align 8
  store %struct.devfs_mount* %0, %struct.devfs_mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.devfs_dirent* %3, %struct.devfs_dirent** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.devfs_dirent* @devfs_newdirent(i8* %13, i32 %14)
  store %struct.devfs_dirent* %15, %struct.devfs_dirent** %11, align 8
  %16 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %17 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %16, i32 0, i32 2
  %18 = call i32 @TAILQ_INIT(i32* %17)
  %19 = load i8*, i8** @DT_DIR, align 8
  %20 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %21 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %19, i8** %23, align 8
  %24 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %25 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %24, i32 0, i32 0
  store i32 365, i32* %25, align 8
  %26 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %27 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %26, i32 0, i32 1
  store i32 2, i32* %27, align 4
  %28 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %29 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %30 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %29, i32 0, i32 3
  store %struct.devfs_dirent* %28, %struct.devfs_dirent** %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %36 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  br label %42

37:                                               ; preds = %5
  %38 = load i32, i32* @devfs_inos, align 4
  %39 = call i64 @alloc_unr(i32 %38)
  %40 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %41 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %40, i32 0, i32 6
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %33
  %43 = call %struct.devfs_dirent* @devfs_newdirent(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store %struct.devfs_dirent* %43, %struct.devfs_dirent** %12, align 8
  %44 = load i8*, i8** @DT_DIR, align 8
  %45 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %46 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* @DE_DOT, align 4
  %50 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %51 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %55 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %54, i32 0, i32 2
  %56 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %57 = load i32, i32* @de_list, align 4
  %58 = call i32 @TAILQ_INSERT_TAIL(i32* %55, %struct.devfs_dirent* %56, i32 %57)
  %59 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %60 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %61 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %60, i32 0, i32 3
  store %struct.devfs_dirent* %59, %struct.devfs_dirent** %61, align 8
  %62 = call %struct.devfs_dirent* @devfs_newdirent(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store %struct.devfs_dirent* %62, %struct.devfs_dirent** %12, align 8
  %63 = load i8*, i8** @DT_DIR, align 8
  %64 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %65 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %64, i32 0, i32 5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %63, i8** %67, align 8
  %68 = load i32, i32* @DE_DOTDOT, align 4
  %69 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %70 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %74 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %73, i32 0, i32 2
  %75 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %76 = load i32, i32* @de_list, align 4
  %77 = call i32 @TAILQ_INSERT_TAIL(i32* %74, %struct.devfs_dirent* %75, i32 %76)
  %78 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %79 = icmp eq %struct.devfs_dirent* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %42
  %81 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %82 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %83 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %82, i32 0, i32 3
  store %struct.devfs_dirent* %81, %struct.devfs_dirent** %83, align 8
  br label %104

84:                                               ; preds = %42
  %85 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %86 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  %87 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %86, i32 0, i32 3
  store %struct.devfs_dirent* %85, %struct.devfs_dirent** %87, align 8
  %88 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %89 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %88, i32 0, i32 1
  %90 = load i32, i32* @SX_XLOCKED, align 4
  %91 = call i32 @sx_assert(i32* %89, i32 %90)
  %92 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %93 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %92, i32 0, i32 2
  %94 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %95 = load i32, i32* @de_list, align 4
  %96 = call i32 @TAILQ_INSERT_TAIL(i32* %93, %struct.devfs_dirent* %94, i32 %95)
  %97 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %98 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %102 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %103 = call i32 @devfs_rules_apply(%struct.devfs_mount* %101, %struct.devfs_dirent* %102)
  br label %104

104:                                              ; preds = %84, %80
  %105 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  ret %struct.devfs_dirent* %105
}

declare dso_local %struct.devfs_dirent* @devfs_newdirent(i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @alloc_unr(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.devfs_dirent*, i32) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @devfs_rules_apply(%struct.devfs_mount*, %struct.devfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
