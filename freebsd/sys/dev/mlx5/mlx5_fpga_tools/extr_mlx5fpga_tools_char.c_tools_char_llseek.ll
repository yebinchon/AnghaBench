; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_tools_char_llseek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_tools_char_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tools_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uio = type { i64, i64 }

@CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tools_context*, %struct.uio*, i64*)* @tools_char_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tools_char_llseek(%struct.tools_context* %0, %struct.uio* %1, i64* %2) #0 {
  %4 = alloca %struct.tools_context*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tools_context* %0, %struct.tools_context** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.uio*, %struct.uio** %5, align 8
  %11 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  store i64 0, i64* %16, align 8
  br label %67

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @CHUNK_SIZE, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @CHUNK_SIZE, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.tools_context*, %struct.tools_context** %4, align 8
  %25 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @mlx5_fpga_ddr_base_get(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.tools_context*, %struct.tools_context** %4, align 8
  %31 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @mlx5_fpga_ddr_size_get(i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.uio*, %struct.uio** %5, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i64*, i64** %6, align 8
  store i64 0, i64* %42, align 8
  br label %67

43:                                               ; preds = %23
  %44 = load %struct.uio*, %struct.uio** %5, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %46, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.uio*, %struct.uio** %5, align 8
  %59 = getelementptr inbounds %struct.uio, %struct.uio* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  br label %66

63:                                               ; preds = %43
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %54
  br label %67

67:                                               ; preds = %15, %66, %41
  ret void
}

declare dso_local i64 @mlx5_fpga_ddr_base_get(i32) #1

declare dso_local i64 @mlx5_fpga_ddr_size_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
