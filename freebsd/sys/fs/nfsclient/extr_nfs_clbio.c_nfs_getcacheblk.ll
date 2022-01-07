; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_nfs_getcacheblk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_nfs_getcacheblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.vnode = type { i64, %struct.TYPE_2__, %struct.mount* }
%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32 }
%struct.thread = type { i32 }
%struct.nfsmount = type { i32 }

@NFSMNT_INT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (%struct.vnode*, i32, i32, %struct.thread*)* @nfs_getcacheblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @nfs_getcacheblk(%struct.vnode* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca %struct.mount*, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 2
  %16 = load %struct.mount*, %struct.mount** %15, align 8
  store %struct.mount* %16, %struct.mount** %11, align 8
  %17 = load %struct.mount*, %struct.mount** %11, align 8
  %18 = call %struct.nfsmount* @VFSTONFS(%struct.mount* %17)
  store %struct.nfsmount* %18, %struct.nfsmount** %12, align 8
  %19 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %20 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFSMNT_INT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %4
  %26 = load %struct.thread*, %struct.thread** %9, align 8
  %27 = call i32 @newnfs_set_sigmask(%struct.thread* %26, i32* %13)
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PCATCH, align 4
  %32 = call %struct.buf* @getblk(%struct.vnode* %28, i32 %29, i32 %30, i32 %31, i32 0, i32 0)
  store %struct.buf* %32, %struct.buf** %10, align 8
  %33 = load %struct.thread*, %struct.thread** %9, align 8
  %34 = call i32 @newnfs_restore_sigmask(%struct.thread* %33, i32* %13)
  br label %35

35:                                               ; preds = %44, %25
  %36 = load %struct.buf*, %struct.buf** %10, align 8
  %37 = icmp eq %struct.buf* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %40 = load %struct.thread*, %struct.thread** %9, align 8
  %41 = call i64 @newnfs_sigintr(%struct.nfsmount* %39, %struct.thread* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store %struct.buf* null, %struct.buf** %5, align 8
  br label %76

44:                                               ; preds = %38
  %45 = load %struct.vnode*, %struct.vnode** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @hz, align 4
  %49 = mul nsw i32 2, %48
  %50 = call %struct.buf* @getblk(%struct.vnode* %45, i32 %46, i32 %47, i32 0, i32 %49, i32 0)
  store %struct.buf* %50, %struct.buf** %10, align 8
  br label %35

51:                                               ; preds = %35
  br label %57

52:                                               ; preds = %4
  %53 = load %struct.vnode*, %struct.vnode** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.buf* @getblk(%struct.vnode* %53, i32 %54, i32 %55, i32 0, i32 0, i32 0)
  store %struct.buf* %56, %struct.buf** %10, align 8
  br label %57

57:                                               ; preds = %52, %51
  %58 = load %struct.vnode*, %struct.vnode** %6, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VREG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.vnode*, %struct.vnode** %6, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DEV_BSIZE, align 4
  %70 = sdiv i32 %68, %69
  %71 = mul nsw i32 %64, %70
  %72 = load %struct.buf*, %struct.buf** %10, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %63, %57
  %75 = load %struct.buf*, %struct.buf** %10, align 8
  store %struct.buf* %75, %struct.buf** %5, align 8
  br label %76

76:                                               ; preds = %74, %43
  %77 = load %struct.buf*, %struct.buf** %5, align 8
  ret %struct.buf* %77
}

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.mount*) #1

declare dso_local i32 @newnfs_set_sigmask(%struct.thread*, i32*) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @newnfs_restore_sigmask(%struct.thread*, i32*) #1

declare dso_local i64 @newnfs_sigintr(%struct.nfsmount*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
