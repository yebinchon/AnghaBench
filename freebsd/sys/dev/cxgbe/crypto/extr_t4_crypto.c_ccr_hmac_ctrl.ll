; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_hmac_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_hmac_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCMD_HMAC_CTRL_TRUNC_RFC4366 = common dso_local global i32 0, align 4
@SCMD_HMAC_CTRL_IPSEC_96BIT = common dso_local global i32 0, align 4
@SCMD_HMAC_CTRL_DIV2 = common dso_local global i32 0, align 4
@SCMD_HMAC_CTRL_NO_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ccr_hmac_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_hmac_ctrl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @SCMD_HMAC_CTRL_TRUNC_RFC4366, align 4
  store i32 %9, i32* %3, align 4
  br label %24

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @SCMD_HMAC_CTRL_IPSEC_96BIT, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = udiv i32 %17, 2
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @SCMD_HMAC_CTRL_DIV2, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @SCMD_HMAC_CTRL_NO_TRUNC, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20, %13, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
