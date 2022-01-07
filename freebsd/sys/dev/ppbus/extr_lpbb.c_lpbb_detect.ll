; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpbb.c_lpbb_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpbb.c_lpbb_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPB_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't allocate ppbus\0A\00", align 1
@I2CKEY = common dso_local global i32 0, align 4
@ALIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lpbb_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpbb_detect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ppb_lock(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PPB_DONTWAIT, align 4
  %12 = call i64 @ppb_request_bus(i32 %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ppb_unlock(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @lpbb_reset_bus(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ppb_rstr(i32 %22)
  %24 = load i32, i32* @I2CKEY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ppb_rstr(i32 %28)
  %30 = load i32, i32* @ALIM, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @ALIM, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27, %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ppb_release_bus(i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ppb_unlock(i32 %38)
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ppb_release_bus(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ppb_unlock(i32 %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %34, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i64 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @lpbb_reset_bus(i32) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
