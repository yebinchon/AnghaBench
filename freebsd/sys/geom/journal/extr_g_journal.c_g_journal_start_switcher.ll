; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_start_switcher.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_start_switcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_class = type { i32 }

@g_journal_switcher_proc = common dso_local global i32* null, align 8
@GJ_SWITCHER_WORKING = common dso_local global i32 0, align 4
@g_journal_switcher_state = common dso_local global i32 0, align 4
@g_journal_switcher = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"g_journal switcher\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot create switcher thread.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_class*)* @g_journal_start_switcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_start_switcher(%struct.g_class* %0) #0 {
  %2 = alloca %struct.g_class*, align 8
  %3 = alloca i32, align 4
  store %struct.g_class* %0, %struct.g_class** %2, align 8
  %4 = call i32 (...) @g_topology_assert()
  %5 = load i32*, i32** @g_journal_switcher_proc, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @MPASS(i32 %7)
  %9 = load i32, i32* @GJ_SWITCHER_WORKING, align 4
  store i32 %9, i32* @g_journal_switcher_state, align 4
  %10 = load i32, i32* @g_journal_switcher, align 4
  %11 = load %struct.g_class*, %struct.g_class** %2, align 8
  %12 = call i32 @kproc_create(i32 %10, %struct.g_class* %11, i32** @g_journal_switcher_proc, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @kproc_create(i32, %struct.g_class*, i32**, i32, i32, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
