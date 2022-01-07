; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { %struct.bwi_regwin*, i32 }
%struct.bwi_regwin = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't select regwin %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_regwin_switch(%struct.bwi_softc* %0, %struct.bwi_regwin* %1, %struct.bwi_regwin** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca %struct.bwi_regwin*, align 8
  %7 = alloca %struct.bwi_regwin**, align 8
  %8 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %5, align 8
  store %struct.bwi_regwin* %1, %struct.bwi_regwin** %6, align 8
  store %struct.bwi_regwin** %2, %struct.bwi_regwin*** %7, align 8
  %9 = load %struct.bwi_regwin**, %struct.bwi_regwin*** %7, align 8
  %10 = icmp ne %struct.bwi_regwin** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load %struct.bwi_regwin**, %struct.bwi_regwin*** %7, align 8
  store %struct.bwi_regwin* null, %struct.bwi_regwin** %12, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %15 = call i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %13
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %21 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %20, i32 0, i32 0
  %22 = load %struct.bwi_regwin*, %struct.bwi_regwin** %21, align 8
  %23 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %24 = icmp ne %struct.bwi_regwin* %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %27 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %28 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bwi_regwin_select(%struct.bwi_softc* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %35 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %38 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %55

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.bwi_regwin**, %struct.bwi_regwin*** %7, align 8
  %45 = icmp ne %struct.bwi_regwin** %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %48 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %47, i32 0, i32 0
  %49 = load %struct.bwi_regwin*, %struct.bwi_regwin** %48, align 8
  %50 = load %struct.bwi_regwin**, %struct.bwi_regwin*** %7, align 8
  store %struct.bwi_regwin* %49, %struct.bwi_regwin** %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %53 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %54 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %53, i32 0, i32 0
  store %struct.bwi_regwin* %52, %struct.bwi_regwin** %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %33, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin*) #1

declare dso_local i32 @bwi_regwin_select(%struct.bwi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
