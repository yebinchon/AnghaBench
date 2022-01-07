; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.mount = type { i32 }

@OFF_MAX = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @vn_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_truncate(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 2
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %10, align 8
  %16 = load %struct.vnode*, %struct.vnode** %10, align 8
  %17 = load i32, i32* @OFF_MAX, align 4
  %18 = call i8* @vn_rangelock_wlock(%struct.vnode* %16, i32 0, i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load %struct.vnode*, %struct.vnode** %10, align 8
  %20 = load i32, i32* @V_WAIT, align 4
  %21 = load i32, i32* @PCATCH, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @vn_start_write(%struct.vnode* %19, %struct.mount** %9, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %61

27:                                               ; preds = %4
  %28 = load %struct.vnode*, %struct.vnode** %10, align 8
  %29 = load i32, i32* @LK_EXCLUSIVE, align 4
  %30 = load i32, i32* @LK_RETRY, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @vn_lock(%struct.vnode* %28, i32 %31)
  %33 = load %struct.vnode*, %struct.vnode** %10, align 8
  %34 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %33)
  %35 = load %struct.vnode*, %struct.vnode** %10, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VDIR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @EISDIR, align 4
  store i32 %41, i32* %12, align 4
  br label %56

42:                                               ; preds = %27
  %43 = load %struct.vnode*, %struct.vnode** %10, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @O_FSYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vn_truncate_locked(%struct.vnode* %43, i32 %44, i32 %51, i32 %54)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %42, %40
  %57 = load %struct.vnode*, %struct.vnode** %10, align 8
  %58 = call i32 @VOP_UNLOCK(%struct.vnode* %57, i32 0)
  %59 = load %struct.mount*, %struct.mount** %9, align 8
  %60 = call i32 @vn_finished_write(%struct.mount* %59)
  br label %61

61:                                               ; preds = %56, %26
  %62 = load %struct.vnode*, %struct.vnode** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @vn_rangelock_unlock(%struct.vnode* %62, i8* %63)
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local i8* @vn_rangelock_wlock(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @vn_truncate_locked(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @vn_rangelock_unlock(%struct.vnode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
