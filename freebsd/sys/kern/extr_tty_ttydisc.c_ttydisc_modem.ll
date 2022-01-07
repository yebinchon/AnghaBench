; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_modem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@c = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TF_ZOMBIE = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttydisc_modem(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @tty_lock_assert(%struct.tty* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.tty*, %struct.tty** %3, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 1
  %13 = call i32 @cv_broadcast(i32* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = call i32 @tty_opened(%struct.tty* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @c, align 4
  %20 = load i32, i32* @CLOCAL, align 4
  %21 = call i64 @CMP_FLAG(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %14
  br label %42

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* @TF_ZOMBIE, align 4
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.tty*, %struct.tty** %3, align 8
  %34 = load i32, i32* @SIGHUP, align 4
  %35 = call i32 @tty_signal_sessleader(%struct.tty* %33, i32 %34)
  %36 = load %struct.tty*, %struct.tty** %3, align 8
  %37 = load i32, i32* @FREAD, align 4
  %38 = load i32, i32* @FWRITE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @tty_flush(%struct.tty* %36, i32 %39)
  br label %42

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %23, %41, %27
  ret void
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @tty_opened(%struct.tty*) #1

declare dso_local i64 @CMP_FLAG(i32, i32) #1

declare dso_local i32 @tty_signal_sessleader(%struct.tty*, i32) #1

declare dso_local i32 @tty_flush(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
