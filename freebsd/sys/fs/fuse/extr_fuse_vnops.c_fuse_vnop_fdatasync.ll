; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_fdatasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_fdatasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_fdatasync_args = type { %struct.thread*, %struct.vnode* }
%struct.thread = type { i32 }
%struct.vnode = type { i32 }

@MNT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_fdatasync_args*)* @fuse_vnop_fdatasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_fdatasync(%struct.vop_fdatasync_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_fdatasync_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vop_fdatasync_args* %0, %struct.vop_fdatasync_args** %3, align 8
  %8 = load %struct.vop_fdatasync_args*, %struct.vop_fdatasync_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_fdatasync_args, %struct.vop_fdatasync_args* %8, i32 0, i32 1
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vop_fdatasync_args*, %struct.vop_fdatasync_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_fdatasync_args, %struct.vop_fdatasync_args* %11, i32 0, i32 0
  %13 = load %struct.thread*, %struct.thread** %12, align 8
  store %struct.thread* %13, %struct.thread** %5, align 8
  %14 = load i32, i32* @MNT_WAIT, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = call i64 @fuse_isdeadfs(%struct.vnode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.vop_fdatasync_args*, %struct.vop_fdatasync_args** %3, align 8
  %21 = call i32 @vop_stdfdatasync_buf(%struct.vop_fdatasync_args* %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %19
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @fuse_internal_fsync(%struct.vnode* %26, %struct.thread* %27, i32 %28, i32 1)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %23, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @vop_stdfdatasync_buf(%struct.vop_fdatasync_args*) #1

declare dso_local i32 @fuse_internal_fsync(%struct.vnode*, %struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
