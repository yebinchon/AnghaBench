; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_find_overflow_devnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_find_overflow_devnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@overflow_maj = common dso_local global i32 0, align 4
@IB_UVERBS_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"infiniband_verbs\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"user_verbs: couldn't register dynamic device number\0A\00", align 1
@overflow_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_overflow_devnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_overflow_devnum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @overflow_maj, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %7 = call i32 @alloc_chrdev_region(i32* @overflow_maj, i32 0, i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %24

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %0
  %15 = load i32, i32* @overflow_map, align 4
  %16 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %17 = call i32 @find_first_zero_bit(i32 %15, i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %1, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %21, %10
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
