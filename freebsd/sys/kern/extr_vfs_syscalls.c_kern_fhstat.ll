; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fhstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fhstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.stat = type { i32 }
%struct.fhandle = type { i32, i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }

@PRIV_VFS_FHSTAT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fhstat(%struct.thread* %0, i64 %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fhandle, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.fhandle* %5 to i64*
  store i64 %1, i64* %11, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %6, align 8
  %13 = load i32, i32* @PRIV_VFS_FHSTAT, align 4
  %14 = call i32 @priv_check(%struct.thread* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.fhandle, %struct.fhandle* %5, i32 0, i32 1
  %21 = call %struct.mount* @vfs_busyfs(i32* %20)
  store %struct.mount* %21, %struct.mount** %8, align 8
  %22 = icmp eq %struct.mount* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ESTALE, align 4
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %19
  %26 = load %struct.mount*, %struct.mount** %8, align 8
  %27 = getelementptr inbounds %struct.fhandle, %struct.fhandle* %5, i32 0, i32 0
  %28 = load i32, i32* @LK_EXCLUSIVE, align 4
  %29 = call i32 @VFS_FHTOVP(%struct.mount* %26, i32* %27, i32 %28, %struct.vnode** %9)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mount*, %struct.mount** %8, align 8
  %31 = call i32 @vfs_unbusy(%struct.mount* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %25
  %37 = load %struct.vnode*, %struct.vnode** %9, align 8
  %38 = load %struct.stat*, %struct.stat** %7, align 8
  %39 = load %struct.thread*, %struct.thread** %6, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NOCRED, align 4
  %43 = load %struct.thread*, %struct.thread** %6, align 8
  %44 = call i32 @vn_stat(%struct.vnode* %37, %struct.stat* %38, i32 %41, i32 %42, %struct.thread* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.vnode*, %struct.vnode** %9, align 8
  %46 = call i32 @vput(%struct.vnode* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %36, %34, %23, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local %struct.mount* @vfs_busyfs(i32*) #1

declare dso_local i32 @VFS_FHTOVP(%struct.mount*, i32*, i32, %struct.vnode**) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vn_stat(%struct.vnode*, %struct.stat*, i32, i32, %struct.thread*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
