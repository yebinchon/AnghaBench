; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_count_digits.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_count_digits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.number*)* @count_digits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_digits(%struct.number* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.number*, align 8
  %4 = alloca %struct.number*, align 8
  %5 = alloca %struct.number*, align 8
  %6 = alloca i32, align 4
  store %struct.number* %0, %struct.number** %3, align 8
  %7 = load %struct.number*, %struct.number** %3, align 8
  %8 = getelementptr inbounds %struct.number, %struct.number* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @BN_is_zero(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.number*, %struct.number** %3, align 8
  %14 = getelementptr inbounds %struct.number, %struct.number* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.number*, %struct.number** %3, align 8
  %19 = getelementptr inbounds %struct.number, %struct.number* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 1, %21 ]
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %1
  %25 = call %struct.number* (...) @new_number()
  store %struct.number* %25, %struct.number** %4, align 8
  %26 = call %struct.number* (...) @new_number()
  store %struct.number* %26, %struct.number** %5, align 8
  %27 = load %struct.number*, %struct.number** %3, align 8
  %28 = getelementptr inbounds %struct.number, %struct.number* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.number*, %struct.number** %5, align 8
  %31 = getelementptr inbounds %struct.number, %struct.number* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.number*, %struct.number** %3, align 8
  %33 = load %struct.number*, %struct.number** %4, align 8
  %34 = getelementptr inbounds %struct.number, %struct.number* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.number*, %struct.number** %5, align 8
  %37 = getelementptr inbounds %struct.number, %struct.number* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @split_number(%struct.number* %32, i32 %35, i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %47, %24
  %41 = load %struct.number*, %struct.number** %4, align 8
  %42 = getelementptr inbounds %struct.number, %struct.number* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @BN_is_zero(i32 %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.number*, %struct.number** %4, align 8
  %49 = getelementptr inbounds %struct.number, %struct.number* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @BN_div_word(i32 %50, i32 10)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load %struct.number*, %struct.number** %4, align 8
  %56 = call i32 @free_number(%struct.number* %55)
  %57 = load %struct.number*, %struct.number** %5, align 8
  %58 = call i32 @free_number(%struct.number* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.number*, %struct.number** %3, align 8
  %61 = getelementptr inbounds %struct.number, %struct.number* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %54, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @BN_is_zero(i32) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @split_number(%struct.number*, i32, i32) #1

declare dso_local i32 @BN_div_word(i32, i32) #1

declare dso_local i32 @free_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
