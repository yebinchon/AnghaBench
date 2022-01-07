; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_resources.c_mlx4_en_map_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_resources.c_mlx4_en_map_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_buf = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_map_buffer(%struct.mlx4_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_buf*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_buf* %0, %struct.mlx4_buf** %3, align 8
  %6 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %77

17:                                               ; preds = %11
  %18 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.page** @kmalloc(i32 %23, i32 %24)
  store %struct.page** %25, %struct.page*** %4, align 8
  %26 = load %struct.page**, %struct.page*** %4, align 8
  %27 = icmp ne %struct.page** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.page* @virt_to_page(i32 %46)
  %48 = load %struct.page**, %struct.page*** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.page*, %struct.page** %48, i64 %50
  store %struct.page* %47, %struct.page** %51, align 8
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load %struct.page**, %struct.page*** %4, align 8
  %57 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %58 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @VM_MAP, align 4
  %61 = load i32, i32* @PAGE_KERNEL, align 4
  %62 = call i32* @vmap(%struct.page** %56, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32* %62, i32** %65, align 8
  %66 = load %struct.page**, %struct.page*** %4, align 8
  %67 = call i32 @kfree(%struct.page** %66)
  %68 = load %struct.mlx4_buf*, %struct.mlx4_buf** %3, align 8
  %69 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %55
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73, %28, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
