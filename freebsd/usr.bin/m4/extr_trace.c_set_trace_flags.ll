; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_set_trace_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_set_trace_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trace_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_trace_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %14, label %18

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %2, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %3, align 1
  br label %18

18:                                               ; preds = %14, %9
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %2, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @letter_to_flag(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %19

31:                                               ; preds = %19
  %32 = load i8, i8* %3, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %45 [
    i32 0, label %34
    i32 43, label %36
    i32 45, label %40
  ]

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* @trace_flags, align 4
  br label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @trace_flags, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @trace_flags, align 4
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* @trace_flags, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* @trace_flags, align 4
  br label %45

45:                                               ; preds = %31, %40, %36, %34
  ret void
}

declare dso_local i32 @letter_to_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
