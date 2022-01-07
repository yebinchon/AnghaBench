; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_hmi.c_opal_hmi_handler2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_hmi.c_opal_hmi_handler2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }

@OPAL_HANDLE_HMI2 = common dso_local global i32 0, align 4
@OPAL_HMI_FLAGS_TOD_TB_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TOD/TB recovery failure\00", align 1
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"HMI handler failed!  OPAL error code: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*)* @opal_hmi_handler2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_hmi_handler2(%struct.trapframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @OPAL_HANDLE_HMI2, align 4
  %7 = call i32 @vtophys(i32* %4)
  %8 = call i32 @opal_call(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @OPAL_HMI_FLAGS_TOD_TB_FAIL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @OPAL_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @opal_call(i32, i32) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
