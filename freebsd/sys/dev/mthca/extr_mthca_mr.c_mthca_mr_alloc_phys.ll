; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_mr_alloc_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_mthca_mr_alloc_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_mr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_mr_alloc_phys(%struct.mthca_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.mthca_mr* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mthca_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mthca_mr*, align 8
  %20 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.mthca_mr* %8, %struct.mthca_mr** %19, align 8
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @mthca_alloc_mtt(%struct.mthca_dev* %21, i32 %22)
  %24 = load %struct.mthca_mr*, %struct.mthca_mr** %19, align 8
  %25 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mthca_mr*, %struct.mthca_mr** %19, align 8
  %27 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %9
  %32 = load %struct.mthca_mr*, %struct.mthca_mr** %19, align 8
  %33 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %10, align 4
  br label %72

36:                                               ; preds = %9
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %38 = load %struct.mthca_mr*, %struct.mthca_mr** %19, align 8
  %39 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @mthca_write_mtt(%struct.mthca_dev* %37, i32 %40, i32 0, i32* %41, i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %48 = load %struct.mthca_mr*, %struct.mthca_mr** %19, align 8
  %49 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mthca_free_mtt(%struct.mthca_dev* %47, i32 %50)
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %10, align 4
  br label %72

53:                                               ; preds = %36
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load %struct.mthca_mr*, %struct.mthca_mr** %19, align 8
  %61 = call i32 @mthca_mr_alloc(%struct.mthca_dev* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, %struct.mthca_mr* %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %66 = load %struct.mthca_mr*, %struct.mthca_mr** %19, align 8
  %67 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mthca_free_mtt(%struct.mthca_dev* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %53
  %71 = load i32, i32* %20, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %46, %31
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @mthca_alloc_mtt(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mthca_write_mtt(%struct.mthca_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @mthca_free_mtt(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_mr_alloc(%struct.mthca_dev*, i32, i32, i32, i32, i32, %struct.mthca_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
