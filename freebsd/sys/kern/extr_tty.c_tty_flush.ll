; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32 }

@FWRITE = common dso_local global i32 0, align 4
@TF_HIWAT_OUT = common dso_local global i32 0, align 4
@TIOCPKT_FLUSHWRITE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@TIOCPKT_FLUSHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_flush(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FWRITE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load i32, i32* @TF_HIWAT_OUT, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 1
  %18 = call i32 @ttyoutq_flush(i32* %17)
  %19 = load %struct.tty*, %struct.tty** %3, align 8
  %20 = load i32, i32* @FWRITE, align 4
  %21 = call i32 @tty_wakeup(%struct.tty* %19, i32 %20)
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = call i32 @tty_gone(%struct.tty* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %9
  %26 = load %struct.tty*, %struct.tty** %3, align 8
  %27 = call i32 @ttydevsw_outwakeup(%struct.tty* %26)
  %28 = load %struct.tty*, %struct.tty** %3, align 8
  %29 = load i32, i32* @TIOCPKT_FLUSHWRITE, align 4
  %30 = call i32 @ttydevsw_pktnotify(%struct.tty* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %9
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FREAD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.tty*, %struct.tty** %3, align 8
  %39 = call i32 @tty_hiwat_in_unblock(%struct.tty* %38)
  %40 = load %struct.tty*, %struct.tty** %3, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 0
  %42 = call i32 @ttyinq_flush(i32* %41)
  %43 = load %struct.tty*, %struct.tty** %3, align 8
  %44 = load i32, i32* @FREAD, align 4
  %45 = call i32 @tty_wakeup(%struct.tty* %43, i32 %44)
  %46 = load %struct.tty*, %struct.tty** %3, align 8
  %47 = call i32 @tty_gone(%struct.tty* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %37
  %50 = load %struct.tty*, %struct.tty** %3, align 8
  %51 = call i32 @ttydevsw_inwakeup(%struct.tty* %50)
  %52 = load %struct.tty*, %struct.tty** %3, align 8
  %53 = load i32, i32* @TIOCPKT_FLUSHREAD, align 4
  %54 = call i32 @ttydevsw_pktnotify(%struct.tty* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %37
  br label %56

56:                                               ; preds = %55, %32
  ret void
}

declare dso_local i32 @ttyoutq_flush(i32*) #1

declare dso_local i32 @tty_wakeup(%struct.tty*, i32) #1

declare dso_local i32 @tty_gone(%struct.tty*) #1

declare dso_local i32 @ttydevsw_outwakeup(%struct.tty*) #1

declare dso_local i32 @ttydevsw_pktnotify(%struct.tty*, i32) #1

declare dso_local i32 @tty_hiwat_in_unblock(%struct.tty*) #1

declare dso_local i32 @ttyinq_flush(i32*) #1

declare dso_local i32 @ttydevsw_inwakeup(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
