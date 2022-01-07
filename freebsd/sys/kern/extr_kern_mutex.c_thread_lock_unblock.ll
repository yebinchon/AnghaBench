; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c_thread_lock_unblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c_thread_lock_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.mtx = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@blocked_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_lock_unblock(%struct.thread* %0, %struct.mtx* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.mtx*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.mtx* %1, %struct.mtx** %4, align 8
  %5 = load %struct.mtx*, %struct.mtx** %4, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(%struct.mtx* %5, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @blocked_lock
  %12 = zext i1 %11 to i32
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = bitcast i32** %15 to i8*
  %17 = load %struct.mtx*, %struct.mtx** %4, align 8
  %18 = ptrtoint %struct.mtx* %17 to i64
  %19 = call i32 @atomic_store_rel_ptr(i8* %16, i64 %18)
  ret void
}

declare dso_local i32 @mtx_assert(%struct.mtx*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_store_rel_ptr(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
