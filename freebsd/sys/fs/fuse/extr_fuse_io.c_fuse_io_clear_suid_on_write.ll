; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_io.c_fuse_io_clear_suid_on_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_io.c_fuse_io_clear_suid_on_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.fuse_data = type { i32 }
%struct.mount = type { i32 }
%struct.vattr = type { i32 }

@FSESS_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@PRIV_VFS_RETAINSUGID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.ucred*, %struct.thread*)* @fuse_io_clear_suid_on_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_io_clear_suid_on_write(%struct.vnode* %0, %struct.ucred* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.fuse_data*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vattr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = call %struct.mount* @vnode_mount(%struct.vnode* %12)
  store %struct.mount* %13, %struct.mount** %8, align 8
  %14 = load %struct.mount*, %struct.mount** %8, align 8
  %15 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %14)
  store %struct.fuse_data* %15, %struct.fuse_data** %7, align 8
  %16 = load %struct.fuse_data*, %struct.fuse_data** %7, align 8
  %17 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @FSESS_DEFAULT_PERMISSIONS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %3
  %24 = load %struct.ucred*, %struct.ucred** %5, align 8
  %25 = load i32, i32* @PRIV_VFS_RETAINSUGID, align 4
  %26 = call i64 @priv_check_cred(%struct.ucred* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = load %struct.ucred*, %struct.ucred** %5, align 8
  %31 = load %struct.thread*, %struct.thread** %6, align 8
  %32 = call i32 @fuse_internal_getattr(%struct.vnode* %29, %struct.vattr* %9, %struct.ucred* %30, %struct.thread* %31)
  %33 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_ISUID, align 4
  %36 = load i32, i32* @S_ISGID, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @S_ISUID, align 4
  %44 = load i32, i32* @S_ISGID, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  store i32 %47, i32* %11, align 4
  %48 = call i32 @vattr_null(%struct.vattr* %9)
  %49 = load i32, i32* %11, align 4
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.vnode*, %struct.vnode** %4, align 8
  %52 = load %struct.thread*, %struct.thread** %6, align 8
  %53 = call i32 @fuse_internal_setattr(%struct.vnode* %51, %struct.vattr* %9, %struct.thread* %52, i32* null)
  br label %54

54:                                               ; preds = %40, %28
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %3
  ret void
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @fuse_internal_getattr(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @vattr_null(%struct.vattr*) #1

declare dso_local i32 @fuse_internal_setattr(%struct.vnode*, %struct.vattr*, %struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
