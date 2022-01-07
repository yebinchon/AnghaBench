; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_timer.c_scif_cb_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_timer.c_scif_cb_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_TIMER = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"TIMER\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"start %p %d\0A\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@isci_timer_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_timer_start(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ISCI_TIMER*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ISCI_TIMER*
  store %struct.ISCI_TIMER* %9, %struct.ISCI_TIMER** %7, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = load %struct.ISCI_TIMER*, %struct.ISCI_TIMER** %7, align 8
  %12 = getelementptr inbounds %struct.ISCI_TIMER, %struct.ISCI_TIMER* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @isci_log_message(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load %struct.ISCI_TIMER*, %struct.ISCI_TIMER** %7, align 8
  %17 = getelementptr inbounds %struct.ISCI_TIMER, %struct.ISCI_TIMER* %16, i32 0, i32 0
  %18 = load i32, i32* @SBT_1MS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @isci_timer_timeout, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @callout_reset_sbt(i32* %17, i32 %20, i32 0, i32 %21, i8* %22, i32 0)
  ret void
}

declare dso_local i32 @isci_log_message(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
