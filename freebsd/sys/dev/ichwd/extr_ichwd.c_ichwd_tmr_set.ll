; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_tmr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_tmr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32, i32, i32 }

@TCO_RLD_TMR_MIN = common dso_local global i32 0, align 4
@TCO_TMR1 = common dso_local global i32 0, align 4
@TCO_RLD1_TMR_MAX = common dso_local global i32 0, align 4
@TCO_TMR2 = common dso_local global i32 0, align 4
@TCO_RLD2_TMR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timeout set to %u ticks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ichwd_softc*, i32)* @ichwd_tmr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ichwd_tmr_set(%struct.ichwd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ichwd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ichwd_softc* %0, %struct.ichwd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TCO_RLD_TMR_MIN, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @TCO_RLD_TMR_MIN, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %19 = load i32, i32* @TCO_TMR1, align 4
  %20 = call i32 @ichwd_read_tco_1(%struct.ichwd_softc* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @TCO_RLD1_TMR_MAX, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %22, 255
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TCO_RLD1_TMR_MAX, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @TCO_RLD1_TMR_MAX, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %36 = load i32, i32* @TCO_TMR1, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ichwd_write_tco_1(%struct.ichwd_softc* %35, i32 %36, i32 %37)
  br label %61

39:                                               ; preds = %12
  %40 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %41 = load i32, i32* @TCO_TMR2, align 4
  %42 = call i32 @ichwd_read_tco_2(%struct.ichwd_softc* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @TCO_RLD2_TMR_MAX, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %44, 65535
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TCO_RLD2_TMR_MAX, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @TCO_RLD2_TMR_MAX, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %39
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %58 = load i32, i32* @TCO_TMR2, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ichwd_write_tco_2(%struct.ichwd_softc* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %31
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ichwd_verbose_printf(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @ichwd_read_tco_1(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_write_tco_1(%struct.ichwd_softc*, i32, i32) #1

declare dso_local i32 @ichwd_read_tco_2(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_write_tco_2(%struct.ichwd_softc*, i32, i32) #1

declare dso_local i32 @ichwd_verbose_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
