; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_read_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_read_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@CUDBG_SF_SECTOR_SIZE = common dso_local global i32 0, align 4
@SF_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_flash(%struct.adapter* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %16, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CUDBG_SF_SECTOR_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %60, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sub i32 %31, %32
  %34 = load i32, i32* @SF_PAGE_SIZE, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sub i32 %37, %38
  store i32 %39, i32* %14, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @SF_PAGE_SIZE, align 4
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.adapter*, %struct.adapter** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @t4_read_flash(%struct.adapter* %43, i32 %44, i32 %45, i32* %46, i32 0)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %65

51:                                               ; preds = %42
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = mul i32 %53, 4
  %55 = add i32 %52, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %16, align 8
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @SF_PAGE_SIZE, align 4
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %26

64:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @t4_read_flash(%struct.adapter*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
