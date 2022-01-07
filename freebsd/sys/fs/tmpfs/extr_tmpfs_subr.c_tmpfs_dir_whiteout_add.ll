; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_whiteout_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_whiteout_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32 }
%struct.tmpfs_dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_dir_whiteout_add(%struct.vnode* %0, %struct.componentname* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.tmpfs_dirent*, align 8
  %7 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.componentname* %1, %struct.componentname** %5, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VFS_TO_TMPFS(i32 %10)
  %12 = load %struct.componentname*, %struct.componentname** %5, align 8
  %13 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.componentname*, %struct.componentname** %5, align 8
  %16 = getelementptr inbounds %struct.componentname, %struct.componentname* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tmpfs_alloc_dirent(i32 %11, i32* null, i32 %14, i32 %17, %struct.tmpfs_dirent** %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %26 = call i32 @tmpfs_dir_attach(%struct.vnode* %24, %struct.tmpfs_dirent* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @tmpfs_alloc_dirent(i32, i32*, i32, i32, %struct.tmpfs_dirent**) #1

declare dso_local i32 @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @tmpfs_dir_attach(%struct.vnode*, %struct.tmpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
