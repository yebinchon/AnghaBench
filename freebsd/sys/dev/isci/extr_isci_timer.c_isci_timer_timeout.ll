; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_timer.c_isci_timer_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_timer.c_isci_timer_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_TIMER = type { i64, i32, i32 (i32)* }

@.str = private unnamed_addr constant [6 x i8] c"TIMER\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"timeout %p\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @isci_timer_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_timer_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ISCI_TIMER*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ISCI_TIMER*
  store %struct.ISCI_TIMER* %5, %struct.ISCI_TIMER** %3, align 8
  %6 = load %struct.ISCI_TIMER*, %struct.ISCI_TIMER** %3, align 8
  %7 = call i32 @isci_log_message(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.ISCI_TIMER* %6)
  %8 = load %struct.ISCI_TIMER*, %struct.ISCI_TIMER** %3, align 8
  %9 = getelementptr inbounds %struct.ISCI_TIMER, %struct.ISCI_TIMER* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.ISCI_TIMER*, %struct.ISCI_TIMER** %3, align 8
  %15 = getelementptr inbounds %struct.ISCI_TIMER, %struct.ISCI_TIMER* %14, i32 0, i32 2
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.ISCI_TIMER*, %struct.ISCI_TIMER** %3, align 8
  %18 = getelementptr inbounds %struct.ISCI_TIMER, %struct.ISCI_TIMER* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @isci_log_message(i32, i8*, i8*, %struct.ISCI_TIMER*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
