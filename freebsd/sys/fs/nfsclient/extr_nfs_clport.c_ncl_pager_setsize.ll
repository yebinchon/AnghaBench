; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_ncl_pager_setsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_ncl_pager_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nfsnode = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vattr }
%struct.vattr = type { i64 }

@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@NVNSETSZSKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_pager_setsize(%struct.vnode* %0, i64* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = call %struct.nfsnode* @VTONFS(%struct.vnode* %10)
  store %struct.nfsnode* %11, %struct.nfsnode** %5, align 8
  %12 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %13 = call i32 @NFSASSERTNODE(%struct.nfsnode* %12)
  %14 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %15 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.vattr* %16, %struct.vattr** %7, align 8
  %17 = load %struct.vattr*, %struct.vattr** %7, align 8
  %18 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.vnode*, %struct.vnode** %3, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %26, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load %struct.vnode*, %struct.vnode** %3, align 8
  %35 = call i64 @VOP_ISLOCKED(%struct.vnode* %34)
  %36 = load i64, i64* @LK_EXCLUSIVE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @NVNSETSZSKIP, align 4
  %41 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %42 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %38
  br label %46

46:                                               ; preds = %45, %25, %2
  %47 = load i64*, i64** %4, align 8
  %48 = icmp eq i64* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %51 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.vnode*, %struct.vnode** %3, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @vnode_pager_setsize(%struct.vnode* %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %49
  store i32 0, i32* %9, align 4
  br label %62

59:                                               ; preds = %46
  %60 = load i64, i64* %8, align 8
  %61 = load i64*, i64** %4, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSASSERTNODE(%struct.nfsnode*) #1

declare dso_local i64 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
