; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_free_rx_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_free_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, i32, i64, i32, i64 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Freeing Rx buf - cons:%d prod:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Processing descriptor:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*)* @mlx4_en_free_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_free_rx_buf(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %4, align 8
  %6 = load i32, i32* @DRV, align 4
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %6, %struct.mlx4_en_priv* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  br label %29

29:                                               ; preds = %37, %2
  %30 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %40, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @DRV, align 4
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %45, %struct.mlx4_en_priv* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %50 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @mlx4_en_free_buf(%struct.mlx4_en_rx_ring* %49, i64 %55)
  %57 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %29

61:                                               ; preds = %29
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlx4_en_free_buf(%struct.mlx4_en_rx_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
