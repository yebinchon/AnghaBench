; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_acquire_swfw_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_acquire_swfw_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"e1000_acquire_swfw_sync\00", align 1
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@E1000_SW_FW_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Driver can't access resource, SW_FW_SYNC timeout.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_acquire_swfw_sync(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 16
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 200, i64* %10, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @ASSERT_NO_LOCKS()
  br label %17

17:                                               ; preds = %39, %2
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = call i64 @e1000_get_hw_semaphore(%struct.e1000_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %8, align 8
  br label %63

28:                                               ; preds = %21
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = load i32, i32* @E1000_SW_FW_SYNC, align 4
  %31 = call i32 @E1000_READ_REG(%struct.e1000_hw* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %45

39:                                               ; preds = %28
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i32 @e1000_put_hw_semaphore(%struct.e1000_hw* %40)
  %42 = call i32 @msec_delay_irq(i32 5)
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %17

45:                                               ; preds = %38, %17
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %8, align 8
  br label %63

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = load i32, i32* @E1000_SW_FW_SYNC, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = call i32 @e1000_put_hw_semaphore(%struct.e1000_hw* %61)
  br label %63

63:                                               ; preds = %53, %49, %25
  %64 = load i64, i64* %8, align 8
  ret i64 %64
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ASSERT_NO_LOCKS(...) #1

declare dso_local i64 @e1000_get_hw_semaphore(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_put_hw_semaphore(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay_irq(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
