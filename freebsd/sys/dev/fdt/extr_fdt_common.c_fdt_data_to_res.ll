; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_data_to_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_data_to_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_data_to_res(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @ERANGE, align 4
  store i32 %15, i32* %6, align 4
  br label %36

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @fdt_data_get(i8* %18, i32 %19)
  %21 = load i32*, i32** %10, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @ERANGE, align 4
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %16
  %31 = load i32*, i32** %7, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @fdt_data_get(i8* %32, i32 %33)
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %28, %14
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @fdt_data_get(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
