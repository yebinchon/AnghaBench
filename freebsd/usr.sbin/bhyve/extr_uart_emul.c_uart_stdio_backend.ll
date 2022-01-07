; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_stdio_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_stdio_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TIOCGETA = common dso_local global i32 0, align 4
@TIOCSETA = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@uart_stdio = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CAP_EVENT = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @uart_stdio_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_stdio_backend(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @TIOCGETA, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @TIOCSETA, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @TIOCGWINSZ, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @uart_stdio, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  %16 = load i32, i32* @STDIN_FILENO, align 4
  %17 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @STDOUT_FILENO, align 4
  %21 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @F_SETFL, align 4
  %32 = load i32, i32* @O_NONBLOCK, align 4
  %33 = call i64 @fcntl(i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %74

36:                                               ; preds = %15
  %37 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %38 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @F_SETFL, align 4
  %42 = load i32, i32* @O_NONBLOCK, align 4
  %43 = call i64 @fcntl(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %74

46:                                               ; preds = %36
  %47 = load i32, i32* @CAP_EVENT, align 4
  %48 = load i32, i32* @CAP_IOCTL, align 4
  %49 = load i32, i32* @CAP_READ, align 4
  %50 = call i32 @cap_rights_init(i32* %4, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @caph_rights_limit(i32 %54, i32* %4)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EX_OSERR, align 4
  %59 = call i32 @errx(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %62 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %67 = call i32 @nitems(i32* %66)
  %68 = call i32 @caph_ioctls_limit(i32 %64, i32* %65, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EX_OSERR, align 4
  %72 = call i32 @errx(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %60
  store i32 1, i32* @uart_stdio, align 4
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %45, %35, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32) #1

declare dso_local i32 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @caph_ioctls_limit(i32, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
