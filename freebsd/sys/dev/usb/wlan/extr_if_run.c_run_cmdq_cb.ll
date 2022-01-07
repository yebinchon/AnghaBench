; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_cmdq_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_cmdq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)*, %struct.TYPE_3__* }

@RUN_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cmdq_exec=%d pending=%d\0A\00", align 1
@RUN_CMDQ_GO = common dso_local global i64 0, align 8
@RUN_CMDQ_MASQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @run_cmdq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_cmdq_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.run_softc*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.run_softc*
  store %struct.run_softc* %8, %struct.run_softc** %5, align 8
  %9 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %10 = call i32 @RUN_LOCK(%struct.run_softc* %9)
  %11 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %12 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %101, %2
  %15 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %16 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_3__*)* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i1 [ false, %14 ], [ %25, %23 ]
  br i1 %27, label %28, label %107

28:                                               ; preds = %26
  %29 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %30 = load i32, i32* @RUN_DEBUG_CMD, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @RUN_DPRINTF(%struct.run_softc* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %32)
  %34 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %35 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RUN_CMDQ_GO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %28
  %40 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %41 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %50 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %54, align 8
  %56 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %57 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 %55(%struct.TYPE_3__* %62)
  br label %78

64:                                               ; preds = %39
  %65 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %66 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %70, align 8
  %72 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %73 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = call i32 %71(%struct.TYPE_3__* %76)
  br label %78

78:                                               ; preds = %64, %48
  br label %79

79:                                               ; preds = %78, %28
  %80 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %81 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %85, align 8
  %86 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %87 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 (%struct.TYPE_3__*)* null, i32 (%struct.TYPE_3__*)** %91, align 8
  %92 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %93 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* @RUN_CMDQ_MASQ, align 8
  %97 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %98 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %79
  %102 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %103 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %6, align 8
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %4, align 4
  br label %14

107:                                              ; preds = %26
  %108 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %109 = call i32 @RUN_UNLOCK(%struct.run_softc* %108)
  ret void
}

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i64, i32) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
