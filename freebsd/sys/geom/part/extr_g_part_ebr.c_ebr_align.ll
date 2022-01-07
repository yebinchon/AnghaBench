; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_ebr_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_ebr_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, i32*, i32*)* @ebr_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebr_align(%struct.g_part_table* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %10 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 2, %14
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = srem i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = srem i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %25, %19
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = srem i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = srem i32 %52, %53
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %44
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 2, %61
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %64, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
