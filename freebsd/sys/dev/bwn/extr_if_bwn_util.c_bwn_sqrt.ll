; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_util.c_bwn_sqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_util.c_bwn_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@bwn_sqrt.sqrt_table = internal global [256 x i32] [i32 10, i32 14, i32 17, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 31, i32 33, i32 34, i32 36, i32 37, i32 38, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 50, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 60, i32 61, i32 62, i32 63, i32 64, i32 64, i32 65, i32 66, i32 67, i32 67, i32 68, i32 69, i32 70, i32 70, i32 71, i32 72, i32 72, i32 73, i32 74, i32 74, i32 75, i32 76, i32 76, i32 77, i32 78, i32 78, i32 79, i32 80, i32 80, i32 81, i32 81, i32 82, i32 83, i32 83, i32 84, i32 84, i32 85, i32 86, i32 86, i32 87, i32 87, i32 88, i32 88, i32 89, i32 90, i32 90, i32 91, i32 91, i32 92, i32 92, i32 93, i32 93, i32 94, i32 94, i32 95, i32 95, i32 96, i32 96, i32 97, i32 97, i32 98, i32 98, i32 99, i32 100, i32 100, i32 100, i32 101, i32 101, i32 102, i32 102, i32 103, i32 103, i32 104, i32 104, i32 105, i32 105, i32 106, i32 106, i32 107, i32 107, i32 108, i32 108, i32 109, i32 109, i32 110, i32 110, i32 110, i32 111, i32 111, i32 112, i32 112, i32 113, i32 113, i32 114, i32 114, i32 114, i32 115, i32 115, i32 116, i32 116, i32 117, i32 117, i32 117, i32 118, i32 118, i32 119, i32 119, i32 120, i32 120, i32 120, i32 121, i32 121, i32 122, i32 122, i32 122, i32 123, i32 123, i32 124, i32 124, i32 124, i32 125, i32 125, i32 126, i32 126, i32 126, i32 127, i32 127, i32 128, i32 128, i32 128, i32 129, i32 129, i32 130, i32 130, i32 130, i32 131, i32 131, i32 131, i32 132, i32 132, i32 133, i32 133, i32 133, i32 134, i32 134, i32 134, i32 135, i32 135, i32 136, i32 136, i32 136, i32 137, i32 137, i32 137, i32 138, i32 138, i32 138, i32 139, i32 139, i32 140, i32 140, i32 140, i32 141, i32 141, i32 141, i32 142, i32 142, i32 142, i32 143, i32 143, i32 143, i32 144, i32 144, i32 144, i32 145, i32 145, i32 145, i32 146, i32 146, i32 146, i32 147, i32 147, i32 147, i32 148, i32 148, i32 148, i32 149, i32 149, i32 150, i32 150, i32 150, i32 150, i32 151, i32 151, i32 151, i32 152, i32 152, i32 152, i32 153, i32 153, i32 153, i32 154, i32 154, i32 154, i32 155, i32 155, i32 155, i32 156, i32 156, i32 156, i32 157, i32 157, i32 157, i32 158, i32 158, i32 158, i32 159, i32 159, i32 159, i32 160], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_sqrt(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp uge i32 %11, 256
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %21, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul i32 2, %16
  %18 = add i32 %17, 1
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = mul i32 2, %22
  %25 = add i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %10
  %31 = load i32, i32* %5, align 4
  %32 = sub i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* @bwn_sqrt.sqrt_table, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 10
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %28, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
