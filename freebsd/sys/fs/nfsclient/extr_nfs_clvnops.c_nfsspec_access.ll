; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfsspec_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfsspec_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, %struct.vnode*, %struct.ucred* }
%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.vattr = type { i32, i32, i32 }

@VWRITE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @nfsspec_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsspec_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vattr, align 4
  %9 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %10 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %10, i32 0, i32 2
  %12 = load %struct.ucred*, %struct.ucred** %11, align 8
  store %struct.ucred* %12, %struct.ucred** %5, align 8
  %13 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %6, align 8
  %16 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @VWRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MNT_RDONLY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %38 [
    i32 128, label %36
    i32 130, label %36
    i32 129, label %36
  ]

36:                                               ; preds = %32, %32, %32
  %37 = load i32, i32* @EROFS, align 4
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %23, %1
  store %struct.vattr* %8, %struct.vattr** %4, align 8
  %41 = load %struct.vnode*, %struct.vnode** %6, align 8
  %42 = load %struct.vattr*, %struct.vattr** %4, align 8
  %43 = load %struct.ucred*, %struct.ucred** %5, align 8
  %44 = call i32 @VOP_GETATTR(%struct.vnode* %41, %struct.vattr* %42, %struct.ucred* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %64

48:                                               ; preds = %40
  %49 = load %struct.vnode*, %struct.vnode** %6, align 8
  %50 = getelementptr inbounds %struct.vnode, %struct.vnode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vattr*, %struct.vattr** %4, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vattr*, %struct.vattr** %4, align 8
  %56 = getelementptr inbounds %struct.vattr, %struct.vattr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vattr*, %struct.vattr** %4, align 8
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ucred*, %struct.ucred** %5, align 8
  %63 = call i32 @vaccess(i32 %51, i32 %54, i32 %57, i32 %60, i32 %61, %struct.ucred* %62, i32* null)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %48, %47
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %36
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, %struct.ucred*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
