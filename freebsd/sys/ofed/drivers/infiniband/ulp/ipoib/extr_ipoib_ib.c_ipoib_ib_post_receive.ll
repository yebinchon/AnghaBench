; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_post_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_post_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.ipoib_rx_buf*, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.ipoib_rx_buf = type { %struct.mbuf*, i32* }
%struct.mbuf = type { i32, %struct.mbuf* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_recv_wr = type { i32 }

@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"receive failed for buf %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, i32)* @ipoib_ib_post_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_ib_post_receive(%struct.ipoib_dev_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoib_rx_buf*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 0
  %12 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %12, i64 %14
  store %struct.ipoib_rx_buf* %15, %struct.ipoib_rx_buf** %5, align 8
  %16 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %5, align 8
  %17 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %16, i32 0, i32 0
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %7, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %47, %2
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = icmp ne %struct.mbuf* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %5, align 8
  %24 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %29, i32* %36, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %39, i32* %46, align 4
  br label %47

47:                                               ; preds = %22
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  store %struct.mbuf* %50, %struct.mbuf** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IPOIB_OP_RECV, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %68 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %67, i32 0, i32 1
  %69 = call i32 @ib_post_recv(i32 %66, %struct.TYPE_4__* %68, %struct.ib_recv_wr** %6)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %53
  %74 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %79 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %80 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %79, i32 0, i32 0
  %81 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %81, i64 %83
  %85 = call i32 @ipoib_dma_unmap_rx(%struct.ipoib_dev_priv* %78, %struct.ipoib_rx_buf* %84)
  %86 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %87 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %86, i32 0, i32 0
  %88 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %88, i64 %90
  %92 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %91, i32 0, i32 0
  %93 = load %struct.mbuf*, %struct.mbuf** %92, align 8
  %94 = call i32 @m_freem(%struct.mbuf* %93)
  %95 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %96 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %95, i32 0, i32 0
  %97 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %97, i64 %99
  %101 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %100, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %101, align 8
  br label %102

102:                                              ; preds = %73, %53
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @ib_post_recv(i32, %struct.TYPE_4__*, %struct.ib_recv_wr**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @ipoib_dma_unmap_rx(%struct.ipoib_dev_priv*, %struct.ipoib_rx_buf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
