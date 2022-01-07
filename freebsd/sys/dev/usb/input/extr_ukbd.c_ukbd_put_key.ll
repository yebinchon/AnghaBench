; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_put_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_put_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i64, i32*, i64, i32* }

@.str = private unnamed_addr constant [16 x i8] c"0x%02x (%d) %s\0A\00", align 1
@KEY_RELEASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@UKBD_IN_BUF_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"input buffer is full\0A\00", align 1
@EVDEV_RCPT_HW_KBD = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@evdev_rcpt_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ukbd_softc*, i32)* @ukbd_put_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ukbd_put_key(%struct.ukbd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ukbd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @UKBD_LOCK_ASSERT()
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KEY_RELEASE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i8* %13)
  %15 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UKBD_IN_BUF_SIZE, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %21, i32* %28, align 4
  %29 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UKBD_IN_BUF_SIZE, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %20
  %43 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %20
  br label %48

46:                                               ; preds = %2
  %47 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
