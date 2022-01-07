; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_register_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_register_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumpreg = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"no space for %d register slots (type %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_range(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dumpreg*, align 8
  %16 = alloca %struct.dumpreg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = call i64 @calloc(i32 %25, i32 8)
  %27 = inttoptr i64 %26 to %struct.dumpreg*
  store %struct.dumpreg* %27, %struct.dumpreg** %15, align 8
  %28 = load %struct.dumpreg*, %struct.dumpreg** %15, align 8
  %29 = icmp eq %struct.dumpreg* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %7
  %35 = load %struct.dumpreg*, %struct.dumpreg** %15, align 8
  store %struct.dumpreg* %35, %struct.dumpreg** %16, align 8
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %52, %34
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %17, align 4
  %43 = shl i32 %42, 2
  %44 = add nsw i32 %41, %43
  %45 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %46 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %49 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dumpreg*, %struct.dumpreg** %16, align 8
  %51 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %50, i32 1
  store %struct.dumpreg* %51, %struct.dumpreg** %16, align 8
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %17, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load %struct.dumpreg*, %struct.dumpreg** %15, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @register_regs(%struct.dumpreg* %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i32 @register_regs(%struct.dumpreg*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
