; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/intel-ucode-split/extr_intel-ucode-split.c_format_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/intel-ucode-split/extr_intel-ucode-split.c_format_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%02x-%02x-%02x\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @format_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_signature(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 3840
  %9 = ashr i32 %8, 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 240
  %12 = ashr i32 %11, 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 15
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 983040
  %23 = ashr i32 %22, 12
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 15
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 267386880
  %32 = ashr i32 %31, 20
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @asprintf(i8** %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i8*, i8** %3, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
