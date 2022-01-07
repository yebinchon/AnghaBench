; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_type_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_type_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm75_softc = type { i32, i32, i32, i32 }

@LM75_TEST_PATTERN = common dso_local global i32 0, align 4
@HWTYPE_LM75A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm75_softc*)* @lm75_type_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_type_detect(%struct.lm75_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm75_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm75_softc* %0, %struct.lm75_softc** %3, align 8
  %8 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %9 = call i64 @lm75_conf_read(%struct.lm75_softc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %84

12:                                               ; preds = %1
  %13 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %14 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @LM75_TEST_PATTERN, align 4
  %17 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %18 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %20 = call i64 @lm75_conf_write(%struct.lm75_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %84

23:                                               ; preds = %12
  %24 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %25 = call i64 @lm75_conf_read(%struct.lm75_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %84

28:                                               ; preds = %23
  %29 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %30 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LM75_TEST_PATTERN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %84

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  store i32 4, i32* %4, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp sle i32 %37, 6
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %41 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %44 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @lm75_read(i32 %42, i32 %45, i32 %46, i32* %6, i32 4)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %84

50:                                               ; preds = %39
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @LM75_TEST_PATTERN, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 255
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %84

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 255
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @HWTYPE_LM75A, align 4
  %73 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %74 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %78 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.lm75_softc*, %struct.lm75_softc** %3, align 8
  %80 = call i64 @lm75_conf_write(%struct.lm75_softc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 -1, i32* %2, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %82, %57, %49, %34, %27, %22, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @lm75_conf_read(%struct.lm75_softc*) #1

declare dso_local i64 @lm75_conf_write(%struct.lm75_softc*) #1

declare dso_local i64 @lm75_read(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
