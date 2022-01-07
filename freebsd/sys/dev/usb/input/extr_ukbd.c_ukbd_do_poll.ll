; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_do_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32, i64, i32, i32 }

@UKBD_FLAG_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ukbd_do_poll called when not polling\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"polling\0A\00", align 1
@PRI_UNCHANGED = common dso_local global i32 0, align 4
@UKBD_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ukbd_softc*, i32)* @ukbd_do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ukbd_do_poll(%struct.ukbd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ukbd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @UKBD_LOCK_ASSERT()
  %6 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @UKBD_FLAG_POLLING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i64 (...) @USB_IN_POLLING_MODE_FUNC()
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %29, %17
  %19 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @PRI_UNCHANGED, align 4
  %25 = call i32 @kern_yield(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23
  br label %18

30:                                               ; preds = %28, %18
  br label %59

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %58, %31
  %33 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @UKBD_N_TRANSFER, align 4
  %42 = call i32 @usbd_transfer_poll(i32 %40, i32 %41)
  %43 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %44 = call i64 @ukbd_any_key_pressed(%struct.ukbd_softc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = call i32 @DELAY(i32 1000)
  %48 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %54 = call i32 @ukbd_interrupt(%struct.ukbd_softc* %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52
  br label %32

59:                                               ; preds = %30, %57, %32
  ret void
}

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i64 @USB_IN_POLLING_MODE_FUNC(...) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @usbd_transfer_poll(i32, i32) #1

declare dso_local i64 @ukbd_any_key_pressed(%struct.ukbd_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ukbd_interrupt(%struct.ukbd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
