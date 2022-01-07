; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_get_aux_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_get_aux_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSMC_SEND_DEV_ID = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"psm: SEND_DEV_ID return code:%04x\0A\00", align 1
@PSM_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"psm: device ID: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_aux_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_aux_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @empty_aux_buffer(i32 %6, i32 5)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PSMC_SEND_DEV_ID, align 4
  %10 = call i32 @send_aux_command(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @LOG_DEBUG, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @VLOG(i32 2, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PSM_ACK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = call i32 @DELAY(i32 10000)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @read_aux_data(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @LOG_DEBUG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @VLOG(i32 2, i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @empty_aux_buffer(i32, i32) #1

declare dso_local i32 @send_aux_command(i32, i32) #1

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_aux_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
