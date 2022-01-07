; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@UBT_FLAG_T_STOP_ALL = common dso_local global i32 0, align 4
@UBT_N_TRANSFER = common dso_local global i32 0, align 4
@UBT_FLAG_T_START_ALL = common dso_local global i32 0, align 4
@UBT_IF_0_INTR_DT_RD = common dso_local global i32 0, align 4
@UBT_IF_0_BULK_DT_RD = common dso_local global i32 0, align 4
@UBT_IF_1_ISOC_DT_RD1 = common dso_local global i32 0, align 4
@UBT_IF_1_ISOC_DT_RD2 = common dso_local global i32 0, align 4
@UBT_IF_1_ISOC_DT_WR1 = common dso_local global i32 0, align 4
@UBT_IF_1_ISOC_DT_WR2 = common dso_local global i32 0, align 4
@UBT_FLAG_T_START_CTRL = common dso_local global i32 0, align 4
@UBT_IF_0_CTRL_DT_WR = common dso_local global i32 0, align 4
@UBT_FLAG_T_START_BULK = common dso_local global i32 0, align 4
@UBT_IF_0_BULK_DT_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ubt_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubt_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32 @UBT_NG_LOCK(%struct.TYPE_5__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = call i32 @UBT_NG_UNLOCK(%struct.TYPE_5__* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @UBT_FLAG_T_STOP_ALL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @UBT_N_TRANSFER, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usbd_transfer_drain(i32 %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %24

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @UBT_FLAG_T_START_ALL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = call i32 @mtx_lock(i32* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load i32, i32* @UBT_IF_0_INTR_DT_RD, align 4
  %52 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %50, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = load i32, i32* @UBT_IF_0_BULK_DT_RD, align 4
  %55 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %53, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i32, i32* @UBT_IF_1_ISOC_DT_RD1, align 4
  %58 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = load i32, i32* @UBT_IF_1_ISOC_DT_RD2, align 4
  %61 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %59, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = load i32, i32* @UBT_IF_1_ISOC_DT_WR1, align 4
  %64 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %62, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = load i32, i32* @UBT_IF_1_ISOC_DT_WR2, align 4
  %67 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %65, i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = call i32 @mtx_unlock(i32* %69)
  br label %71

71:                                               ; preds = %46, %41
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @UBT_FLAG_T_START_CTRL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = call i32 @mtx_lock(i32* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = load i32, i32* @UBT_IF_0_CTRL_DT_WR, align 4
  %82 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %80, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = call i32 @mtx_unlock(i32* %84)
  br label %86

86:                                               ; preds = %76, %71
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @UBT_FLAG_T_START_BULK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @mtx_lock(i32* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = load i32, i32* @UBT_IF_0_BULK_DT_WR, align 4
  %97 = call i32 @ubt_xfer_start(%struct.TYPE_5__* %95, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = call i32 @mtx_unlock(i32* %99)
  br label %101

101:                                              ; preds = %91, %86
  ret void
}

declare dso_local i32 @UBT_NG_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @UBT_NG_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ubt_xfer_start(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
