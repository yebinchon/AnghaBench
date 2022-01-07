; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vncache.c_pfs_vncache_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vncache.c_pfs_vncache_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_exit = common dso_local global i32 0, align 4
@pfs_exit_tag = common dso_local global i32 0, align 4
@pfs_vncache_entries = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%d vncache entries remaining\00", align 1
@pfs_vncache_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfs_vncache_unload() #0 {
  %1 = load i32, i32* @process_exit, align 4
  %2 = load i32, i32* @pfs_exit_tag, align 4
  %3 = call i32 @EVENTHANDLER_DEREGISTER(i32 %1, i32 %2)
  %4 = call i32 (...) @pfs_purge_all()
  %5 = load i64, i64* @pfs_vncache_entries, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* @pfs_vncache_entries, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @KASSERT(i32 %7, i8* %9)
  %11 = call i32 @mtx_destroy(i32* @pfs_vncache_mutex)
  ret void
}

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @pfs_purge_all(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
