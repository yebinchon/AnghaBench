; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_bbp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_bbp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.rt2860_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"timeout waiting for BBP to wake up\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@rt2860_def_bbp = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2860_softc*)* @rt2860_bbp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2860_bbp_init(%struct.rt2860_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 20
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %12 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %23

19:                                               ; preds = %15, %10
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

23:                                               ; preds = %18, %7
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 20
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %31, i32* %2, align 4
  br label %107

32:                                               ; preds = %23
  %33 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 21392
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %39 = call i32 @rt5390_bbp_init(%struct.rt2860_softc* %38)
  br label %65

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt2860_def_bbp, align 8
  %44 = call i32 @nitems(%struct.TYPE_3__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt2860_def_bbp, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt2860_def_bbp, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %47, i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %41

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %67 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 10336
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %72 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 257
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %77 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %76, i32 84, i32 25)
  br label %78

78:                                               ; preds = %75, %70, %65
  %79 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %80 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 12401
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %85 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %84, i32 79, i32 19)
  %86 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %87 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %86, i32 80, i32 5)
  %88 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %89 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %88, i32 81, i32 51)
  br label %106

90:                                               ; preds = %78
  %91 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %92 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 10336
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %97 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 256
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %102 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %101, i32 69, i32 22)
  %103 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %104 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %103, i32 73, i32 18)
  br label %105

105:                                              ; preds = %100, %95, %90
  br label %106

106:                                              ; preds = %105, %83
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %26
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rt5390_bbp_init(%struct.rt2860_softc*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
