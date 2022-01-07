; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_load_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_load_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.stack* }
%struct.stack = type { i32 }
%struct.value = type { i32 }

@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"stack register '%c' (0%o) is empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_stack() #0 {
  %1 = alloca %struct.stack*, align 8
  %2 = alloca %struct.value*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @readreg()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %0
  %8 = load %struct.stack*, %struct.stack** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.stack, %struct.stack* %8, i64 %10
  store %struct.stack* %11, %struct.stack** %1, align 8
  store %struct.value* null, %struct.value** %2, align 8
  %12 = load %struct.stack*, %struct.stack** %1, align 8
  %13 = call i64 @stack_size(%struct.stack* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.stack*, %struct.stack** %1, align 8
  %17 = call %struct.value* @stack_pop(%struct.stack* %16)
  store %struct.value* %17, %struct.value** %2, align 8
  br label %18

18:                                               ; preds = %15, %7
  %19 = load %struct.value*, %struct.value** %2, align 8
  %20 = icmp ne %struct.value* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.value*, %struct.value** %2, align 8
  %23 = call i32 @push(%struct.value* %22)
  br label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %0
  ret void
}

declare dso_local i32 @readreg(...) #1

declare dso_local i64 @stack_size(%struct.stack*) #1

declare dso_local %struct.value* @stack_pop(%struct.stack*) #1

declare dso_local i32 @push(%struct.value*) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
