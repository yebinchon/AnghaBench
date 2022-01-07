; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lpt_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lpt_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lpt_detect.testbyte = internal global [18 x i32] [i32 85, i32 170, i32 254, i32 253, i32 251, i32 247, i32 239, i32 223, i32 191, i32 127, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], align 16
@PPB_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot alloc ppbus (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lpt_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_detect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ppb_lock(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PPB_DONTWAIT, align 4
  %14 = call i32 @lpt_request_ppbus(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ppb_unlock(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 18
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [18 x i32], [18 x i32]* @lpt_detect.testbyte, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lpt_port_test(i32 %32, i32 %36, i32 255)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %23

44:                                               ; preds = %39, %29
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ppb_wdtr(i32 %45, i32 0)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ppb_wctr(i32 %47, i32 0)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @lpt_release_ppbus(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ppb_unlock(i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @lpt_request_ppbus(i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @lpt_port_test(i32, i32, i32) #1

declare dso_local i32 @ppb_wdtr(i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @lpt_release_ppbus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
