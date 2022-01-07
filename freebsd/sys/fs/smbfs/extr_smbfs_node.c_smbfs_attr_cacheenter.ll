; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_attr_cacheenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_node.c_smbfs_attr_cacheenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.smbfattr = type { i32, i32, i32 }
%struct.smbnode = type { i32, i32, i32, i32 }

@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@time_second = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smbfs_attr_cacheenter(%struct.vnode* %0, %struct.smbfattr* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.smbfattr*, align 8
  %5 = alloca %struct.smbnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.smbfattr* %1, %struct.smbfattr** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = call %struct.smbnode* @VTOSMB(%struct.vnode* %6)
  store %struct.smbnode* %7, %struct.smbnode** %5, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VREG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %15 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.smbfattr*, %struct.smbfattr** %4, align 8
  %18 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.smbfattr*, %struct.smbfattr** %4, align 8
  %23 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %26 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %29 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vnode_pager_setsize(%struct.vnode* %27, i32 %30)
  br label %32

32:                                               ; preds = %21, %13
  br label %44

33:                                               ; preds = %2
  %34 = load %struct.vnode*, %struct.vnode** %3, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VDIR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %41 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %40, i32 0, i32 0
  store i32 16384, i32* %41, align 4
  br label %43

42:                                               ; preds = %33
  br label %58

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.smbfattr*, %struct.smbfattr** %4, align 8
  %46 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %49 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.smbfattr*, %struct.smbfattr** %4, align 8
  %51 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %54 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @time_second, align 4
  %56 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %57 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %44, %42
  ret void
}

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
