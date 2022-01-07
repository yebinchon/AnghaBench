; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_map_memfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_map_memfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.mthca_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_qp*)* @mthca_map_memfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_map_memfree(%struct.mthca_dev* %0, %struct.mthca_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_qp* %1, %struct.mthca_qp** %5, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %8 = call i64 @mthca_is_memfree(%struct.mthca_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %17 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mthca_table_get(%struct.mthca_dev* %11, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %78

24:                                               ; preds = %10
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %27 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %31 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mthca_table_get(%struct.mthca_dev* %25, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %67

37:                                               ; preds = %24
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %44 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %47 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %45, %49
  %51 = call i32 @mthca_table_get(%struct.mthca_dev* %38, i32 %42, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %57

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %2
  store i32 0, i32* %3, align 4
  br label %78

57:                                               ; preds = %54
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %59 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %60 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %64 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mthca_table_put(%struct.mthca_dev* %58, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %57, %36
  %68 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %70 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %74 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mthca_table_put(%struct.mthca_dev* %68, i32 %72, i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %67, %56, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_table_get(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_table_put(%struct.mthca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
