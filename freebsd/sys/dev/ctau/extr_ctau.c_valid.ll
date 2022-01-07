; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i16*)* @valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid(i16 signext %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  store i16 %0, i16* %4, align 2
  store i16* %1, i16** %5, align 8
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i16*, i16** %5, align 8
  %8 = load i16, i16* %7, align 2
  %9 = icmp ne i16 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i16, i16* %4, align 2
  %12 = sext i16 %11 to i32
  %13 = load i16*, i16** %5, align 8
  %14 = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %14, i16** %5, align 8
  %15 = load i16, i16* %13, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %21

19:                                               ; preds = %10
  br label %6

20:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
