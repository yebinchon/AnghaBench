; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_free_tx_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_free_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i64, i32 }
%struct.mlx4_en_priv = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Freeing Tx buf - cons:0x%x prod:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Tx consumer passed producer!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Freed %d uncompleted tx descriptors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_free_tx_buf(%struct.net_device* %0, %struct.mlx4_en_tx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlx4_en_tx_ring*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @DRV, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %17, %struct.mlx4_en_priv* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %40 = call i32 @en_warn(%struct.mlx4_en_priv* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %50, %41
  %43 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %52 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %53 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %55, %58
  %60 = call i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv* %51, %struct.mlx4_en_tx_ring* %52, i32 %59)
  %61 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %42

72:                                               ; preds = %42
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* @DRV, align 4
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %76, %struct.mlx4_en_priv* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %38
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, ...) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
