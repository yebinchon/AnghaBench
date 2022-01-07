; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_map_bios_mode_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_map_bios_mode_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map_bios_mode_num.cga_modes = internal global [7 x i32] [i32 149, i32 144, i32 148, i32 143, i32 147, i32 142, i32 146], align 16
@map_bios_mode_num.ega_modes = internal global [17 x i32] [i32 136, i32 134, i32 135, i32 133, i32 147, i32 142, i32 146, i32 138, i32 8, i32 9, i32 10, i32 11, i32 12, i32 141, i32 140, i32 137, i32 132], align 16
@map_bios_mode_num.vga_modes = internal global [20 x i32] [i32 131, i32 131, i32 130, i32 130, i32 147, i32 142, i32 146, i32 128, i32 8, i32 9, i32 10, i32 11, i32 12, i32 141, i32 140, i32 137, i32 132, i32 145, i32 139, i32 129], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @map_bios_mode_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_bios_mode_num(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %48 [
    i32 150, label %9
    i32 153, label %23
    i32 154, label %37
    i32 151, label %47
    i32 152, label %47
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @nitems(i32* getelementptr inbounds ([20 x i32], [20 x i32]* @map_bios_mode_num.vga_modes, i64 0, i64 0))
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* @map_bios_mode_num.vga_modes, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %9
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 130, i32* %4, align 4
  br label %50

22:                                               ; preds = %18
  store i32 128, i32* %4, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @nitems(i32* getelementptr inbounds ([17 x i32], [17 x i32]* @map_bios_mode_num.ega_modes, i64 0, i64 0))
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [17 x i32], [17 x i32]* @map_bios_mode_num.ega_modes, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %50

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 133, i32* %4, align 4
  br label %50

36:                                               ; preds = %32
  store i32 138, i32* %4, align 4
  br label %50

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nitems(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @map_bios_mode_num.cga_modes, i64 0, i64 0))
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [7 x i32], [7 x i32]* @map_bios_mode_num.cga_modes, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %37
  store i32 143, i32* %4, align 4
  br label %50

47:                                               ; preds = %3, %3
  store i32 138, i32* %4, align 4
  br label %50

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %46, %41, %36, %35, %27, %22, %21, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
