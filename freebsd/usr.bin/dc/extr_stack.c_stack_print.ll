; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_stack_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_print(i32* %0, %struct.stack* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.stack* %1, %struct.stack** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.stack*, %struct.stack** %6, align 8
  %11 = getelementptr inbounds %struct.stack, %struct.stack* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %28, %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.stack*, %struct.stack** %6, align 8
  %19 = getelementptr inbounds %struct.stack, %struct.stack* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @print_value(i32* %17, i32* %22, i8* %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @putc(i8 signext 10, i32* %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %9, align 8
  br label %13

31:                                               ; preds = %13
  ret void
}

declare dso_local i32 @print_value(i32*, i32*, i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
