; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_bbp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_bbp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.run_softc = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@rt2860_def_bbp = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*)* @run_bbp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_bbp_init(%struct.run_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %13 = call i32 @run_bbp_read(%struct.run_softc* %12, i32 0, i32* %7)
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %134

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %28

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %8

28:                                               ; preds = %23, %8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 20
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %32, i32* %2, align 4
  br label %134

33:                                               ; preds = %28
  %34 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %35 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 21392
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %40 = call i32 @run_rt5390_bbp_init(%struct.run_softc* %39)
  br label %66

41:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt2860_def_bbp, align 8
  %45 = call i32 @nitems(%struct.TYPE_3__* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt2860_def_bbp, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt2860_def_bbp, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @run_bbp_write(%struct.run_softc* %48, i32 %54, i32 %60)
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %42

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %68 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 13715
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %73 = call i32 @run_bbp_write(%struct.run_softc* %72, i32 79, i32 19)
  %74 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %75 = call i32 @run_bbp_write(%struct.run_softc* %74, i32 80, i32 5)
  %76 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %77 = call i32 @run_bbp_write(%struct.run_softc* %76, i32 81, i32 51)
  %78 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %79 = call i32 @run_bbp_write(%struct.run_softc* %78, i32 86, i32 70)
  %80 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %81 = call i32 @run_bbp_write(%struct.run_softc* %80, i32 137, i32 15)
  br label %82

82:                                               ; preds = %71, %66
  %83 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %84 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 10336
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %89 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 257
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %94 = call i32 @run_bbp_write(%struct.run_softc* %93, i32 84, i32 25)
  br label %95

95:                                               ; preds = %92, %87, %82
  %96 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %97 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 12400
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %102 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 13715
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %107 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 21906
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %112 = call i32 @run_bbp_write(%struct.run_softc* %111, i32 79, i32 19)
  %113 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %114 = call i32 @run_bbp_write(%struct.run_softc* %113, i32 80, i32 5)
  %115 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %116 = call i32 @run_bbp_write(%struct.run_softc* %115, i32 81, i32 51)
  br label %133

117:                                              ; preds = %105, %100, %95
  %118 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %119 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 10336
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %124 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 256
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %129 = call i32 @run_bbp_write(%struct.run_softc* %128, i32 69, i32 22)
  %130 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %131 = call i32 @run_bbp_write(%struct.run_softc* %130, i32 73, i32 18)
  br label %132

132:                                              ; preds = %127, %122, %117
  br label %133

133:                                              ; preds = %132, %110
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %31, %15
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt5390_bbp_init(%struct.run_softc*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
