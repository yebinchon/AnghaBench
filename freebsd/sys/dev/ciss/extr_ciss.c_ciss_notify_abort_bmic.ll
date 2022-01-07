; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_abort_bmic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_abort_bmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_request = type { i32 }

@CISS_FLAG_NOTIFY_OK = common dso_local global i32 0, align 4
@CISS_COMMAND_ABORT_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"error sending BMIC Cancel Notify on Event command (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"error cancelling Notify on Event (%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_notify_abort_bmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_notify_abort_bmic(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %6 = call i32 @debug_called(i32 1)
  store %struct.ciss_request* null, %struct.ciss_request** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CISS_FLAG_NOTIFY_OK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %16 = load i32, i32* @CISS_COMMAND_ABORT_NOTIFY, align 4
  %17 = call i32 @ciss_get_bmic_request(%struct.ciss_softc* %15, %struct.ciss_request** %3, i32 %16, i32* null, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %40

20:                                               ; preds = %14
  %21 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %22 = call i32 @ciss_synch_request(%struct.ciss_request* %21, i32 60000)
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ciss_printf(%struct.ciss_softc* %25, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %30 = call i32 @ciss_report_request(%struct.ciss_request* %29, i32* %5, i32* null)
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %33 [
    i32 128, label %32
  ]

32:                                               ; preds = %28
  br label %39

33:                                               ; preds = %28
  %34 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ciss_name_command_status(i32 %35)
  %37 = call i32 @ciss_printf(%struct.ciss_softc* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %33, %24, %19, %13
  %41 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %42 = icmp ne %struct.ciss_request* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %45 = call i32 @ciss_release_request(%struct.ciss_request* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_get_bmic_request(%struct.ciss_softc*, %struct.ciss_request**, i32, i32*, i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
