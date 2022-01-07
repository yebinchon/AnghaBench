; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_enable_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_enable_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLP_MAX_NODES = common dso_local global i32 0, align 4
@DFS_DEVICE_RSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xlp_enable_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_enable_blocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @XLP_MAX_NODES, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @XLP_IO_SYS_OFFSET(i32 %8)
  %10 = call i32 @nlm_dev_exists(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %19

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @nlm_get_sys_regbase(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @DFS_DEVICE_RSA, align 4
  %18 = call i32 @nlm_sys_enable_block(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %3

22:                                               ; preds = %3
  ret void
}

declare dso_local i32 @nlm_dev_exists(i32) #1

declare dso_local i32 @XLP_IO_SYS_OFFSET(i32) #1

declare dso_local i32 @nlm_get_sys_regbase(i32) #1

declare dso_local i32 @nlm_sys_enable_block(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
