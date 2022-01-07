; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.rum_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timeout waiting for BBP\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@rum_def_bbp = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*)* @rum_bbp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_bbp_init(%struct.rum_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %12 = call i32 @rum_bbp_read(%struct.rum_softc* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %30

19:                                               ; preds = %15, %10
  %20 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %21 = load i32, i32* @hz, align 4
  %22 = sdiv i32 %21, 100
  %23 = call i64 @rum_pause(%struct.rum_softc* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %7

30:                                               ; preds = %25, %18, %7
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 100
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %35 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* %2, align 4
  br label %111

39:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rum_def_bbp, align 8
  %43 = call i32 @nitems(%struct.TYPE_5__* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rum_def_bbp, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rum_def_bbp, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rum_bbp_write(%struct.rum_softc* %46, i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %40

63:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %107, %63
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %110

67:                                               ; preds = %64
  %68 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %67
  %78 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %79 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 255
  br i1 %86, label %87, label %88

87:                                               ; preds = %77, %67
  br label %107

88:                                               ; preds = %77
  %89 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %90 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %91 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %99 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rum_bbp_write(%struct.rum_softc* %89, i32 %97, i32 %105)
  br label %107

107:                                              ; preds = %88, %87
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %64

110:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %33
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @rum_bbp_read(%struct.rum_softc*, i32) #1

declare dso_local i64 @rum_pause(%struct.rum_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @rum_bbp_write(%struct.rum_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
