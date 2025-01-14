; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_get_fence.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_get_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_send_wr = type { i64, i32 }

@IB_WR_LOCAL_INV = common dso_local global i64 0, align 8
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@MLX5_FENCE_MODE_STRONG_ORDERING = common dso_local global i32 0, align 4
@MLX5_FENCE_MODE_SMALL_AND_FENCE = common dso_local global i32 0, align 4
@MLX5_FENCE_MODE_FENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_send_wr*)* @get_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fence(i32 %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_send_wr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  %6 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IB_WR_LOCAL_INV, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %13 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IB_SEND_FENCE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ false, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @MLX5_FENCE_MODE_STRONG_ORDERING, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %31 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IB_SEND_FENCE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @MLX5_FENCE_MODE_SMALL_AND_FENCE, align 4
  store i32 %37, i32* %3, align 4
  br label %52

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %25
  %41 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %42 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IB_SEND_FENCE, align 4
  %45 = and i32 %43, %44
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @MLX5_FENCE_MODE_FENCE, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %38, %36, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
