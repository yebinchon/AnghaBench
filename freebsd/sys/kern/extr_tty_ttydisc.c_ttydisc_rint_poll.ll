; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rint_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rint_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@rint_poll = common dso_local global i32 0, align 4
@TF_HIWAT_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ttydisc_rint_poll(%struct.tty* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @tty_lock_assert(%struct.tty* %5, i32 %6)
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = load i32, i32* @rint_poll, align 4
  %10 = call i64 @ttyhook_hashook(%struct.tty* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.tty*, %struct.tty** %3, align 8
  %14 = call i64 @ttyhook_rint_poll(%struct.tty* %13)
  store i64 %14, i64* %2, align 8
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 1
  %18 = call i64 @ttyinq_bytesleft(i32* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TF_HIWAT_IN, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i64 1, i64* %2, align 8
  br label %31

29:                                               ; preds = %21, %15
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %28, %12
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i64 @ttyhook_hashook(%struct.tty*, i32) #1

declare dso_local i64 @ttyhook_rint_poll(%struct.tty*) #1

declare dso_local i64 @ttyinq_bytesleft(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
