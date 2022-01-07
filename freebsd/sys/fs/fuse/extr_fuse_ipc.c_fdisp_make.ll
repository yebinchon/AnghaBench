; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdisp_make.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdisp_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dispatcher = type { i32 }
%struct.mount = type { i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.fuse_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdisp_make(%struct.fuse_dispatcher* %0, i32 %1, %struct.mount* %2, i32 %3, %struct.thread* %4, %struct.ucred* %5) #0 {
  %7 = alloca %struct.fuse_dispatcher*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca %struct.fuse_data*, align 8
  store %struct.fuse_dispatcher* %0, %struct.fuse_dispatcher** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mount* %2, %struct.mount** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store %struct.ucred* %5, %struct.ucred** %12, align 8
  %14 = load %struct.mount*, %struct.mount** %9, align 8
  %15 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %14)
  store %struct.fuse_data* %15, %struct.fuse_data** %13, align 8
  %16 = load %struct.thread*, %struct.thread** %11, align 8
  %17 = load %struct.ucred*, %struct.ucred** %12, align 8
  %18 = call i32 @RECTIFY_TDCR(%struct.thread* %16, %struct.ucred* %17)
  %19 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.fuse_data*, %struct.fuse_data** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.thread*, %struct.thread** %11, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ucred*, %struct.ucred** %12, align 8
  call void @fdisp_make_pid(%struct.fuse_dispatcher* %19, i32 %20, %struct.fuse_data* %21, i32 %22, i32 %27, %struct.ucred* %28)
  ret void
}

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i32 @RECTIFY_TDCR(%struct.thread*, %struct.ucred*) #1

declare dso_local void @fdisp_make_pid(%struct.fuse_dispatcher*, i32, %struct.fuse_data*, i32, i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
