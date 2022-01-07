; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_getc_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_getc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TF_STOPPED = common dso_local global i32 0, align 4
@getc_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ttydisc_getc_poll(%struct.tty* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  %4 = load %struct.tty*, %struct.tty** %3, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @tty_lock_assert(%struct.tty* %4, i32 %5)
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TF_STOPPED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = load i32, i32* @getc_poll, align 4
  %17 = call i64 @ttyhook_hashook(%struct.tty* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = call i64 @ttyhook_getc_poll(%struct.tty* %20)
  store i64 %21, i64* %2, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.tty*, %struct.tty** %3, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 1
  %25 = call i64 @ttyoutq_bytesused(i32* %24)
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %22, %19, %13
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i64 @ttyhook_hashook(%struct.tty*, i32) #1

declare dso_local i64 @ttyhook_getc_poll(%struct.tty*) #1

declare dso_local i64 @ttyoutq_bytesused(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
