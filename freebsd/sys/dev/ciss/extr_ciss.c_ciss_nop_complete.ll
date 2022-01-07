; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_nop_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_nop_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { %struct.ciss_softc* }
%struct.ciss_softc = type { i32 }

@ciss_nop_complete.first_time = internal global i32 1, align 4
@.str = private unnamed_addr constant [50 x i8] c"SENDING NOP MESSAGE FAILED (not logging anymore)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_request*)* @ciss_nop_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_nop_complete(%struct.ciss_request* %0) #0 {
  %2 = alloca %struct.ciss_request*, align 8
  %3 = alloca %struct.ciss_softc*, align 8
  store %struct.ciss_request* %0, %struct.ciss_request** %2, align 8
  %4 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %5 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %4, i32 0, i32 0
  %6 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  store %struct.ciss_softc* %6, %struct.ciss_softc** %3, align 8
  %7 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %8 = call i64 @ciss_report_request(%struct.ciss_request* %7, i32* null, i32* null)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @ciss_nop_complete.first_time, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  store i32 0, i32* @ciss_nop_complete.first_time, align 4
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %15 = call i32 @ciss_printf(%struct.ciss_softc* %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %19 = call i32 @ciss_release_request(%struct.ciss_request* %18)
  ret void
}

declare dso_local i64 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
