; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_bbp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_bbp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.rt2560_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@RT2560_BBP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timeout waiting for BBP\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@rt2560_def_bbp = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2560_softc*)* @rt2560_bbp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_bbp_init(%struct.rt2560_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %11 = load i32, i32* @RT2560_BBP_VERSION, align 4
  %12 = call i64 @rt2560_bbp_read(%struct.rt2560_softc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  %16 = call i32 @DELAY(i32 1)
  br label %17

17:                                               ; preds = %15
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6

20:                                               ; preds = %14, %6
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 100
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  store i32 %28, i32* %2, align 4
  br label %105

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2560_def_bbp, align 8
  %33 = call i32 @nitems(%struct.TYPE_5__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2560_def_bbp, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2560_def_bbp, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rt2560_bbp_write(%struct.rt2560_softc* %36, i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %30

53:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %99, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %102

57:                                               ; preds = %54
  %58 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %59 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %102

78:                                               ; preds = %67, %57
  %79 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %80 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %81 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %90 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @rt2560_bbp_write(%struct.rt2560_softc* %79, i32 %88, i32 %97)
  br label %99

99:                                               ; preds = %78
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %54

102:                                              ; preds = %77, %54
  %103 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %104 = call i32 @rt2560_bbp_write(%struct.rt2560_softc* %103, i32 17, i32 72)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %23
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @rt2560_bbp_read(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @rt2560_bbp_write(%struct.rt2560_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
