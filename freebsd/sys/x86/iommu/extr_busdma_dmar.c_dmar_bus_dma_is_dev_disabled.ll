; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dma_is_dev_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dma_is_dev_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dmar_bus_dma_is_dev_disabled.bounce_str = internal constant [7 x i8] c"bounce\00", align 1
@dmar_bus_dma_is_dev_disabled.dmar_str = internal constant [5 x i8] c"dmar\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"hw.busdma.default\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"hw.busdma.pci%d.%d.%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @dmar_bus_dma_is_dev_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dma_is_dev_disabled(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = call i8* @kern_getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i8*, i8** %11, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @dmar_bus_dma_is_dev_disabled.bounce_str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %12, align 4
  br label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @dmar_bus_dma_is_dev_disabled.dmar_str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @freeenv(i8* %29)
  br label %31

31:                                               ; preds = %28, %4
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @snprintf(i8* %32, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %39 = call i8* @kern_getenv(i8* %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %65

46:                                               ; preds = %31
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @dmar_bus_dma_is_dev_disabled.bounce_str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  br label %61

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @dmar_bus_dma_is_dev_disabled.dmar_str, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @freeenv(i8* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %42
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freeenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
