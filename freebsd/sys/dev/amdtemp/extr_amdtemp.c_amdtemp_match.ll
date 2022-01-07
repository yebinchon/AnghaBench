; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtemp_product = type { i64, i64 }

@amdtemp_products = common dso_local global %struct.amdtemp_product* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.amdtemp_product**)* @amdtemp_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdtemp_match(i32 %0, %struct.amdtemp_product** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdtemp_product**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.amdtemp_product** %1, %struct.amdtemp_product*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @pci_get_vendor(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @pci_get_device(i32 %11)
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.amdtemp_product*, %struct.amdtemp_product** @amdtemp_products, align 8
  %16 = call i32 @nitems(%struct.amdtemp_product* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.amdtemp_product*, %struct.amdtemp_product** @amdtemp_products, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.amdtemp_product, %struct.amdtemp_product* %20, i64 %22
  %24 = getelementptr inbounds %struct.amdtemp_product, %struct.amdtemp_product* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.amdtemp_product*, %struct.amdtemp_product** @amdtemp_products, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.amdtemp_product, %struct.amdtemp_product* %29, i64 %31
  %33 = getelementptr inbounds %struct.amdtemp_product, %struct.amdtemp_product* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %28, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.amdtemp_product**, %struct.amdtemp_product*** %5, align 8
  %38 = icmp ne %struct.amdtemp_product** %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.amdtemp_product*, %struct.amdtemp_product** @amdtemp_products, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.amdtemp_product, %struct.amdtemp_product* %40, i64 %42
  %44 = load %struct.amdtemp_product**, %struct.amdtemp_product*** %5, align 8
  store %struct.amdtemp_product* %43, %struct.amdtemp_product** %44, align 8
  br label %45

45:                                               ; preds = %39, %36
  store i32 1, i32* %3, align 4
  br label %51

46:                                               ; preds = %27, %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %13

50:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @nitems(%struct.amdtemp_product*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
