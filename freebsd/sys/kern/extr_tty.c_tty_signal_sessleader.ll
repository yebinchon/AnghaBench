; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_signal_sessleader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_signal_sessleader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.proc* }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NSIG = common dso_local global i32 0, align 4
@TF_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_signal_sessleader(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
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
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.tty*, %struct.tty** %3, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %15
  %30 = load %struct.tty*, %struct.tty** %3, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.proc*, %struct.proc** %33, align 8
  %35 = icmp ne %struct.proc* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.tty*, %struct.tty** %3, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.proc*, %struct.proc** %40, align 8
  store %struct.proc* %41, %struct.proc** %5, align 8
  %42 = load %struct.proc*, %struct.proc** %5, align 8
  %43 = call i32 @PROC_LOCK(%struct.proc* %42)
  %44 = load %struct.proc*, %struct.proc** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @kern_psignal(%struct.proc* %44, i32 %45)
  %47 = load %struct.proc*, %struct.proc** %5, align 8
  %48 = call i32 @PROC_UNLOCK(%struct.proc* %47)
  br label %49

49:                                               ; preds = %36, %29, %15
  ret void
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @kern_psignal(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
