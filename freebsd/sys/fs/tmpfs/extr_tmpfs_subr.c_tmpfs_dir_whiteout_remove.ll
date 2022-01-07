; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_whiteout_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_whiteout_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32 }
%struct.tmpfs_dirent = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_dir_whiteout_remove(%struct.vnode* %0, %struct.componentname* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.componentname* %1, %struct.componentname** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = call i32 @VP_TO_TMPFS_DIR(%struct.vnode* %6)
  %8 = load %struct.componentname*, %struct.componentname** %4, align 8
  %9 = call %struct.tmpfs_dirent* @tmpfs_dir_lookup(i32 %7, i32* null, %struct.componentname* %8)
  store %struct.tmpfs_dirent* %9, %struct.tmpfs_dirent** %5, align 8
  %10 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %11 = icmp ne %struct.tmpfs_dirent* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %14 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %23 = call i32 @tmpfs_dir_detach(%struct.vnode* %21, %struct.tmpfs_dirent* %22)
  %24 = load %struct.vnode*, %struct.vnode** %3, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VFS_TO_TMPFS(i32 %26)
  %28 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %5, align 8
  %29 = call i32 @tmpfs_free_dirent(i32 %27, %struct.tmpfs_dirent* %28)
  ret void
}

declare dso_local %struct.tmpfs_dirent* @tmpfs_dir_lookup(i32, i32*, %struct.componentname*) #1

declare dso_local i32 @VP_TO_TMPFS_DIR(%struct.vnode*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tmpfs_dir_detach(%struct.vnode*, %struct.tmpfs_dirent*) #1

declare dso_local i32 @tmpfs_free_dirent(i32, %struct.tmpfs_dirent*) #1

declare dso_local i32 @VFS_TO_TMPFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
