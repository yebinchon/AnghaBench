; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_getfhat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_getfhat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.nameidata = type { %struct.vnode* }
%struct.vnode = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PRIV_VFS_GETFH = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@BENEATH = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32, i8*, i32, %struct.TYPE_10__*)* @kern_getfhat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_getfhat(%struct.thread* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_10__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.nameidata, align 8
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %13, align 8
  %18 = load %struct.thread*, %struct.thread** %8, align 8
  %19 = load i32, i32* @PRIV_VFS_GETFH, align 4
  %20 = call i32 @priv_check(%struct.thread* %18, i32 %19)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %17, align 4
  store i32 %24, i32* %7, align 4
  br label %86

25:                                               ; preds = %6
  %26 = load i32, i32* @LOOKUP, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @NOFOLLOW, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @FOLLOW, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @AT_BENEATH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @BENEATH, align 4
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %36, %45
  %47 = load i32, i32* @LOCKLEAF, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AUDITVNODE1, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.thread*, %struct.thread** %8, align 8
  %55 = call i32 @NDINIT_AT(%struct.nameidata* %14, i32 %26, i32 %50, i32 %51, i8* %52, i32 %53, %struct.thread* %54)
  %56 = call i32 @namei(%struct.nameidata* %14)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %7, align 4
  br label %86

61:                                               ; preds = %44
  %62 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %63 = call i32 @NDFREE(%struct.nameidata* %14, i32 %62)
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %65 = load %struct.vnode*, %struct.vnode** %64, align 8
  store %struct.vnode* %65, %struct.vnode** %16, align 8
  %66 = call i32 @bzero(%struct.TYPE_10__* %15, i32 8)
  %67 = load %struct.vnode*, %struct.vnode** %16, align 8
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.vnode*, %struct.vnode** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %76 = call i32 @VOP_VPTOFH(%struct.vnode* %74, i32* %75)
  store i32 %76, i32* %17, align 4
  %77 = load %struct.vnode*, %struct.vnode** %16, align 8
  %78 = call i32 @vput(%struct.vnode* %77)
  %79 = load i32, i32* %17, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %61
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %83 = call i32 @copyout(%struct.TYPE_10__* %15, %struct.TYPE_10__* %82, i32 8)
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %81, %61
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %59, %23
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @NDINIT_AT(%struct.nameidata*, i32, i32, i32, i8*, i32, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @VOP_VPTOFH(%struct.vnode*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @copyout(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
