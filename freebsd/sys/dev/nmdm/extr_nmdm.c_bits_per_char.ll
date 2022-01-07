; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_bits_per_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_bits_per_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.termios*)* @bits_per_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bits_per_char(%struct.termios* %0) #0 {
  %2 = alloca %struct.termios*, align 8
  %3 = alloca i32, align 4
  store %struct.termios* %0, %struct.termios** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.termios*, %struct.termios** %2, align 8
  %5 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CSIZE, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %21 [
    i32 131, label %9
    i32 130, label %12
    i32 129, label %15
    i32 128, label %18
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 5
  store i32 %11, i32* %3, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 6
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 7
  store i32 %17, i32* %3, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %1, %18, %15, %12, %9
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load %struct.termios*, %struct.termios** %2, align 8
  %25 = getelementptr inbounds %struct.termios, %struct.termios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PARENB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.termios*, %struct.termios** %2, align 8
  %35 = getelementptr inbounds %struct.termios, %struct.termios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CSTOPB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
