; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_phyp_softc = type { i32, i32, i32*, %struct.tty* }
%struct.tty = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @uart_phyp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_phyp_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_phyp_softc*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.uart_phyp_softc*
  store %struct.uart_phyp_softc* %8, %struct.uart_phyp_softc** %3, align 8
  %9 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %9, i32 0, i32 3
  %11 = load %struct.tty*, %struct.tty** %10, align 8
  store %struct.tty* %11, %struct.tty** %4, align 8
  %12 = load %struct.tty*, %struct.tty** %4, align 8
  %13 = call i32 @tty_lock(%struct.tty* %12)
  br label %14

14:                                               ; preds = %18, %1
  %15 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %16 = call i32 @uart_phyp_get(%struct.uart_phyp_softc* %15, i8* %5, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.tty*, %struct.tty** %4, align 8
  %20 = load i8, i8* %5, align 1
  %21 = call i32 @ttydisc_rint(%struct.tty* %19, i8 zeroext %20, i32 0)
  br label %14

22:                                               ; preds = %14
  %23 = load %struct.tty*, %struct.tty** %4, align 8
  %24 = call i32 @ttydisc_rint_done(%struct.tty* %23)
  %25 = load %struct.tty*, %struct.tty** %4, align 8
  %26 = call i32 @tty_unlock(%struct.tty* %25)
  %27 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %32, i32 0, i32 1
  %34 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %38 = call i32 @callout_reset(i32* %33, i32 %36, void (i8*)* @uart_phyp_intr, %struct.uart_phyp_softc* %37)
  br label %39

39:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @uart_phyp_get(%struct.uart_phyp_softc*, i8*, i32) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i8 zeroext, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.uart_phyp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
