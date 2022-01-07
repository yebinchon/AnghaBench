; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, %struct.rc_chans* }
%struct.rc_chans = type { i32, i32, %struct.rc_softc*, i64, i64 }
%struct.rc_softc = type { i32 }

@CD180_CAR = common dso_local global i32 0, align 4
@CD180_IER = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@RC_ACTOUT = common dso_local global i32 0, align 4
@MSVR_CD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@CCR_ResetChan = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @rc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_close(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.rc_chans*, align 8
  %4 = alloca %struct.rc_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 2
  %8 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  store %struct.rc_chans* %8, %struct.rc_chans** %3, align 8
  %9 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %10 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %9, i32 0, i32 2
  %11 = load %struct.rc_softc*, %struct.rc_softc** %10, align 8
  store %struct.rc_softc* %11, %struct.rc_softc** %4, align 8
  %12 = call i32 (...) @spltty()
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rc_softc*, %struct.rc_softc** %4, align 8
  %14 = load i32, i32* @CD180_CAR, align 4
  %15 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %16 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @rcout(%struct.rc_softc* %13, i32 %14, i64 %17)
  %19 = load %struct.rc_softc*, %struct.rc_softc** %4, align 8
  %20 = load i32, i32* @CD180_IER, align 4
  %21 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %22 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = call i32 @rcout(%struct.rc_softc* %19, i32 %20, i64 0)
  %24 = load %struct.tty*, %struct.tty** %2, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HUPCL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %1
  %31 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %32 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RC_ACTOUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %39 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSVR_CD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.tty*, %struct.tty** %2, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CLOCAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44, %37, %30
  %52 = load %struct.tty*, %struct.tty** %2, align 8
  %53 = getelementptr inbounds %struct.tty, %struct.tty* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TS_ISOPEN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %51, %44, %1
  %59 = load %struct.rc_softc*, %struct.rc_softc** %4, align 8
  %60 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %61 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @CCR_ResetChan, align 4
  %64 = call i32 @CCRCMD(%struct.rc_softc* %59, i64 %62, i32 %63)
  %65 = load %struct.rc_softc*, %struct.rc_softc** %4, align 8
  %66 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %67 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @WAITFORCCR(%struct.rc_softc* %65, i64 %68)
  %70 = load %struct.tty*, %struct.tty** %2, align 8
  %71 = load i32, i32* @SER_RTS, align 4
  %72 = call i32 @rc_modem(%struct.tty* %70, i32 %71, i32 0)
  %73 = load %struct.tty*, %struct.tty** %2, align 8
  %74 = call i32 @ttydtrwaitstart(%struct.tty* %73)
  br label %75

75:                                               ; preds = %58, %51
  %76 = load i32, i32* @RC_ACTOUT, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %79 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.rc_chans*, %struct.rc_chans** %3, align 8
  %83 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %82, i32 0, i32 2
  %84 = call i32 @wakeup(%struct.rc_softc** %83)
  %85 = load %struct.tty*, %struct.tty** %2, align 8
  %86 = call %struct.rc_softc** @TSA_CARR_ON(%struct.tty* %85)
  %87 = call i32 @wakeup(%struct.rc_softc** %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @splx(i32 %88)
  ret void
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @rcout(%struct.rc_softc*, i32, i64) #1

declare dso_local i32 @CCRCMD(%struct.rc_softc*, i64, i32) #1

declare dso_local i32 @WAITFORCCR(%struct.rc_softc*, i64) #1

declare dso_local i32 @rc_modem(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydtrwaitstart(%struct.tty*) #1

declare dso_local i32 @wakeup(%struct.rc_softc**) #1

declare dso_local %struct.rc_softc** @TSA_CARR_ON(%struct.tty*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
