; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wbwd/extr_wbwd.c_wb_set_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wbwd/extr_wbwd.c_wb_set_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb_softc = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Before watchdog counter (re)load\00", align 1
@WB_LDN8_CRF5_SCALE = common dso_local global i32 0, align 4
@WB_LDN8_CRF7_TS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"After watchdog counter (re)load\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wb_softc*, i32)* @wb_set_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_set_watchdog(%struct.wb_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wb_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.wb_softc* %0, %struct.wb_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %10 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %18, 15300
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %153

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %25 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %30 = call i32 @wb_print_state(%struct.wb_softc* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %36 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %38 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %41 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %44 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @superio_write(i32 %39, i32 %42, i32 %45)
  br label %144

47:                                               ; preds = %31
  %48 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %49 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %52 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @superio_read(i32 %50, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %57 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ugt i32 %58, 255
  br i1 %59, label %60, label %79

60:                                               ; preds = %47
  %61 = load i32, i32* @WB_LDN8_CRF5_SCALE, align 4
  %62 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %63 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %5, align 4
  %67 = udiv i32 %66, 60
  %68 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %69 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = urem i32 %70, 60
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %75 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %60
  br label %89

79:                                               ; preds = %47
  %80 = load i32, i32* @WB_LDN8_CRF5_SCALE, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %83 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %88 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %78
  %90 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %91 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %94 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @superio_read(i32 %92, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %99 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %101 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @WB_LDN8_CRF7_TS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %89
  %107 = load i32, i32* @WB_LDN8_CRF7_TS, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %110 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %114 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %117 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %120 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @superio_write(i32 %115, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %106, %89
  %124 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %125 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %128 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %131 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @superio_write(i32 %126, i32 %129, i32 %132)
  %134 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %135 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %138 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %141 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @superio_write(i32 %136, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %123, %34
  %145 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %146 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.wb_softc*, %struct.wb_softc** %4, align 8
  %151 = call i32 @wb_print_state(%struct.wb_softc* %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %20
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @wb_print_state(%struct.wb_softc*, i8*) #1

declare dso_local i32 @superio_write(i32, i32, i32) #1

declare dso_local i8* @superio_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
