; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfssetfh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_pnfssetfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfsdsfile = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NFSX_MYFH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@IO_NODELOCKED = common dso_local global i32 0, align 4
@EXTATTR_NAMESPACE_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pnfsd.dsfile\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"eo nfsrv_pnfssetfh=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.pnfsdsfile*, i8*, i8*, %struct.vnode*, i32*)* @nfsrv_pnfssetfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_pnfssetfh(%struct.vnode* %0, %struct.pnfsdsfile* %1, i8* %2, i8* %3, %struct.vnode* %4, i32* %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.pnfsdsfile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nfsnode*, align 8
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.pnfsdsfile* %1, %struct.pnfsdsfile** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vnode* %4, %struct.vnode** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.vnode*, %struct.vnode** %11, align 8
  %16 = call %struct.nfsnode* @VTONFS(%struct.vnode* %15)
  store %struct.nfsnode* %16, %struct.nfsnode** %13, align 8
  %17 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %18 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %8, align 8
  %23 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %22, i32 0, i32 0
  %24 = load i32, i32* @NFSX_MYFH, align 4
  %25 = call i32 @NFSBCOPY(i32 %21, i32* %23, i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %6
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.vnode*, %struct.vnode** %7, align 8
  %33 = call i64 @NFSVOPISLOCKED(%struct.vnode* %32)
  %34 = load i64, i64* @LK_EXCLUSIVE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.vnode*, %struct.vnode** %7, align 8
  %38 = load i32, i32* @IO_NODELOCKED, align 4
  %39 = load i32, i32* @EXTATTR_NAMESPACE_SYSTEM, align 4
  %40 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %8, align 8
  %41 = bitcast %struct.pnfsdsfile* %40 to i8*
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @vn_extattr_set(%struct.vnode* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4, i8* %41, i32* %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %36, %31, %28, %6
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSBCOPY(i32, i32*, i32) #1

declare dso_local i64 @NFSVOPISLOCKED(%struct.vnode*) #1

declare dso_local i32 @vn_extattr_set(%struct.vnode*, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
