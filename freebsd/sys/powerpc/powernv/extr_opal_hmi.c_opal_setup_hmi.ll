; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_hmi.c_opal_setup_hmi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_hmi.c_opal_setup_hmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPAL_CHECK_TOKEN = common dso_local global i32 0, align 4
@OPAL_HANDLE_HMI2 = common dso_local global i32 0, align 4
@OPAL_TOKEN_PRESENT = common dso_local global i64 0, align 8
@opal_hmi_handler2 = common dso_local global i32 0, align 4
@hmi_handler = common dso_local global i32 0, align 4
@OPAL_HANDLE_HMI = common dso_local global i32 0, align 4
@opal_hmi_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Warning: No OPAL HMI handler found.\0A\00", align 1
@OPAL_HMI_EVT = common dso_local global i32 0, align 4
@opal_hmi_event_handler = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Installed OPAL HMI handler.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @opal_setup_hmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_setup_hmi(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i64 (...) @opal_check()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %34

6:                                                ; preds = %1
  %7 = load i32, i32* @OPAL_CHECK_TOKEN, align 4
  %8 = load i32, i32* @OPAL_HANDLE_HMI2, align 4
  %9 = call i64 @opal_call(i32 %7, i32 %8)
  %10 = load i64, i64* @OPAL_TOKEN_PRESENT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i32, i32* @opal_hmi_handler2, align 4
  store i32 %13, i32* @hmi_handler, align 4
  br label %25

14:                                               ; preds = %6
  %15 = load i32, i32* @OPAL_CHECK_TOKEN, align 4
  %16 = load i32, i32* @OPAL_HANDLE_HMI, align 4
  %17 = call i64 @opal_call(i32 %15, i32 %16)
  %18 = load i64, i64* @OPAL_TOKEN_PRESENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @opal_hmi_handler, align 4
  store i32 %21, i32* @hmi_handler, align 4
  br label %24

22:                                               ; preds = %14
  %23 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %34

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* @OPAL_HMI_EVT, align 4
  %27 = load i32, i32* @opal_hmi_event_handler, align 4
  %28 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %29 = call i32 @EVENTHANDLER_REGISTER(i32 %26, i32 %27, i32* null, i32 %28)
  %30 = load i64, i64* @bootverbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %5, %22, %32, %25
  ret void
}

declare dso_local i64 @opal_check(...) #1

declare dso_local i64 @opal_call(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
