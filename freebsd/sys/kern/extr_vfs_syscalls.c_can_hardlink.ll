; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_can_hardlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_can_hardlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i64 }
%struct.vattr = type { i64, i32 }

@hardlink_check_uid = common dso_local global i64 0, align 8
@hardlink_check_gid = common dso_local global i64 0, align 8
@PRIV_VFS_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.ucred*)* @can_hardlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_hardlink(%struct.vnode* %0, %struct.ucred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vattr, align 8
  %7 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  %8 = load i64, i64* @hardlink_check_uid, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @hardlink_check_gid, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %60

14:                                               ; preds = %10, %2
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = load %struct.ucred*, %struct.ucred** %5, align 8
  %17 = call i32 @VOP_GETATTR(%struct.vnode* %15, %struct.vattr* %6, %struct.ucred* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %14
  %23 = load i64, i64* @hardlink_check_uid, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.ucred*, %struct.ucred** %5, align 8
  %27 = getelementptr inbounds %struct.ucred, %struct.ucred* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.ucred*, %struct.ucred** %5, align 8
  %34 = load i32, i32* @PRIV_VFS_LINK, align 4
  %35 = call i32 @priv_check_cred(%struct.ucred* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %25, %22
  %42 = load i64, i64* @hardlink_check_gid, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ucred*, %struct.ucred** %5, align 8
  %48 = call i32 @groupmember(i32 %46, %struct.ucred* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = load %struct.ucred*, %struct.ucred** %5, align 8
  %52 = load i32, i32* @PRIV_VFS_LINK, align 4
  %53 = call i32 @priv_check_cred(%struct.ucred* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %44, %41
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56, %38, %20, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @groupmember(i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
