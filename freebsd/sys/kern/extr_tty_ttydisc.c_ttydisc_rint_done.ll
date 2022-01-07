; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rint_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_rint_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@rint_done = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttydisc_rint_done(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @tty_lock_assert(%struct.tty* %3, i32 %4)
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = load i32, i32* @rint_done, align 4
  %8 = call i64 @ttyhook_hashook(%struct.tty* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.tty*, %struct.tty** %2, align 8
  %12 = call i32 @ttyhook_rint_done(%struct.tty* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = load i32, i32* @FREAD, align 4
  %16 = call i32 @tty_wakeup(%struct.tty* %14, i32 %15)
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = call i32 @ttydevsw_outwakeup(%struct.tty* %17)
  ret void
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i64 @ttyhook_hashook(%struct.tty*, i32) #1

declare dso_local i32 @ttyhook_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_wakeup(%struct.tty*, i32) #1

declare dso_local i32 @ttydevsw_outwakeup(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
