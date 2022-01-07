; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_rel_gone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_rel_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32 }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@TF_GONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_rel_gone(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = call i32 @tty_gone(%struct.tty* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @MPASS(i32 %7)
  %9 = load %struct.tty*, %struct.tty** %2, align 8
  %10 = call i32 @ttydisc_modem(%struct.tty* %9, i32 0)
  %11 = load %struct.tty*, %struct.tty** %2, align 8
  %12 = load i32, i32* @FREAD, align 4
  %13 = load i32, i32* @FWRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @tty_wakeup(%struct.tty* %11, i32 %14)
  %16 = load %struct.tty*, %struct.tty** %2, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 2
  %18 = call i32 @cv_broadcast(i32* %17)
  %19 = load %struct.tty*, %struct.tty** %2, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 1
  %21 = call i32 @cv_broadcast(i32* %20)
  %22 = load i32, i32* @TF_GONE, align 4
  %23 = load %struct.tty*, %struct.tty** %2, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.tty*, %struct.tty** %2, align 8
  %28 = call i32 @tty_rel_free(%struct.tty* %27)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tty_gone(%struct.tty*) #1

declare dso_local i32 @ttydisc_modem(%struct.tty*, i32) #1

declare dso_local i32 @tty_wakeup(%struct.tty*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @tty_rel_free(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
