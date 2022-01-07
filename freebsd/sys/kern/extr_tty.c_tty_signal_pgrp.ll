; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_signal_pgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_signal_pgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NSIG = common dso_local global i32 0, align 4
@TF_STOPPED = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@NOKERNINFO = common dso_local global i32 0, align 4
@SI_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_signal_pgrp(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @tty_lock_assert(%struct.tty* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NSIG, align 4
  %14 = icmp slt i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load i32, i32* @TF_STOPPED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.tty*, %struct.tty** %3, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SIGINFO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %15
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NOKERNINFO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load %struct.tty*, %struct.tty** %3, align 8
  %38 = call i32 @tty_info(%struct.tty* %37)
  br label %39

39:                                               ; preds = %36, %28, %15
  %40 = load %struct.tty*, %struct.tty** %3, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = call i32 @ksiginfo_init(%struct.TYPE_6__* %5)
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @SI_KERNEL, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.tty*, %struct.tty** %3, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @PGRP_LOCK(i32* %52)
  %54 = load %struct.tty*, %struct.tty** %3, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @pgsignal(i32* %56, i32 %57, i32 1, %struct.TYPE_6__* %5)
  %59 = load %struct.tty*, %struct.tty** %3, align 8
  %60 = getelementptr inbounds %struct.tty, %struct.tty* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PGRP_UNLOCK(i32* %61)
  br label %63

63:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tty_info(%struct.tty*) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_6__*) #1

declare dso_local i32 @PGRP_LOCK(i32*) #1

declare dso_local i32 @pgsignal(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @PGRP_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
