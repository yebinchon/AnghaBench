; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_set_mouse_scaling.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_set_mouse_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSMC_SET_SCALING11 = common dso_local global i32 0, align 4
@PSMC_SET_SCALING21 = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"psm: SET_SCALING%s return code:%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@PSM_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_mouse_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mouse_scaling(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %8 [
    i32 1, label %7
    i32 2, label %10
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, i32* @PSMC_SET_SCALING11, align 4
  store i32 %9, i32* %4, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @PSMC_SET_SCALING21, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @send_aux_command(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @LOG_DEBUG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PSMC_SET_SCALING21, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @VLOG(i32 2, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PSM_ACK, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @send_aux_command(i32, i32) #1

declare dso_local i32 @VLOG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
