; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_i8254_get_timecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_i8254_get_timecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32 }
%struct.attimer_softc = type { i64 }

@i8254_max_count = common dso_local global i32 0, align 4
@clock_lock = common dso_local global i32 0, align 4
@TIMER_MODE = common dso_local global i32 0, align 4
@TIMER_SEL0 = common dso_local global i32 0, align 4
@TIMER_LATCH = common dso_local global i32 0, align 4
@TIMER_CNTR0 = common dso_local global i32 0, align 4
@i8254_lastcount = common dso_local global i32 0, align 4
@i8254_ticked = common dso_local global i32 0, align 4
@clkintr_pending = common dso_local global i64 0, align 8
@PSL_I = common dso_local global i32 0, align 4
@i8254_intsrc = common dso_local global i32 0, align 4
@i8254_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timecounter*)* @i8254_get_timecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8254_get_timecount(%struct.timecounter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timecounter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.attimer_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timecounter* %0, %struct.timecounter** %3, align 8
  %10 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %11 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.attimer_softc* @device_get_softc(i32 %13)
  store %struct.attimer_softc* %14, %struct.attimer_softc** %5, align 8
  %15 = load %struct.attimer_softc*, %struct.attimer_softc** %5, align 8
  %16 = getelementptr inbounds %struct.attimer_softc, %struct.attimer_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @i8254_max_count, align 4
  %21 = call i32 (...) @getit()
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %81

23:                                               ; preds = %1
  %24 = call i32 (...) @read_rflags()
  store i32 %24, i32* %6, align 4
  %25 = call i32 @mtx_lock_spin(i32* @clock_lock)
  %26 = load i32, i32* @TIMER_MODE, align 4
  %27 = load i32, i32* @TIMER_SEL0, align 4
  %28 = load i32, i32* @TIMER_LATCH, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @outb(i32 %26, i32 %29)
  %31 = load i32, i32* @TIMER_CNTR0, align 4
  %32 = call i32 @inb(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @TIMER_CNTR0, align 4
  %34 = call i32 @inb(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @i8254_max_count, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %37, %38
  %40 = sub nsw i32 %35, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @i8254_lastcount, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %67, label %44

44:                                               ; preds = %23
  %45 = load i32, i32* @i8254_ticked, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @clkintr_pending, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 20
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PSL_I, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @i8254_max_count, align 4
  %61 = udiv i32 %60, 2
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %58, %50
  %64 = load i32, i32* @i8254_intsrc, align 4
  %65 = call i64 @i8254_pending(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63, %47, %23
  store i32 1, i32* @i8254_ticked, align 4
  %68 = load i32, i32* @i8254_max_count, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @i8254_offset, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* @i8254_offset, align 8
  br label %72

72:                                               ; preds = %67, %63, %58, %53, %44
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* @i8254_lastcount, align 4
  %74 = load i64, i64* @i8254_offset, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = call i32 @mtx_unlock_spin(i32* @clock_lock)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %72, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.attimer_softc* @device_get_softc(i32) #1

declare dso_local i32 @getit(...) #1

declare dso_local i32 @read_rflags(...) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @i8254_pending(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
