; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_sessions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32, i32 }

@HIFN_0_PUCNFG = common dso_local global i32 0, align 4
@HIFN_PUCNFG_COMPSING = common dso_local global i32 0, align 4
@HIFN_PUCNFG_ENCCNFG = common dso_local global i32 0, align 4
@HIFN_IS_7956 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_softc*)* @hifn_sessions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_sessions(%struct.hifn_softc* %0) #0 {
  %2 = alloca %struct.hifn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %2, align 8
  %5 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %6 = load i32, i32* @HIFN_0_PUCNFG, align 4
  %7 = call i32 @READ_REG_0(%struct.hifn_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @HIFN_PUCNFG_COMPSING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @HIFN_PUCNFG_ENCCNFG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 128, i32* %4, align 4
  br label %19

18:                                               ; preds = %12
  store i32 512, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %21 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HIFN_IS_7956, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 32768, %27
  %29 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %41

31:                                               ; preds = %19
  %32 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 32768
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %35, %36
  %38 = add nsw i32 1, %37
  %39 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %40 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %26
  br label %49

42:                                               ; preds = %1
  %43 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %44 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 16384
  %47 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %48 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %41
  %50 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %51 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 2048
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %56 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %55, i32 0, i32 1
  store i32 2048, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @READ_REG_0(%struct.hifn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
