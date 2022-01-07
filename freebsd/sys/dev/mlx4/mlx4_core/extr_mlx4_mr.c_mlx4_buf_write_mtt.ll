; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_buf_write_mtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_buf_write_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i32 }
%struct.mlx4_buf = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_buf_write_mtt(%struct.mlx4_dev* %0, %struct.mlx4_mtt* %1, %struct.mlx4_buf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_mtt*, align 8
  %8 = alloca %struct.mlx4_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_mtt* %1, %struct.mlx4_mtt** %7, align 8
  store %struct.mlx4_buf* %2, %struct.mlx4_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx4_buf*, %struct.mlx4_buf** %8, align 8
  %14 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = call i64* @kmalloc(i32 %18, i32 %19)
  store i64* %20, i64** %10, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %82

26:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.mlx4_buf*, %struct.mlx4_buf** %8, align 8
  %30 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load %struct.mlx4_buf*, %struct.mlx4_buf** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.mlx4_buf*, %struct.mlx4_buf** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.mlx4_buf*, %struct.mlx4_buf** %8, align 8
  %45 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %42, %48
  %50 = load i64*, i64** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %49, i64* %53, align 8
  br label %67

54:                                               ; preds = %33
  %55 = load %struct.mlx4_buf*, %struct.mlx4_buf** %8, align 8
  %56 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %54, %38
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %73 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %7, align 8
  %74 = load %struct.mlx4_buf*, %struct.mlx4_buf** %8, align 8
  %75 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64*, i64** %10, align 8
  %78 = call i32 @mlx4_write_mtt(%struct.mlx4_dev* %72, %struct.mlx4_mtt* %73, i32 0, i32 %76, i64* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i64*, i64** %10, align 8
  %80 = call i32 @kfree(i64* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %71, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_write_mtt(%struct.mlx4_dev*, %struct.mlx4_mtt*, i32, i32, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
