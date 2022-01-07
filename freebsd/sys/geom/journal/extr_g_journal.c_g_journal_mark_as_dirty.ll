; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_mark_as_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_mark_as_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_desc = type { i32 (i32)* }
%struct.g_journal_softc = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Marking file system %s as dirty.\00", align 1
@g_journal_filesystems = common dso_local global %struct.g_journal_desc** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_mark_as_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_mark_as_dirty(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.g_journal_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %5 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.g_journal_desc**, %struct.g_journal_desc*** @g_journal_filesystems, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.g_journal_desc*, %struct.g_journal_desc** %10, i64 %12
  %14 = load %struct.g_journal_desc*, %struct.g_journal_desc** %13, align 8
  store %struct.g_journal_desc* %14, %struct.g_journal_desc** %3, align 8
  %15 = icmp ne %struct.g_journal_desc* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.g_journal_desc*, %struct.g_journal_desc** %3, align 8
  %18 = getelementptr inbounds %struct.g_journal_desc, %struct.g_journal_desc* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %21 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(i32 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
