; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fdisp_simple_putget_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fdisp_simple_putget_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dispatcher = type { i32 }
%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*)* @fdisp_simple_putget_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdisp_simple_putget_vp(%struct.fuse_dispatcher* %0, i32 %1, %struct.vnode* %2, %struct.thread* %3, %struct.ucred* %4) #0 {
  %6 = alloca %struct.fuse_dispatcher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.ucred*, align 8
  store %struct.fuse_dispatcher* %0, %struct.fuse_dispatcher** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store %struct.ucred* %4, %struct.ucred** %10, align 8
  %11 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.vnode*, %struct.vnode** %8, align 8
  %14 = load %struct.thread*, %struct.thread** %9, align 8
  %15 = load %struct.ucred*, %struct.ucred** %10, align 8
  %16 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %11, i32 %12, %struct.vnode* %13, %struct.thread* %14, %struct.ucred* %15)
  %17 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %6, align 8
  %18 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %17)
  ret i32 %18
}

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
