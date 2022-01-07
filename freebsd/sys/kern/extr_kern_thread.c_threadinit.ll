; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_threadinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_threadinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tid_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"TID lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PID_MAX = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@tid_unrhdr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"THREAD\00", align 1
@thread_ctor = common dso_local global i32 0, align 4
@thread_dtor = common dso_local global i32 0, align 4
@thread_init = common dso_local global i32 0, align 4
@thread_fini = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@thread_zone = common dso_local global i32 0, align 4
@maxproc = common dso_local global i32 0, align 4
@M_TIDHASH = common dso_local global i32 0, align 4
@tidhash = common dso_local global i32 0, align 4
@tidhashtbl = common dso_local global i32 0, align 4
@tidhash_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"tidhash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @threadinit() #0 {
  %1 = load i32, i32* @MTX_DEF, align 4
  %2 = call i32 @mtx_init(i32* @tid_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = load i64, i64* @PID_MAX, align 8
  %4 = add nsw i64 %3, 2
  %5 = load i32, i32* @INT_MAX, align 4
  %6 = call i32 @new_unrhdr(i64 %4, i32 %5, i32* @tid_lock)
  store i32 %6, i32* @tid_unrhdr, align 4
  %7 = call i32 (...) @sched_sizeof_thread()
  %8 = load i32, i32* @thread_ctor, align 4
  %9 = load i32, i32* @thread_dtor, align 4
  %10 = load i32, i32* @thread_init, align 4
  %11 = load i32, i32* @thread_fini, align 4
  %12 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %13 = call i32 @uma_zcreate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 31, i32 %12)
  store i32 %13, i32* @thread_zone, align 4
  %14 = load i32, i32* @maxproc, align 4
  %15 = sdiv i32 %14, 2
  %16 = load i32, i32* @M_TIDHASH, align 4
  %17 = call i32 @hashinit(i32 %15, i32 %16, i32* @tidhash)
  store i32 %17, i32* @tidhashtbl, align 4
  %18 = call i32 @rw_init(i32* @tidhash_lock, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @new_unrhdr(i64, i32, i32*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sched_sizeof_thread(...) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
