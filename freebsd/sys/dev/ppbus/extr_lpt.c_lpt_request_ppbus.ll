; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lpt_request_ppbus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lpt_request_ppbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpt_data = type { i32 }

@HAVEBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lpt_request_ppbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_request_ppbus(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpt_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.lpt_data* @DEVTOSOFTC(i32 %11)
  store %struct.lpt_data* %12, %struct.lpt_data** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ppb_assert_locked(i32 %13)
  %15 = load %struct.lpt_data*, %struct.lpt_data** %7, align 8
  %16 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HAVEBUS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ppb_request_bus(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @HAVEBUS, align 4
  %31 = load %struct.lpt_data*, %struct.lpt_data** %7, align 8
  %32 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.lpt_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @ppb_assert_locked(i32) #1

declare dso_local i32 @ppb_request_bus(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
