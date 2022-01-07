; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_set_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_set_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stdio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_set_backend(%struct.uart_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %16 = call i32 @uart_stdio_backend(%struct.uart_softc* %15)
  store i32 %16, i32* %6, align 4
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @uart_tty_backend(%struct.uart_softc* %18, i8* %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %26 = call i32 @uart_opentty(%struct.uart_softc* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @uart_stdio_backend(%struct.uart_softc*) #1

declare dso_local i32 @uart_tty_backend(%struct.uart_softc*, i8*) #1

declare dso_local i32 @uart_opentty(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
