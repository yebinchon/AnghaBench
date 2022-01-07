; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_updfilerev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_updfilerev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsrv_descript = type { i32 }
%struct.thread = type { i32 }
%struct.vattr = type { i32 }

@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_updfilerev(%struct.vnode* %0, %struct.nfsvattr* %1, %struct.nfsrv_descript* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.nfsvattr*, align 8
  %8 = alloca %struct.nfsrv_descript*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.vattr, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %7, align 8
  store %struct.nfsrv_descript* %2, %struct.nfsrv_descript** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = call i32 @VATTR_NULL(%struct.vattr* %10)
  %12 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %13 = call i32 @vfs_timestamp(i32* %12)
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call i64 @NFSVOPISLOCKED(%struct.vnode* %14)
  %16 = load i64, i64* @LK_EXCLUSIVE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = load i32, i32* @LK_UPGRADE, align 4
  %21 = load i32, i32* @LK_RETRY, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @NFSVOPLOCK(%struct.vnode* %19, i32 %22)
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VI_DOOMED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @ESTALE, align 4
  store i32 %31, i32* %5, align 4
  br label %44

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.vnode*, %struct.vnode** %6, align 8
  %35 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %8, align 8
  %36 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VOP_SETATTR(%struct.vnode* %34, %struct.vattr* %10, i32 %37)
  %39 = load %struct.vnode*, %struct.vnode** %6, align 8
  %40 = load %struct.nfsvattr*, %struct.nfsvattr** %7, align 8
  %41 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %8, align 8
  %42 = load %struct.thread*, %struct.thread** %9, align 8
  %43 = call i32 @nfsvno_getattr(%struct.vnode* %39, %struct.nfsvattr* %40, %struct.nfsrv_descript* %41, %struct.thread* %42, i32 1, i32* null)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %33, %30
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i64 @NFSVOPISLOCKED(%struct.vnode*) #1

declare dso_local i32 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @nfsvno_getattr(%struct.vnode*, %struct.nfsvattr*, %struct.nfsrv_descript*, %struct.thread*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
