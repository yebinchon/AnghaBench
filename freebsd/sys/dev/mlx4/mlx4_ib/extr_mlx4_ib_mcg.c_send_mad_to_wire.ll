; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_send_mad_to_wire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mcg.c_send_mad_to_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_ctx = type { i32, %struct.mlx4_ib_dev* }
%struct.mlx4_ib_dev = type { i32, i32, i32* }
%struct.ib_mad = type { i32 }
%struct.ib_ah_attr = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@IB_QP1_QKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_demux_ctx*, %struct.ib_mad*)* @send_mad_to_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mad_to_wire(%struct.mlx4_ib_demux_ctx* %0, %struct.ib_mad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %5 = alloca %struct.ib_mad*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.ib_ah_attr, align 4
  %8 = alloca i64, align 8
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %4, align 8
  store %struct.ib_mad* %1, %struct.ib_mad** %5, align 8
  %9 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %9, i32 0, i32 1
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  store %struct.mlx4_ib_dev* %11, %struct.mlx4_ib_dev** %6, align 8
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlx4_ib_query_ah(i32 %44, %struct.ib_ah_attr* %7)
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %51 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mlx4_master_func_num(i32 %53)
  %55 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IB_QPT_GSI, align 4
  %59 = load i32, i32* @IB_QP1_QKEY, align 4
  %60 = load %struct.ib_mad*, %struct.ib_mad** %5, align 8
  %61 = call i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev* %50, i32 %54, i32 %57, i32 %58, i32 0, i32 1, i32 %59, %struct.ib_ah_attr* %7, i32* null, i32 65535, %struct.ib_mad* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %34, %27
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx4_ib_query_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev*, i32, i32, i32, i32, i32, i32, %struct.ib_ah_attr*, i32*, i32, %struct.ib_mad*) #1

declare dso_local i32 @mlx4_master_func_num(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
