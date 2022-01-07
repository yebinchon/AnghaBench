; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_class = type { i32 }

@g_journal_cache_divisor = common dso_local global i32 0, align 4
@vm_kmem_size = common dso_local global i32 0, align 4
@g_journal_cache_limit = common dso_local global i32 0, align 4
@g_journal_cache_switch = common dso_local global i32 0, align 4
@g_journal_cache_low = common dso_local global i32 0, align 4
@shutdown_post_sync = common dso_local global i32 0, align 4
@g_journal_shutdown = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@g_journal_event_shutdown = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Warning! Cannot register shutdown event.\00", align 1
@vm_lowmem = common dso_local global i32 0, align 4
@g_journal_lowmem = common dso_local global i32 0, align 4
@g_journal_event_lowmem = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Warning! Cannot register lowmem event.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_class*)* @g_journal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_init(%struct.g_class* %0) #0 {
  %2 = alloca %struct.g_class*, align 8
  store %struct.g_class* %0, %struct.g_class** %2, align 8
  %3 = load i32, i32* @g_journal_cache_divisor, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @vm_kmem_size, align 4
  %7 = load i32, i32* @g_journal_cache_divisor, align 4
  %8 = sdiv i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  store i32 5, i32* @g_journal_cache_divisor, align 4
  br label %11

11:                                               ; preds = %10, %5
  %12 = load i32, i32* @g_journal_cache_limit, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* @vm_kmem_size, align 4
  %16 = load i32, i32* @g_journal_cache_divisor, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* @g_journal_cache_limit, align 4
  %18 = load i32, i32* @g_journal_cache_limit, align 4
  %19 = sdiv i32 %18, 100
  %20 = load i32, i32* @g_journal_cache_switch, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* @g_journal_cache_low, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* @shutdown_post_sync, align 4
  %24 = load i32, i32* @g_journal_shutdown, align 4
  %25 = load %struct.g_class*, %struct.g_class** %2, align 8
  %26 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %27 = call i8* @EVENTHANDLER_REGISTER(i32 %23, i32 %24, %struct.g_class* %25, i32 %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** @g_journal_event_shutdown, align 8
  %29 = load i32*, i32** @g_journal_event_shutdown, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %22
  %34 = load i32, i32* @vm_lowmem, align 4
  %35 = load i32, i32* @g_journal_lowmem, align 4
  %36 = load %struct.g_class*, %struct.g_class** %2, align 8
  %37 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %38 = call i8* @EVENTHANDLER_REGISTER(i32 %34, i32 %35, %struct.g_class* %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @g_journal_event_lowmem, align 8
  %40 = load i32*, i32** @g_journal_event_lowmem, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %33
  ret void
}

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.g_class*, i32) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
