; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_bbp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_bbp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.rt2661_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"timeout waiting for BBP\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@rt2661_def_bbp = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2661_softc*)* @rt2661_bbp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_bbp_init(%struct.rt2661_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %12 = call i32 @rt2661_bbp_read(%struct.rt2661_softc* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %24

19:                                               ; preds = %15, %10
  %20 = call i32 @DELAY(i32 100)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %18, %7
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 100
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %2, align 4
  br label %95

33:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2661_def_bbp, align 8
  %37 = call i32 @nitems(%struct.TYPE_5__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2661_def_bbp, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2661_def_bbp, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %40, i64 %46, i32 %52)
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %34

57:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %91, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %63 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %91

72:                                               ; preds = %61
  %73 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %74 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %75 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %83 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @rt2661_bbp_write(%struct.rt2661_softc* %73, i64 %81, i32 %89)
  br label %91

91:                                               ; preds = %72, %71
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %58

94:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %27
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @rt2661_bbp_read(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @rt2661_bbp_write(%struct.rt2661_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
