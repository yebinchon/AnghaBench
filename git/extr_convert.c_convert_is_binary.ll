; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_convert_is_binary.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_convert_is_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_stat = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.text_stat*)* @convert_is_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_is_binary(%struct.text_stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.text_stat*, align 8
  store %struct.text_stat* %0, %struct.text_stat** %3, align 8
  %4 = load %struct.text_stat*, %struct.text_stat** %3, align 8
  %5 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.text_stat*, %struct.text_stat** %3, align 8
  %11 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %26

15:                                               ; preds = %9
  %16 = load %struct.text_stat*, %struct.text_stat** %3, align 8
  %17 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 7
  %20 = load %struct.text_stat*, %struct.text_stat** %3, align 8
  %21 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %14, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
