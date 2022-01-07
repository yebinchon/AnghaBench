; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_swapmode_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_swapmode_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_swap = type { i32 }

@kd = common dso_local global i32 0, align 4
@SWIF_DEV_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @swapmode_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapmode_kvm() #0 {
  %1 = alloca [16 x %struct.kvm_swap], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @kd, align 4
  %5 = getelementptr inbounds [16 x %struct.kvm_swap], [16 x %struct.kvm_swap]* %1, i64 0, i64 0
  %6 = load i32, i32* @SWIF_DEV_PREFIX, align 4
  %7 = call i32 @kvm_getswapinfo(i32 %4, %struct.kvm_swap* %5, i32 16, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = call i32 (...) @print_swap_header()
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %18, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x %struct.kvm_swap], [16 x %struct.kvm_swap]* %1, i64 0, i64 %15
  %17 = call i32 @print_swap(%struct.kvm_swap* %16)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %9

21:                                               ; preds = %9
  %22 = call i32 (...) @print_swap_total()
  ret void
}

declare dso_local i32 @kvm_getswapinfo(i32, %struct.kvm_swap*, i32, i32) #1

declare dso_local i32 @print_swap_header(...) #1

declare dso_local i32 @print_swap(%struct.kvm_swap*) #1

declare dso_local i32 @print_swap_total(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
