; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_rel_pgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_rel_pgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, %struct.pgrp* }
%struct.pgrp = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_rel_pgrp(%struct.tty* %0, %struct.pgrp* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.pgrp*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.pgrp* %1, %struct.pgrp** %4, align 8
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @MPASS(i32 %9)
  %11 = load %struct.tty*, %struct.tty** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @tty_lock_assert(%struct.tty* %11, i32 %12)
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 1
  %16 = load %struct.pgrp*, %struct.pgrp** %15, align 8
  %17 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %18 = icmp eq %struct.pgrp* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 1
  store %struct.pgrp* null, %struct.pgrp** %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.tty*, %struct.tty** %3, align 8
  %24 = call i32 @tty_unlock(%struct.tty* %23)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
