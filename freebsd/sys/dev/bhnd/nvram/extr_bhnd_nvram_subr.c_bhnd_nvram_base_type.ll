; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_base_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"bhnd nvram type %u unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_base_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %18 [
    i32 129, label %5
    i32 135, label %5
    i32 133, label %5
    i32 131, label %5
    i32 140, label %5
    i32 146, label %5
    i32 144, label %5
    i32 142, label %5
    i32 149, label %5
    i32 137, label %5
    i32 151, label %5
    i32 138, label %5
    i32 147, label %5
    i32 128, label %7
    i32 134, label %8
    i32 132, label %9
    i32 130, label %10
    i32 139, label %11
    i32 145, label %12
    i32 143, label %13
    i32 141, label %14
    i32 148, label %15
    i32 136, label %16
    i32 150, label %17
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  store i32 129, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  store i32 135, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  store i32 133, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  store i32 131, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  store i32 140, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  store i32 146, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  store i32 144, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  store i32 142, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  store i32 149, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  store i32 137, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  store i32 151, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %5
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
