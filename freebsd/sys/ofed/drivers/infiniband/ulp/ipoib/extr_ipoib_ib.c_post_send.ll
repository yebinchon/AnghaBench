; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i8*, i64, %struct.ib_ah*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_ah = type { i32 }
%struct.ipoib_tx_buf = type { i32*, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf* }
%struct.ib_send_wr = type { i32 }

@IB_WR_LSO = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, i32, %struct.ib_ah*, i32, %struct.ipoib_tx_buf*, i8*, i32)* @post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_send(%struct.ipoib_dev_priv* %0, i32 %1, %struct.ib_ah* %2, i32 %3, %struct.ipoib_tx_buf* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_ah*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipoib_tx_buf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_send_wr*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.mbuf*, align 8
  %19 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ib_ah* %2, %struct.ib_ah** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ipoib_tx_buf* %4, %struct.ipoib_tx_buf** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %12, align 8
  %21 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %20, i32 0, i32 1
  %22 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  store %struct.mbuf* %22, %struct.mbuf** %16, align 8
  %23 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %12, align 8
  %24 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %17, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %26, %struct.mbuf** %18, align 8
  store i32 0, i32* %19, align 4
  br label %27

27:                                               ; preds = %53, %7
  %28 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load i32*, i32** %17, align 8
  %32 = load i32, i32* %19, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %35, i32* %42, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %19, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %30
  %54 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 1
  %56 = load %struct.mbuf*, %struct.mbuf** %55, align 8
  store %struct.mbuf* %56, %struct.mbuf** %18, align 8
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %19, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load i32, i32* %19, align 4
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %67 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %72 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 8
  %74 = load %struct.ib_ah*, %struct.ib_ah** %10, align 8
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  store %struct.ib_ah* %74, %struct.ib_ah** %77, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %59
  %81 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %82 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %86 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %90 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @IB_WR_LSO, align 4
  %93 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %94 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  br label %103

97:                                               ; preds = %59
  %98 = load i32, i32* @IB_WR_SEND, align 4
  %99 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %100 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %80
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %108 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = call i32 @ib_post_send(i32 %106, %struct.TYPE_6__* %109, %struct.ib_send_wr** %15)
  ret i32 %110
}

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_6__*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
