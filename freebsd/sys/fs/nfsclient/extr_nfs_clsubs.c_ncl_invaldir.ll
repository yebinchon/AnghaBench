; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_invaldir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_invaldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.nfsnode = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64* }
%struct.TYPE_4__ = type { i64 }

@VDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"nfs: invaldir not dir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncl_invaldir(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.nfsnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = call %struct.nfsnode* @VTONFS(%struct.vnode* %4)
  store %struct.nfsnode* %5, %struct.nfsnode** %3, align 8
  %6 = load %struct.vnode*, %struct.vnode** %2, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VDIR, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %14 = call i32 @ncl_dircookie_lock(%struct.nfsnode* %13)
  %15 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %16 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %18 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %23 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %28 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %27, i32 0, i32 0
  %29 = call %struct.TYPE_4__* @LIST_FIRST(i32* %28)
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %33 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %32, i32 0, i32 0
  %34 = call %struct.TYPE_4__* @LIST_FIRST(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %38 = call i32 @ncl_dircookie_unlock(%struct.nfsnode* %37)
  ret void
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ncl_dircookie_lock(%struct.nfsnode*) #1

declare dso_local %struct.TYPE_4__* @LIST_FIRST(i32*) #1

declare dso_local i32 @ncl_dircookie_unlock(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
