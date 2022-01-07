; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_rpn.c_pop.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_rpn.c_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sp = common dso_local global i64 0, align 8
@stack = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Stack empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @sp, align 8
  %3 = icmp ugt i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32*, i32** @stack, align 8
  %6 = load i64, i64* @sp, align 8
  %7 = add i64 %6, -1
  store i64 %7, i64* @sp, align 8
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  br label %13

10:                                               ; preds = %0
  %11 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
