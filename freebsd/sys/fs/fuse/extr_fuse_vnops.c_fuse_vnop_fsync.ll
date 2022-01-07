; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_fsync_args = type { i32, %struct.thread*, %struct.vnode* }
%struct.thread = type { i32 }
%struct.vnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_fsync_args*)* @fuse_vnop_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_fsync(%struct.vop_fsync_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_fsync_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vop_fsync_args* %0, %struct.vop_fsync_args** %3, align 8
  %8 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %11, i32 0, i32 1
  %13 = load %struct.thread*, %struct.thread** %12, align 8
  store %struct.thread* %13, %struct.thread** %5, align 8
  %14 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = call i64 @fuse_isdeadfs(%struct.vnode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %23 = call i32 @vop_stdfsync(%struct.vop_fsync_args* %22)
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %21
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @fuse_internal_fsync(%struct.vnode* %28, %struct.thread* %29, i32 %30, i32 0)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %25, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @vop_stdfsync(%struct.vop_fsync_args*) #1

declare dso_local i32 @fuse_internal_fsync(%struct.vnode*, %struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
