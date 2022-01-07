; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_wdog.c_ar5315_wdog_watchdog_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_ar5315_wdog.c_ar5315_wdog_watchdog_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5315_wdog_softc = type { i32, i32, i64 }

@WD_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ar5315_wdog_watchdog_fn: cmd: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"ar5315_wdog_watchdog_fn: programming timer: %jx\0A\00", align 1
@AR5315_WDOG_CTL_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ar5315_wdog_watchdog_fn: disarming\0A\00", align 1
@AR5315_WDOG_CTL_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*)* @ar5315_wdog_watchdog_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5315_wdog_watchdog_fn(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ar5315_wdog_softc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ar5315_wdog_softc*
  store %struct.ar5315_wdog_softc* %10, %struct.ar5315_wdog_softc** %7, align 8
  %11 = load i64, i64* @WD_INTERVAL, align 8
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %15 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i64, i64* %5, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = shl i64 1, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 (...) @ar531x_ahb_freq()
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 1000000000
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %35 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %40 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %27
  %45 = call i32 (...) @ar531x_wdog_timer()
  %46 = call i32 (...) @ar531x_ahb_freq()
  %47 = mul nsw i32 %46, 10
  %48 = call i32 @ATH_WRITE_REG(i32 %45, i32 %47)
  %49 = call i32 (...) @ar531x_wdog_ctl()
  %50 = load i32, i32* @AR5315_WDOG_CTL_RESET, align 4
  %51 = call i32 @ATH_WRITE_REG(i32 %49, i32 %50)
  %52 = call i32 (...) @ar531x_wdog_timer()
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ATH_WRITE_REG(i32 %52, i32 %53)
  %55 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %56 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32*, i32** %6, align 8
  store i32 0, i32* %57, align 4
  br label %80

58:                                               ; preds = %24
  %59 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %60 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %65 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %70 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = call i32 (...) @ar531x_wdog_ctl()
  %75 = load i32, i32* @AR5315_WDOG_CTL_IGNORE, align 4
  %76 = call i32 @ATH_WRITE_REG(i32 %74, i32 %75)
  %77 = load %struct.ar5315_wdog_softc*, %struct.ar5315_wdog_softc** %7, align 8
  %78 = getelementptr inbounds %struct.ar5315_wdog_softc, %struct.ar5315_wdog_softc* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %44
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ar531x_ahb_freq(...) #1

declare dso_local i32 @ATH_WRITE_REG(i32, i32) #1

declare dso_local i32 @ar531x_wdog_timer(...) #1

declare dso_local i32 @ar531x_wdog_ctl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
