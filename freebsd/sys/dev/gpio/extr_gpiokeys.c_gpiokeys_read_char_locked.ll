; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_read_char_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_read_char_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.gpiokeys_softc* }
%struct.gpiokeys_softc = type { i64, i32, i32 }

@NOKEY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@K_RAW = common dso_local global i64 0, align 8
@K_CODE = common dso_local global i64 0, align 8
@SCAN_RELEASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32)* @gpiokeys_read_char_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpiokeys_read_char_locked(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpiokeys_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %10, align 8
  store %struct.gpiokeys_softc* %11, %struct.gpiokeys_softc** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = call i32 @KBD_IS_ACTIVE(%struct.TYPE_5__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @NOKEY, align 8
  store i64 %16, i64* %3, align 8
  br label %63

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %60, %17
  %19 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = call i64 @gpiokeys_get_key(%struct.gpiokeys_softc* %19, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %6, align 8
  %31 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @K_RAW, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %3, align 8
  br label %63

37:                                               ; preds = %18
  %38 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %6, align 8
  %39 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @K_CODE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %3, align 8
  br label %63

45:                                               ; preds = %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @SCAN_CHAR(i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @SCAN_RELEASE, align 8
  %51 = and i64 %49, %50
  %52 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %6, align 8
  %53 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %52, i32 0, i32 2
  %54 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %6, align 8
  %55 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %54, i32 0, i32 1
  %56 = call i64 @genkbd_keyaction(%struct.TYPE_5__* %46, i32 %48, i64 %51, i32* %53, i32* %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @NOKEY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %18

61:                                               ; preds = %45
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %43, %35, %15
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32 @KBD_IS_ACTIVE(%struct.TYPE_5__*) #1

declare dso_local i64 @gpiokeys_get_key(%struct.gpiokeys_softc*, i32) #1

declare dso_local i64 @genkbd_keyaction(%struct.TYPE_5__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @SCAN_CHAR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
