; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_inwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_inwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.ucom_softc = type { i32, i64, i64, i64* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tp=%p\0A\00", align 1
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@UCOM_FLAG_INWAKEUP = common dso_local global i32 0, align 4
@UCOM_JITTERBUF_SIZE = common dso_local global i64 0, align 8
@UCOM_FLAG_RTS_IFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @ucom_inwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_inwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = call %struct.ucom_softc* @tty_softc(%struct.tty* %6)
  store %struct.ucom_softc* %7, %struct.ucom_softc** %3, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = icmp eq %struct.ucom_softc* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %101

11:                                               ; preds = %1
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %12, i32 %13)
  %15 = load %struct.tty*, %struct.tty** %2, align 8
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.tty* %15)
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = call i64 @ttydisc_can_bypass(%struct.tty* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @UCOM_FLAG_INWAKEUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20, %11
  br label %101

35:                                               ; preds = %27
  %36 = load i32, i32* @UCOM_FLAG_INWAKEUP, align 4
  %37 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %74, %35
  %45 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i8
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load %struct.tty*, %struct.tty** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ttydisc_rint(%struct.tty* %59, i32 %60, i32 0)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %75

64:                                               ; preds = %50
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @UCOM_JITTERBUF_SIZE, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* @UCOM_JITTERBUF_SIZE, align 8
  %72 = load i64, i64* %4, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %70, %64
  br label %44

75:                                               ; preds = %63, %44
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @UCOM_FLAG_RTS_IFLOW, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %93 = call i32 @ucom_rts(%struct.ucom_softc* %92, i32 0)
  br label %94

94:                                               ; preds = %91, %84, %75
  %95 = load i32, i32* @UCOM_FLAG_INWAKEUP, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %34, %10
  ret void
}

declare dso_local %struct.ucom_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.tty*) #1

declare dso_local i64 @ttydisc_can_bypass(%struct.tty*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @ucom_rts(%struct.ucom_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
