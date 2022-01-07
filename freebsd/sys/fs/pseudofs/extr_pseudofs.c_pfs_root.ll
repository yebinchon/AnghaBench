; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64 }
%struct.vnode = type { i32 }
%struct.pfs_info = type { i32 }

@NO_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfs_root(%struct.mount* %0, i32 %1, %struct.vnode** %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.pfs_info*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vnode** %2, %struct.vnode*** %6, align 8
  %8 = load %struct.mount*, %struct.mount** %4, align 8
  %9 = getelementptr inbounds %struct.mount, %struct.mount* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.pfs_info*
  store %struct.pfs_info* %11, %struct.pfs_info** %7, align 8
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %14 = load %struct.pfs_info*, %struct.pfs_info** %7, align 8
  %15 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NO_PID, align 4
  %18 = call i32 @pfs_vncache_alloc(%struct.mount* %12, %struct.vnode** %13, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @pfs_vncache_alloc(%struct.mount*, %struct.vnode**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
