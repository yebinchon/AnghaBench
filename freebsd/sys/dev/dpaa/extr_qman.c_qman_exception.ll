; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Initiator Data Error\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CoreNet Target Data Error\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid Target Transaction\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"PFDR Low Watermark Interrupt\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"PFDR Enqueues Blocked Interrupt\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Single Bit ECC Error Interrupt\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Multi Bit ECC Error Interrupt\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Invalid Command Verb Interrupt\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Invalid Dequeue Direct Connect Portal Interrupt\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Invalid Dequeue FQ Interrupt\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Invalid Dequeue Source Interrupt\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Invalid Dequeue Queue Interrupt\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Invalid Enqueue Overflow Interrupt\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Invalid Enqueue State Interrupt\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Invalid Enqueue Channel Interrupt\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Invalid Enqueue Queue Interrupt\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"CG change state notification\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"QMan Exception: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_softc*, i32)* @qman_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qman_exception(%struct.qman_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.qman_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qman_softc*, align 8
  %6 = alloca i8*, align 8
  store %struct.qman_softc* %0, %struct.qman_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qman_softc*, %struct.qman_softc** %3, align 8
  store %struct.qman_softc* %7, %struct.qman_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %26 [
    i32 143, label %9
    i32 141, label %10
    i32 142, label %11
    i32 129, label %12
    i32 130, label %13
    i32 128, label %14
    i32 131, label %15
    i32 132, label %16
    i32 140, label %17
    i32 139, label %18
    i32 137, label %19
    i32 138, label %20
    i32 135, label %21
    i32 133, label %22
    i32 136, label %23
    i32 134, label %24
    i32 144, label %25
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %27

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %27

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %27

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %27

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %27

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %27

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %27

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %27

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %27

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %27

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %27

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %27

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %27

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %27

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %27

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %27

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %27

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %28 = load %struct.qman_softc*, %struct.qman_softc** %5, align 8
  %29 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %31)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
