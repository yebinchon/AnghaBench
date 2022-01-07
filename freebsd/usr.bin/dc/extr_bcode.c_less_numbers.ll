; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_less_numbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_less_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i32 }

@BCODE_LESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @less_numbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @less_numbers() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.number*, align 8
  %3 = alloca %struct.number*, align 8
  %4 = call %struct.number* (...) @pop_number()
  store %struct.number* %4, %struct.number** %1, align 8
  %5 = load %struct.number*, %struct.number** %1, align 8
  %6 = icmp eq %struct.number* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %31

8:                                                ; preds = %0
  %9 = call %struct.number* (...) @pop_number()
  store %struct.number* %9, %struct.number** %2, align 8
  %10 = load %struct.number*, %struct.number** %2, align 8
  %11 = icmp eq %struct.number* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.number*, %struct.number** %1, align 8
  %14 = call i32 @push_number(%struct.number* %13)
  br label %31

15:                                               ; preds = %8
  %16 = call %struct.number* (...) @new_number()
  store %struct.number* %16, %struct.number** %3, align 8
  %17 = load %struct.number*, %struct.number** %3, align 8
  %18 = getelementptr inbounds %struct.number, %struct.number* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BCODE_LESS, align 4
  %21 = load %struct.number*, %struct.number** %1, align 8
  %22 = load %struct.number*, %struct.number** %2, align 8
  %23 = call i64 @compare_numbers(i32 %20, %struct.number* %21, %struct.number* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = call i32 @BN_set_word(i32 %19, i32 %26)
  %28 = call i32 @bn_check(i32 %27)
  %29 = load %struct.number*, %struct.number** %3, align 8
  %30 = call i32 @push_number(%struct.number* %29)
  br label %31

31:                                               ; preds = %15, %12, %7
  ret void
}

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_set_word(i32, i32) #1

declare dso_local i64 @compare_numbers(i32, %struct.number*, %struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
