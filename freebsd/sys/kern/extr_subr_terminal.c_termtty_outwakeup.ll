; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termtty_outwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_termtty_outwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.terminal = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.terminal*)*, i32 (%struct.terminal*)* }

@TF_MUTE = common dso_local global i32 0, align 4
@TF_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @termtty_outwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @termtty_outwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.terminal*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = call %struct.terminal* @tty_softc(%struct.tty* %7)
  store %struct.terminal* %8, %struct.terminal** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %12 = call i64 @ttydisc_getc(%struct.tty* %10, i8* %11, i32 128)
  store i64 %12, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load %struct.terminal*, %struct.terminal** %3, align 8
  %16 = call i32 @TERMINAL_LOCK_TTY(%struct.terminal* %15)
  %17 = load %struct.terminal*, %struct.terminal** %3, align 8
  %18 = getelementptr inbounds %struct.terminal, %struct.terminal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TF_MUTE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @TF_BELL, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.terminal*, %struct.terminal** %3, align 8
  %27 = getelementptr inbounds %struct.terminal, %struct.terminal* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.terminal*, %struct.terminal** %3, align 8
  %31 = getelementptr inbounds %struct.terminal, %struct.terminal* %30, i32 0, i32 2
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @teken_input(i32* %31, i8* %32, i64 %33)
  %35 = load %struct.terminal*, %struct.terminal** %3, align 8
  %36 = getelementptr inbounds %struct.terminal, %struct.terminal* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %23, %14
  %41 = load %struct.terminal*, %struct.terminal** %3, align 8
  %42 = call i32 @TERMINAL_UNLOCK_TTY(%struct.terminal* %41)
  br label %9

43:                                               ; preds = %9
  %44 = load %struct.terminal*, %struct.terminal** %3, align 8
  %45 = call i32 @TERMINAL_LOCK_TTY(%struct.terminal* %44)
  %46 = load %struct.terminal*, %struct.terminal** %3, align 8
  %47 = getelementptr inbounds %struct.terminal, %struct.terminal* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TF_MUTE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %43
  %53 = load %struct.terminal*, %struct.terminal** %3, align 8
  %54 = getelementptr inbounds %struct.terminal, %struct.terminal* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.terminal*)*, i32 (%struct.terminal*)** %56, align 8
  %58 = load %struct.terminal*, %struct.terminal** %3, align 8
  %59 = call i32 %57(%struct.terminal* %58)
  br label %60

60:                                               ; preds = %52, %43
  %61 = load %struct.terminal*, %struct.terminal** %3, align 8
  %62 = call i32 @TERMINAL_UNLOCK_TTY(%struct.terminal* %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @TF_BELL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load %struct.terminal*, %struct.terminal** %3, align 8
  %69 = getelementptr inbounds %struct.terminal, %struct.terminal* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.terminal*)*, i32 (%struct.terminal*)** %71, align 8
  %73 = load %struct.terminal*, %struct.terminal** %3, align 8
  %74 = call i32 %72(%struct.terminal* %73)
  br label %75

75:                                               ; preds = %67, %60
  ret void
}

declare dso_local %struct.terminal* @tty_softc(%struct.tty*) #1

declare dso_local i64 @ttydisc_getc(%struct.tty*, i8*, i32) #1

declare dso_local i32 @TERMINAL_LOCK_TTY(%struct.terminal*) #1

declare dso_local i32 @teken_input(i32*, i8*, i64) #1

declare dso_local i32 @TERMINAL_UNLOCK_TTY(%struct.terminal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
