; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_tty_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_tty_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TIOCGETA = common dso_local global i32 0, align 4
@TIOCSETA = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CAP_EVENT = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i8*)* @uart_tty_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_tty_backend(%struct.uart_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* @TIOCGETA, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @TIOCSETA, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @TIOCGWINSZ, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @open(i8* %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @isatty(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @close(i32 %28)
  store i32 -1, i32* %3, align 4
  br label %63

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %36 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @CAP_EVENT, align 4
  %42 = load i32, i32* @CAP_IOCTL, align 4
  %43 = load i32, i32* @CAP_READ, align 4
  %44 = load i32, i32* @CAP_WRITE, align 4
  %45 = call i32 @cap_rights_init(i32* %6, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @caph_rights_limit(i32 %46, i32* %6)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %30
  %50 = load i32, i32* @EX_OSERR, align 4
  %51 = call i32 @errx(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %30
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %56 = call i32 @nitems(i32* %55)
  %57 = call i32 @caph_ioctls_limit(i32 %53, i32* %54, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EX_OSERR, align 4
  %61 = call i32 @errx(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %27, %22
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, i32) #1

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
