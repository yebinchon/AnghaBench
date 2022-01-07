; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_auto_rd_done_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_auto_rd_done_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"e1000_get_auto_rd_done_generic\00", align 1
@AUTO_READ_DONE_TIMEOUT = common dso_local global i64 0, align 8
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_AUTO_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Auto read by HW from NVM has not completed.\0A\00", align 1
@E1000_ERR_RESET = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @AUTO_READ_DONE_TIMEOUT, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @E1000_EECD, align 4
  %13 = call i32 @E1000_READ_REG(%struct.e1000_hw* %11, i32 %12)
  %14 = load i32, i32* @E1000_EECD_AUTO_RD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  %19 = call i32 @msec_delay(i32 1)
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %6

22:                                               ; preds = %17, %6
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @AUTO_READ_DONE_TIMEOUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* @E1000_ERR_RESET, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %2, align 8
  br label %32

30:                                               ; preds = %22
  %31 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
