; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hal* }
%struct.ath_hal = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"btcoex_profile\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"wb195\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"wb222\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"wb225\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"wb335\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_btcoex_attach(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i8*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 1
  %9 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  store %struct.ath_hal* %9, %struct.ath_hal** %5, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %11 = call i32 @ath_hal_btcoex_supported(%struct.ath_hal* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_get_name(i32 %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_get_unit(i32 %21)
  %23 = call i32 @resource_string_value(i32 %18, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %65

27:                                               ; preds = %14
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %33 = call i32 @ath_btcoex_cfg_wb195(%struct.ath_softc* %32)
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %40 = call i32 @ath_btcoex_cfg_wb222(%struct.ath_softc* %39)
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %47 = call i32 @ath_btcoex_cfg_wb225(%struct.ath_softc* %46)
  store i32 %47, i32* %4, align 4
  br label %57

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %54 = call i32 @ath_btcoex_cfg_wb335b(%struct.ath_softc* %53)
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %65

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %62, %55, %26, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ath_hal_btcoex_supported(%struct.ath_hal*) #1

declare dso_local i32 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ath_btcoex_cfg_wb195(%struct.ath_softc*) #1

declare dso_local i32 @ath_btcoex_cfg_wb222(%struct.ath_softc*) #1

declare dso_local i32 @ath_btcoex_cfg_wb225(%struct.ath_softc*) #1

declare dso_local i32 @ath_btcoex_cfg_wb335b(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
