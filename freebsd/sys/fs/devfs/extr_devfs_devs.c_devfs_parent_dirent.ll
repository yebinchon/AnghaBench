; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_parent_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_parent_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_dirent = type { i32, %struct.devfs_dirent*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DT_DIR = common dso_local global i64 0, align 8
@DE_DOT = common dso_local global i32 0, align 4
@DE_DOTDOT = common dso_local global i32 0, align 4
@de_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent* %0) #0 {
  %2 = alloca %struct.devfs_dirent*, align 8
  %3 = alloca %struct.devfs_dirent*, align 8
  store %struct.devfs_dirent* %0, %struct.devfs_dirent** %3, align 8
  %4 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %5 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DT_DIR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %13 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %12, i32 0, i32 1
  %14 = load %struct.devfs_dirent*, %struct.devfs_dirent** %13, align 8
  store %struct.devfs_dirent* %14, %struct.devfs_dirent** %2, align 8
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %17 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DE_DOT, align 4
  %20 = load i32, i32* @DE_DOTDOT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store %struct.devfs_dirent* null, %struct.devfs_dirent** %2, align 8
  br label %43

25:                                               ; preds = %15
  %26 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %27 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %26, i32 0, i32 2
  %28 = call %struct.devfs_dirent* @TAILQ_FIRST(i32* %27)
  store %struct.devfs_dirent* %28, %struct.devfs_dirent** %3, align 8
  %29 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %30 = icmp eq %struct.devfs_dirent* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.devfs_dirent* null, %struct.devfs_dirent** %2, align 8
  br label %43

32:                                               ; preds = %25
  %33 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %34 = load i32, i32* @de_list, align 4
  %35 = call %struct.devfs_dirent* @TAILQ_NEXT(%struct.devfs_dirent* %33, i32 %34)
  store %struct.devfs_dirent* %35, %struct.devfs_dirent** %3, align 8
  %36 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %37 = icmp eq %struct.devfs_dirent* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.devfs_dirent* null, %struct.devfs_dirent** %2, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %41 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %40, i32 0, i32 1
  %42 = load %struct.devfs_dirent*, %struct.devfs_dirent** %41, align 8
  store %struct.devfs_dirent* %42, %struct.devfs_dirent** %2, align 8
  br label %43

43:                                               ; preds = %39, %38, %31, %24, %11
  %44 = load %struct.devfs_dirent*, %struct.devfs_dirent** %2, align 8
  ret %struct.devfs_dirent* %44
}

declare dso_local %struct.devfs_dirent* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.devfs_dirent* @TAILQ_NEXT(%struct.devfs_dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
