; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_process_tx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_process_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_cq = type { i64, i32, %struct.mlx4_cqe*, %struct.mlx4_cq }
%struct.mlx4_cqe = type { i32, i32 }
%struct.mlx4_cq = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_tx_ring** }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32 }
%struct.mlx4_err_cqe = type { i32, i32 }

@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"CQE completed in error - vendor syndrom: 0x%x syndrom: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.mlx4_en_cq*)* @mlx4_en_process_tx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_process_tx_cq(%struct.net_device* %0, %struct.mlx4_en_cq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlx4_en_cq*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_cq*, align 8
  %8 = alloca %struct.mlx4_en_tx_ring*, align 8
  %9 = alloca %struct.mlx4_cqe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mlx4_cqe*, align 8
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.mlx4_en_priv* %22, %struct.mlx4_en_priv** %6, align 8
  %23 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %23, i32 0, i32 3
  store %struct.mlx4_cq* %24, %struct.mlx4_cq** %7, align 8
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 2
  %27 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %26, align 8
  %28 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %27, i64 %30
  %32 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %31, align 8
  store %struct.mlx4_en_tx_ring* %32, %struct.mlx4_en_tx_ring** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %17, align 4
  %39 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %42, i32 0, i32 2
  %44 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %43, align 8
  store %struct.mlx4_cqe* %44, %struct.mlx4_cqe** %19, align 8
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %20, align 4
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %180

53:                                               ; preds = %2
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %18, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %19, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %20, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %57, i64 %63
  store %struct.mlx4_cqe* %64, %struct.mlx4_cqe** %9, align 8
  %65 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %18, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %154, %53
  %72 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %73 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = and i32 %77, %78
  %80 = call i64 @XNOR(i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %168

82:                                               ; preds = %71
  %83 = call i32 (...) @rmb()
  %84 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %85 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @MLX4_CQE_OPCODE_ERROR, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %96 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %97 = bitcast %struct.mlx4_cqe* %96 to %struct.mlx4_err_cqe*
  %98 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %101 = bitcast %struct.mlx4_cqe* %100 to %struct.mlx4_err_cqe*
  %102 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @en_err(%struct.mlx4_en_priv* %95, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %94, %82
  %106 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %9, align 8
  %107 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be16_to_cpu(i32 %108)
  %110 = load i32, i32* %18, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %150, %105
  %113 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* %18, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %12, align 4
  %125 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %126 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv* %125, %struct.mlx4_en_tx_ring* %126, i32 %127)
  %129 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %132 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %136, %137
  %139 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %140 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @mlx4_en_stamp_wqe(%struct.mlx4_en_priv* %131, %struct.mlx4_en_tx_ring* %132, i32 %133, i32 %146)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %112
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %112, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %18, align 4
  %159 = and i32 %157, %158
  store i32 %159, i32* %10, align 4
  %160 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %19, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %20, align 4
  %163 = shl i32 %161, %162
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %160, i64 %166
  store %struct.mlx4_cqe* %167, %struct.mlx4_cqe** %9, align 8
  br label %71

168:                                              ; preds = %71
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %171 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.mlx4_cq*, %struct.mlx4_cq** %7, align 8
  %173 = call i32 @mlx4_cq_set_ci(%struct.mlx4_cq* %172)
  %174 = call i32 (...) @wmb()
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %177 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %168, %52
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @XNOR(i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32) #1

declare dso_local i32 @mlx4_en_stamp_wqe(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32) #1

declare dso_local i32 @mlx4_cq_set_ci(%struct.mlx4_cq*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
