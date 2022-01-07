; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_sq_overhead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_sq_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp_init_attr = type { i32, i32 }

@IB_QP_CREATE_IPOIB_UD_LSO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp_init_attr*)* @sq_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_overhead(%struct.ib_qp_init_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp_init_attr*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_qp_init_attr* %0, %struct.ib_qp_init_attr** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %6 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %53 [
    i32 131, label %8
    i32 135, label %13
    i32 130, label %21
    i32 133, label %22
    i32 132, label %30
    i32 134, label %43
    i32 129, label %43
    i32 128, label %48
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %1, %8
  %14 = call i32 @max(i32 8, i32 8)
  %15 = sext i32 %14 to i64
  %16 = add i64 4, %15
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = call i32 @max(i32 4, i32 8)
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %32 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IB_QP_CREATE_IPOIB_UD_LSO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %1, %1, %42
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %56

48:                                               ; preds = %1
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 12
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %48, %43, %22, %13
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %53, %21
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
