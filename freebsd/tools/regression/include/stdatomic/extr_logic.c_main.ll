; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/include/stdatomic/extr_logic.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/include/stdatomic/extr_logic.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@int8_t = common dso_local global i32 0, align 4
@uint8_t = common dso_local global i32 0, align 4
@int16_t = common dso_local global i32 0, align 4
@uint16_t = common dso_local global i32 0, align 4
@int32_t = common dso_local global i32 0, align 4
@uint32_t = common dso_local global i32 0, align 4
@int64_t = common dso_local global i32 0, align 4
@uint64_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 1000
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load i32, i32* @int8_t, align 4
  %8 = call i32 @TEST_TYPE(i32 %7)
  %9 = load i32, i32* @uint8_t, align 4
  %10 = call i32 @TEST_TYPE(i32 %9)
  %11 = load i32, i32* @int16_t, align 4
  %12 = call i32 @TEST_TYPE(i32 %11)
  %13 = load i32, i32* @uint16_t, align 4
  %14 = call i32 @TEST_TYPE(i32 %13)
  %15 = load i32, i32* @int32_t, align 4
  %16 = call i32 @TEST_TYPE(i32 %15)
  %17 = load i32, i32* @uint32_t, align 4
  %18 = call i32 @TEST_TYPE(i32 %17)
  %19 = load i32, i32* @int64_t, align 4
  %20 = call i32 @TEST_TYPE(i32 %19)
  %21 = load i32, i32* @uint64_t, align 4
  %22 = call i32 @TEST_TYPE(i32 %21)
  br label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %3

26:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @TEST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
