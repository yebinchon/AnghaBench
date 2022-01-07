; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212Probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212Probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATHEROS_VENDOR_ID = common dso_local global i64 0, align 8
@ATHEROS_3COM_VENDOR_ID = common dso_local global i64 0, align 8
@ATHEROS_3COM2_VENDOR_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Atheros 5212 (FPGA)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Atheros 5212\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Atheros 2413\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Atheros 2417\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Atheros 5413\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Atheros 5424/2424\00", align 1
@AH_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @ar5212Probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ar5212Probe(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ATHEROS_VENDOR_ID, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @ATHEROS_3COM_VENDOR_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ATHEROS_3COM2_VENDOR_ID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13, %9, %2
  %18 = load i64, i64* %5, align 8
  switch i64 %18, label %25 [
    i64 128, label %19
    i64 130, label %20
    i64 129, label %20
    i64 131, label %20
    i64 135, label %21
    i64 134, label %22
    i64 133, label %23
    i64 132, label %24
  ]

19:                                               ; preds = %17
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

20:                                               ; preds = %17, %17, %17
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %28

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %28

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %28

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %28

24:                                               ; preds = %17
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %28

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i8*, i8** @AH_NULL, align 8
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %26, %24, %23, %22, %21, %20, %19
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
