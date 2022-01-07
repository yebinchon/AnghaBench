; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vfsops.c_tmpfs_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64, i32, i32* }
%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i64 }

@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@VR_START_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@MNT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @tmpfs_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmpfs_mount*, align 8
  %7 = alloca %struct.tmpfs_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MNT_FORCE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FORCECLOSE, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mount*, %struct.mount** %4, align 8
  %20 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(%struct.mount* %19)
  store %struct.tmpfs_mount* %20, %struct.tmpfs_mount** %6, align 8
  %21 = load %struct.mount*, %struct.mount** %4, align 8
  %22 = call i32 @vfs_write_suspend_umnt(%struct.mount* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %113

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %62, %27
  %29 = load %struct.mount*, %struct.mount** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @curthread, align 4
  %32 = call i32 @vflush(%struct.mount* %29, i32 0, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.mount*, %struct.mount** %4, align 8
  %37 = load i32, i32* @VR_START_WRITE, align 4
  %38 = call i32 @vfs_write_resume(%struct.mount* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %113

40:                                               ; preds = %28
  %41 = load %struct.mount*, %struct.mount** %4, align 8
  %42 = call i32 @MNT_ILOCK(%struct.mount* %41)
  %43 = load %struct.mount*, %struct.mount** %4, align 8
  %44 = getelementptr inbounds %struct.mount, %struct.mount* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.mount*, %struct.mount** %4, align 8
  %49 = call i32 @MNT_IUNLOCK(%struct.mount* %48)
  br label %63

50:                                               ; preds = %40
  %51 = load %struct.mount*, %struct.mount** %4, align 8
  %52 = call i32 @MNT_IUNLOCK(%struct.mount* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MNT_FORCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.mount*, %struct.mount** %4, align 8
  %59 = load i32, i32* @VR_START_WRITE, align 4
  %60 = call i32 @vfs_write_resume(%struct.mount* %58, i32 %59)
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %3, align 4
  br label %113

62:                                               ; preds = %50
  br label %28

63:                                               ; preds = %47
  %64 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %65 = call i32 @TMPFS_LOCK(%struct.tmpfs_mount* %64)
  br label %66

66:                                               ; preds = %94, %63
  %67 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %68 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %67, i32 0, i32 0
  %69 = call %struct.tmpfs_node* @LIST_FIRST(i32* %68)
  store %struct.tmpfs_node* %69, %struct.tmpfs_node** %7, align 8
  %70 = icmp ne %struct.tmpfs_node* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %73 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %72)
  %74 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %75 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VDIR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %81 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %82 = call i32 @tmpfs_dir_destroy(%struct.tmpfs_mount* %80, %struct.tmpfs_node* %81)
  br label %83

83:                                               ; preds = %79, %71
  %84 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %85 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %86 = call i64 @tmpfs_free_node_locked(%struct.tmpfs_mount* %84, %struct.tmpfs_node* %85, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %90 = call i32 @TMPFS_LOCK(%struct.tmpfs_mount* %89)
  br label %94

91:                                               ; preds = %83
  %92 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %93 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %66

95:                                               ; preds = %66
  %96 = load %struct.mount*, %struct.mount** %4, align 8
  %97 = getelementptr inbounds %struct.mount, %struct.mount* %96, i32 0, i32 2
  store i32* null, i32** %97, align 8
  %98 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %99 = call i32 @tmpfs_free_tmp(%struct.tmpfs_mount* %98)
  %100 = load %struct.mount*, %struct.mount** %4, align 8
  %101 = load i32, i32* @VR_START_WRITE, align 4
  %102 = call i32 @vfs_write_resume(%struct.mount* %100, i32 %101)
  %103 = load %struct.mount*, %struct.mount** %4, align 8
  %104 = call i32 @MNT_ILOCK(%struct.mount* %103)
  %105 = load i32, i32* @MNT_LOCAL, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.mount*, %struct.mount** %4, align 8
  %108 = getelementptr inbounds %struct.mount, %struct.mount* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.mount*, %struct.mount** %4, align 8
  %112 = call i32 @MNT_IUNLOCK(%struct.mount* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %95, %57, %35, %25
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(%struct.mount*) #1

declare dso_local i32 @vfs_write_suspend_umnt(%struct.mount*) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @vfs_write_resume(%struct.mount*, i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @TMPFS_LOCK(%struct.tmpfs_mount*) #1

declare dso_local %struct.tmpfs_node* @LIST_FIRST(i32*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_dir_destroy(%struct.tmpfs_mount*, %struct.tmpfs_node*) #1

declare dso_local i64 @tmpfs_free_node_locked(%struct.tmpfs_mount*, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_free_tmp(%struct.tmpfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
