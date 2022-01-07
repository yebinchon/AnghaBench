; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i32 }
%struct.devfs_dirent = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@devfs_dlist_head = common dso_local global i32 0, align 4
@de_list = common dso_local global i32 0, align 4
@DE_USER = common dso_local global i32 0, align 4
@DE_DOT = common dso_local global i32 0, align 4
@DE_DOTDOT = common dso_local global i32 0, align 4
@DEVFS_DEL_NORECURSE = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8
@DE_DOOMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devfs_mount*, %struct.devfs_dirent*)* @devfs_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_purge(%struct.devfs_mount* %0, %struct.devfs_dirent* %1) #0 {
  %3 = alloca %struct.devfs_mount*, align 8
  %4 = alloca %struct.devfs_dirent*, align 8
  %5 = alloca %struct.devfs_dirent*, align 8
  store %struct.devfs_mount* %0, %struct.devfs_mount** %3, align 8
  store %struct.devfs_dirent* %1, %struct.devfs_dirent** %4, align 8
  %6 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %7 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %6, i32 0, i32 0
  %8 = load i32, i32* @SX_XLOCKED, align 4
  %9 = call i32 @sx_assert(i32* %7, i32 %8)
  %10 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %11 = call i32 @DEVFS_DE_HOLD(%struct.devfs_dirent* %10)
  br label %12

12:                                               ; preds = %67, %2
  %13 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %14 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %13, i32 0, i32 2
  %15 = load i32, i32* @devfs_dlist_head, align 4
  %16 = call %struct.devfs_dirent* @TAILQ_LAST(i32* %14, i32 %15)
  store %struct.devfs_dirent* %16, %struct.devfs_dirent** %5, align 8
  %17 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %18 = icmp eq %struct.devfs_dirent* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %68

20:                                               ; preds = %12
  %21 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %22 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %21, i32 0, i32 2
  %23 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %24 = load i32, i32* @de_list, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.devfs_dirent* %23, i32 %24)
  %26 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %27 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DE_USER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %34 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %35 = call i32 @devfs_dir_unref_de(%struct.devfs_mount* %33, %struct.devfs_dirent* %34)
  br label %36

36:                                               ; preds = %32, %20
  %37 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %38 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DE_DOT, align 4
  %41 = load i32, i32* @DE_DOTDOT, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %47 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %48 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %49 = call i32 @devfs_delete(%struct.devfs_mount* %46, %struct.devfs_dirent* %47, i32 %48)
  br label %67

50:                                               ; preds = %36
  %51 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %52 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DT_DIR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %60 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  call void @devfs_purge(%struct.devfs_mount* %59, %struct.devfs_dirent* %60)
  br label %66

61:                                               ; preds = %50
  %62 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %63 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %64 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %65 = call i32 @devfs_delete(%struct.devfs_mount* %62, %struct.devfs_dirent* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %45
  br label %12

68:                                               ; preds = %19
  %69 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %70 = call i64 @DEVFS_DE_DROP(%struct.devfs_dirent* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %74 = call i32 @devfs_dirent_free(%struct.devfs_dirent* %73)
  br label %88

75:                                               ; preds = %68
  %76 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %77 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DE_DOOMED, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %84 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %85 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %86 = call i32 @devfs_delete(%struct.devfs_mount* %83, %struct.devfs_dirent* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87, %72
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @DEVFS_DE_HOLD(%struct.devfs_dirent*) #1

declare dso_local %struct.devfs_dirent* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.devfs_dirent*, i32) #1

declare dso_local i32 @devfs_dir_unref_de(%struct.devfs_mount*, %struct.devfs_dirent*) #1

declare dso_local i32 @devfs_delete(%struct.devfs_mount*, %struct.devfs_dirent*, i32) #1

declare dso_local i64 @DEVFS_DE_DROP(%struct.devfs_dirent*) #1

declare dso_local i32 @devfs_dirent_free(%struct.devfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
