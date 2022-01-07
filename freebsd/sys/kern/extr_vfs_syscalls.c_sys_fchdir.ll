; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fchdir_args = type { i32 }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32 }
%struct.file = type { %struct.vnode* }

@cap_fchdir_rights = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fchdir(%struct.thread* %0, %struct.fchdir_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fchdir_args*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fchdir_args* %1, %struct.fchdir_args** %5, align 8
  %11 = load %struct.fchdir_args*, %struct.fchdir_args** %5, align 8
  %12 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AUDIT_ARG_FD(i32 %13)
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load %struct.fchdir_args*, %struct.fchdir_args** %5, align 8
  %17 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @getvnode(%struct.thread* %15, i32 %18, i32* @cap_fchdir_rights, %struct.file** %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.file*, %struct.file** %9, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %6, align 8
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = call i32 @vrefact(%struct.vnode* %28)
  %30 = load %struct.file*, %struct.file** %9, align 8
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = call i32 @fdrop(%struct.file* %30, %struct.thread* %31)
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = load i32, i32* @LK_SHARED, align 4
  %35 = load i32, i32* @LK_RETRY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @vn_lock(%struct.vnode* %33, i32 %36)
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %38)
  %40 = load %struct.vnode*, %struct.vnode** %6, align 8
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = call i32 @change_dir(%struct.vnode* %40, %struct.thread* %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %67, %57, %24
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 0
  %49 = load %struct.mount*, %struct.mount** %48, align 8
  store %struct.mount* %49, %struct.mount** %8, align 8
  %50 = icmp ne %struct.mount* %49, null
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %53, label %71

53:                                               ; preds = %51
  %54 = load %struct.mount*, %struct.mount** %8, align 8
  %55 = call i64 @vfs_busy(%struct.mount* %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %43

58:                                               ; preds = %53
  %59 = load %struct.mount*, %struct.mount** %8, align 8
  %60 = load i32, i32* @LK_SHARED, align 4
  %61 = call i32 @VFS_ROOT(%struct.mount* %59, i32 %60, %struct.vnode** %7)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.mount*, %struct.mount** %8, align 8
  %63 = call i32 @vfs_unbusy(%struct.mount* %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.vnode*, %struct.vnode** %6, align 8
  %69 = call i32 @vput(%struct.vnode* %68)
  %70 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %70, %struct.vnode** %6, align 8
  br label %43

71:                                               ; preds = %66, %51
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.vnode*, %struct.vnode** %6, align 8
  %76 = call i32 @vput(%struct.vnode* %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %71
  %79 = load %struct.vnode*, %struct.vnode** %6, align 8
  %80 = call i32 @VOP_UNLOCK(%struct.vnode* %79, i32 0)
  %81 = load %struct.thread*, %struct.thread** %4, align 8
  %82 = load %struct.vnode*, %struct.vnode** %6, align 8
  %83 = call i32 @pwd_chdir(%struct.thread* %81, %struct.vnode* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %74, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @vrefact(%struct.vnode*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @change_dir(%struct.vnode*, %struct.thread*) #1

declare dso_local i64 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @VFS_ROOT(%struct.mount*, i32, %struct.vnode**) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @pwd_chdir(%struct.thread*, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
