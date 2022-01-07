; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_get_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32, i64, i32*, i64, i32* }

@UKBD_FLAG_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"not polling in kdb or panic\0A\00", align 1
@UKBD_FLAG_GONE = common dso_local global i32 0, align 4
@UKBD_INTR_DT_0 = common dso_local global i64 0, align 8
@UKBD_INTR_DT_1 = common dso_local global i64 0, align 8
@UKBD_IN_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ukbd_softc*, i32)* @ukbd_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ukbd_get_key(%struct.ukbd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ukbd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @UKBD_LOCK_ASSERT()
  %7 = call i64 (...) @USB_IN_POLLING_MODE_FUNC()
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UKBD_FLAG_POLLING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i1 [ true, %2 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %16
  %25 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UKBD_FLAG_GONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @UKBD_INTR_DT_0, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usbd_transfer_start(i32 %37)
  %39 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @UKBD_INTR_DT_1, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usbd_transfer_start(i32 %44)
  br label %46

46:                                               ; preds = %31, %24, %16
  %47 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UKBD_FLAG_POLLING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ukbd_do_poll(%struct.ukbd_softc* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %89

63:                                               ; preds = %57
  %64 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UKBD_IN_BUF_SIZE, align 8
  %84 = icmp uge i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %63
  %86 = load %struct.ukbd_softc*, %struct.ukbd_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %63
  br label %89

89:                                               ; preds = %88, %62
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @USB_IN_POLLING_MODE_FUNC(...) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @ukbd_do_poll(%struct.ukbd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
