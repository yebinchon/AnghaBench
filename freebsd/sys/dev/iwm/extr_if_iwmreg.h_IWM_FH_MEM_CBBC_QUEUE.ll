; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwmreg.h_IWM_FH_MEM_CBBC_QUEUE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwmreg.h_IWM_FH_MEM_CBBC_QUEUE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IWM_FH_MEM_CBBC_0_15_LOWER_BOUND = common dso_local global i32 0, align 4
@IWM_FH_MEM_CBBC_16_19_LOWER_BOUND = common dso_local global i32 0, align 4
@IWM_FH_MEM_CBBC_20_31_LOWER_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @IWM_FH_MEM_CBBC_QUEUE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IWM_FH_MEM_CBBC_QUEUE(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 16
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @IWM_FH_MEM_CBBC_0_15_LOWER_BOUND, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul i32 4, %8
  %10 = add i32 %7, %9
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 20
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @IWM_FH_MEM_CBBC_16_19_LOWER_BOUND, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub i32 %16, 16
  %18 = mul i32 4, %17
  %19 = add i32 %15, %18
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %11
  %21 = load i32, i32* @IWM_FH_MEM_CBBC_20_31_LOWER_BOUND, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub i32 %22, 20
  %24 = mul i32 4, %23
  %25 = add i32 %21, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %14, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
