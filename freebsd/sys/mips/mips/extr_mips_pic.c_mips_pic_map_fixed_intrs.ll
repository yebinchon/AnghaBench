; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_map_fixed_intrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_map_fixed_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_pic_intr = type { i64, i64 }

@mips_pic_intrs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid IRQ mapping: %u->%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_pic_map_fixed_intrs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.mips_pic_intr*, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @mips_pic_intrs, align 4
  %8 = call i64 @nitems(i32 %7)
  %9 = icmp slt i64 %6, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %5
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @mips_pic_map_fixed_intr(i64 %11, %struct.mips_pic_intr** %4)
  store i32 %12, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %37

16:                                               ; preds = %10
  %17 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %4, align 8
  %18 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %4, align 8
  %21 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %4, align 8
  %26 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %4, align 8
  %29 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30)
  br label %32

32:                                               ; preds = %24, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %3, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %5

36:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %14
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i64 @nitems(i32) #1

declare dso_local i32 @mips_pic_map_fixed_intr(i64, %struct.mips_pic_intr**) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
