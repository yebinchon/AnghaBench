; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpbb.c_lpbb_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpbb.c_lpbb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPB_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't allocate ppbus\0A\00", align 1
@IIC_ENOADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @lpbb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpbb_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @ppb_lock(i32 %13)
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PPB_DONTWAIT, align 4
  %18 = call i64 @ppb_request_bus(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ppb_unlock(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %34

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @lpbb_reset_bus(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ppb_release_bus(i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ppb_unlock(i32 %31)
  %33 = load i32, i32* @IIC_ENOADDR, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i64 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @lpbb_reset_bus(i32) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
