; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_nae_init_netior.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_nae_init_netior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"WARNING: unsupported blocks %d\0A\00", align 1
@NAE_LANE_CFG_SOFTRESET = common dso_local global i32 0, align 4
@NAE_NETIOR_MISC_CTRL3 = common dso_local global i32 0, align 4
@NAE_NETIOR_MISC_CTRL2 = common dso_local global i32 0, align 4
@NAE_NETIOR_MISC_CTRL1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_nae_init_netior(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1835008, i32* %8, align 4
  br label %13

12:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %17 [
    i32 2, label %15
    i32 4, label %16
    i32 5, label %16
  ]

15:                                               ; preds = %13
  store i32 255, i32* %6, align 4
  store i32 1799, i32* %7, align 4
  br label %20

16:                                               ; preds = %13, %13
  store i32 1048575, i32* %6, align 4
  store i32 117901063, i32* %7, align 4
  br label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %3, align 4
  br label %39

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NAE_LANE_CFG_SOFTRESET, align 4
  %23 = call i32 @nlm_write_nae_reg(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NAE_NETIOR_MISC_CTRL3, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @nlm_write_nae_reg(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @NAE_NETIOR_MISC_CTRL2, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @nlm_write_nae_reg(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NAE_NETIOR_MISC_CTRL1, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @nlm_write_nae_reg(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NAE_NETIOR_MISC_CTRL1, align 4
  %38 = call i32 @nlm_write_nae_reg(i32 %36, i32 %37, i32 0)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %20, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
