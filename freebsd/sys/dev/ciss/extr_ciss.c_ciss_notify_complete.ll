; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { %struct.ciss_softc*, i64, %struct.ciss_command* }
%struct.ciss_softc = type { i32, i32*, i32* }
%struct.ciss_command = type { i32 }
%struct.ciss_notify = type { i64*, i64, i64, i32 }

@CISS_CMD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CISS_CMD_STATUS_TARGET_STATUS = common dso_local global i32 0, align 4
@CISS_CMD_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fatal error in Notify Event request (%s)\0A\00", align 1
@CISS_FLAG_NOTIFY_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"*** %.80s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"notify event class %d subclass %d detail %d\00", align 1
@CISS_NOTIFY_NOTIFIER = common dso_local global i64 0, align 8
@CISS_NOTIFY_NOTIFIER_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"notifier exiting\00", align 1
@CISS_FLAG_ABORTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_request*)* @ciss_notify_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_notify_complete(%struct.ciss_request* %0) #0 {
  %2 = alloca %struct.ciss_request*, align 8
  %3 = alloca %struct.ciss_command*, align 8
  %4 = alloca %struct.ciss_notify*, align 8
  %5 = alloca %struct.ciss_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ciss_request* %0, %struct.ciss_request** %2, align 8
  %8 = call i32 @debug_called(i32 1)
  %9 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %10 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %9, i32 0, i32 2
  %11 = load %struct.ciss_command*, %struct.ciss_command** %10, align 8
  store %struct.ciss_command* %11, %struct.ciss_command** %3, align 8
  %12 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %13 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ciss_notify*
  store %struct.ciss_notify* %15, %struct.ciss_notify** %4, align 8
  %16 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %17 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %16, i32 0, i32 0
  %18 = load %struct.ciss_softc*, %struct.ciss_softc** %17, align 8
  store %struct.ciss_softc* %18, %struct.ciss_softc** %5, align 8
  %19 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %20 = call i32 @ciss_report_request(%struct.ciss_request* %19, i32* %7, i32* %6)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CISS_CMD_STATUS_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CISS_CMD_STATUS_TARGET_STATUS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CISS_CMD_STATUS_TIMEOUT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64* @ciss_name_command_status(i32 %34)
  %36 = call i32 @ciss_printf(%struct.ciss_softc* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64* %35)
  %37 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %38 = call i32 @ciss_release_request(%struct.ciss_request* %37)
  %39 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %121

45:                                               ; preds = %28, %24, %1
  %46 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %47 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %54 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %55 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @ciss_printf(%struct.ciss_softc* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64* %56)
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %60 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %63 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %66 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %61, i64 %64, i32 %67)
  %69 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %70 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CISS_NOTIFY_NOTIFIER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %58
  %75 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %76 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CISS_NOTIFY_NOTIFIER_STATUS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %82 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = call i32 (i32, i8*, ...) @debug(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %94 = call i32 @ciss_release_request(%struct.ciss_request* %93)
  %95 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %98 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %97, i32 0, i32 2
  %99 = call i32 @wakeup(i32** %98)
  br label %111

100:                                              ; preds = %80, %74, %58
  %101 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %102 = call i32 @ciss_enqueue_notify(%struct.ciss_request* %101)
  %103 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %104 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %105, i32 0, i32 2
  %107 = call i32 @wakeup(i32** %106)
  %108 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %109 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %108, i32 0, i32 1
  %110 = call i32 @wakeup(i32** %109)
  br label %111

111:                                              ; preds = %100, %85
  %112 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %113 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CISS_FLAG_ABORTING, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %120 = call i32 @ciss_notify_event(%struct.ciss_softc* %119)
  br label %121

121:                                              ; preds = %32, %118, %111
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i64*) #1

declare dso_local i64* @ciss_name_command_status(i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @wakeup(i32**) #1

declare dso_local i32 @ciss_enqueue_notify(%struct.ciss_request*) #1

declare dso_local i32 @ciss_notify_event(%struct.ciss_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
