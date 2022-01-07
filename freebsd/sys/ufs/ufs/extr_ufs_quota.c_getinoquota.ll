; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_getinoquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_getinoquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i64, i64 }
%struct.ufsmount = type { i32 }
%struct.vnode = type { i32, i32 }

@VV_SYSTEM = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getinoquota(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ufsmount*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.vnode* @ITOV(%struct.inode* %7)
  store %struct.vnode* %8, %struct.vnode** %5, align 8
  %9 = load %struct.vnode*, %struct.vnode** %5, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VV_SYSTEM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16
  store i32 0, i32* %2, align 4
  br label %74

29:                                               ; preds = %22
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ufsmount* @VFSTOUFS(i32 %32)
  store %struct.ufsmount* %33, %struct.ufsmount** %4, align 8
  %34 = load %struct.vnode*, %struct.vnode** %5, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %39 = load i64, i64* @USRQUOTA, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @USRQUOTA, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @dqget(%struct.vnode* %34, i64 %37, %struct.ufsmount* %38, i64 %39, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %74

53:                                               ; preds = %47, %29
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %59 = load i64, i64* @GRPQUOTA, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @GRPQUOTA, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @dqget(%struct.vnode* %54, i64 %57, %struct.ufsmount* %58, i64 %59, i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @EINVAL, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %67, %53
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %51, %28, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(i32) #1

declare dso_local i32 @dqget(%struct.vnode*, i64, %struct.ufsmount*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
