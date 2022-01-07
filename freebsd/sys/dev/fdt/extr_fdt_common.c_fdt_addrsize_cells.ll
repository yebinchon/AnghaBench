; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_addrsize_cells.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_addrsize_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_addrsize_cells(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @OF_getencprop(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %11)
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @OF_getencprop(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @ERANGE, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
