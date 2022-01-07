; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@TF_STOPPED = common dso_local global i32 0, align 4
@TF_HIWAT = common dso_local global i32 0, align 4
@TF_ZOMBIE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttydisc_close(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load i32, i32* @TF_STOPPED, align 4
  %4 = load i32, i32* @TF_HIWAT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @TF_ZOMBIE, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load %struct.tty*, %struct.tty** %2, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.tty*, %struct.tty** %2, align 8
  %14 = load i32, i32* @FREAD, align 4
  %15 = load i32, i32* @FWRITE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @tty_flush(%struct.tty* %13, i32 %16)
  %18 = load %struct.tty*, %struct.tty** %2, align 8
  %19 = load i32, i32* @close, align 4
  %20 = call i64 @ttyhook_hashook(%struct.tty* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.tty*, %struct.tty** %2, align 8
  %24 = call i32 @ttyhook_close(%struct.tty* %23)
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @tty_flush(%struct.tty*, i32) #1

declare dso_local i64 @ttyhook_hashook(%struct.tty*, i32) #1

declare dso_local i32 @ttyhook_close(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
