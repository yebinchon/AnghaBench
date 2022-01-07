; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_excl_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_excl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.nfsnode = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ncl_excl_start\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ncl_excl_start: wrong vnode lock %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_excl_start(%struct.vnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.nfsnode*, align 8
  %5 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call i32 @NFSVOPISLOCKED(%struct.vnode* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LK_EXCLUSIVE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LK_SHARED, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = call %struct.nfsnode* @VTONFS(%struct.vnode* %23)
  store %struct.nfsnode* %24, %struct.nfsnode** %4, align 8
  %25 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %26 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %25, i32 0, i32 0
  %27 = load i32, i32* @LK_EXCLUSIVE, align 4
  %28 = call i32 @lockmgr(i32* %26, i32 %27, i32* null)
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @NFSVOPISLOCKED(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @lockmgr(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
