; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_to_ascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_to_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i32 }
%struct.value = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.number* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @to_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_ascii() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.value*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = call %struct.value* (...) @pop()
  store %struct.value* %4, %struct.value** %2, align 8
  %5 = load %struct.value*, %struct.value** %2, align 8
  %6 = icmp ne %struct.value* %5, null
  br i1 %6, label %7, label %52

7:                                                ; preds = %0
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %8, align 1
  %9 = load %struct.value*, %struct.value** %2, align 8
  %10 = getelementptr inbounds %struct.value, %struct.value* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %46 [
    i32 130, label %12
    i32 129, label %13
    i32 128, label %38
  ]

12:                                               ; preds = %7
  br label %52

13:                                               ; preds = %7
  %14 = load %struct.value*, %struct.value** %2, align 8
  %15 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.number*, %struct.number** %16, align 8
  store %struct.number* %17, %struct.number** %1, align 8
  %18 = load %struct.number*, %struct.number** %1, align 8
  %19 = call i32 @normalize(%struct.number* %18, i32 0)
  %20 = load %struct.number*, %struct.number** %1, align 8
  %21 = getelementptr inbounds %struct.number, %struct.number* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BN_num_bits(i32 %22)
  %24 = icmp sgt i32 %23, 8
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load %struct.number*, %struct.number** %1, align 8
  %27 = getelementptr inbounds %struct.number, %struct.number* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BN_mask_bits(i32 %28, i32 8)
  %30 = call i32 @bn_check(i32 %29)
  br label %31

31:                                               ; preds = %25, %13
  %32 = load %struct.number*, %struct.number** %1, align 8
  %33 = getelementptr inbounds %struct.number, %struct.number* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @BN_get_word(i32 %34)
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %36, i8* %37, align 1
  br label %46

38:                                               ; preds = %7
  %39 = load %struct.value*, %struct.value** %2, align 8
  %40 = getelementptr inbounds %struct.value, %struct.value* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %44, i8* %45, align 1
  br label %46

46:                                               ; preds = %7, %38, %31
  %47 = load %struct.value*, %struct.value** %2, align 8
  %48 = call i32 @stack_free_value(%struct.value* %47)
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %50 = call i32 @bstrdup(i8* %49)
  %51 = call i32 @push_string(i32 %50)
  br label %52

52:                                               ; preds = %12, %46, %0
  ret void
}

declare dso_local %struct.value* @pop(...) #1

declare dso_local i32 @normalize(%struct.number*, i32) #1

declare dso_local i32 @BN_num_bits(i32) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_mask_bits(i32, i32) #1

declare dso_local i64 @BN_get_word(i32) #1

declare dso_local i32 @stack_free_value(%struct.value*) #1

declare dso_local i32 @push_string(i32) #1

declare dso_local i32 @bstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
