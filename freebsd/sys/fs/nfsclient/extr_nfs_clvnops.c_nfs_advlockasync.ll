; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_advlockasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_advlockasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_advlockasync_args = type { %struct.vnode* }
%struct.vnode = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@NFSMNT_NOLOCKD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_advlockasync_args*)* @nfs_advlockasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_advlockasync(%struct.vop_advlockasync_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_advlockasync_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vop_advlockasync_args* %0, %struct.vop_advlockasync_args** %3, align 8
  %7 = load %struct.vop_advlockasync_args*, %struct.vop_advlockasync_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %7, i32 0, i32 0
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = call i64 @NFS_ISV4(%struct.vnode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = load i32, i32* @LK_SHARED, align 4
  %18 = call i32 @NFSVOPLOCK(%struct.vnode* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_4__* @VFSTONFS(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NFSMNT_NOLOCKD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = call %struct.TYPE_3__* @VTONFS(%struct.vnode* %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.vnode*, %struct.vnode** %4, align 8
  %39 = call i32 @NFSVOPUNLOCK(%struct.vnode* %38, i32 0)
  %40 = load %struct.vop_advlockasync_args*, %struct.vop_advlockasync_args** %3, align 8
  %41 = load %struct.vnode*, %struct.vnode** %4, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @lf_advlockasync(%struct.vop_advlockasync_args* %40, i32* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %23
  %46 = load %struct.vnode*, %struct.vnode** %4, align 8
  %47 = call i32 @NFSVOPUNLOCK(%struct.vnode* %46, i32 0)
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %33
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %21, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local %struct.TYPE_4__* @VFSTONFS(i32) #1

declare dso_local %struct.TYPE_3__* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @lf_advlockasync(%struct.vop_advlockasync_args*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
