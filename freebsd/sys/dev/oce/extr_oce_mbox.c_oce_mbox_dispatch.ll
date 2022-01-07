; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_mbox.c_oce_mbox_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_mbox.c_oce_mbox_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@db = common dso_local global i32 0, align 4
@PD_MPU_MBOX_DB = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_mbox_dispatch(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %11 = call i32 @oce_dma_sync(%struct.TYPE_12__* %9, i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = ashr i32 %16, 34
  store i32 %17, i32* %6, align 4
  %18 = call i32 @bzero(%struct.TYPE_10__* %5, i32 24)
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @oce_mbox_wait(%struct.TYPE_11__* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = load i32, i32* @db, align 4
  %34 = load i32, i32* @PD_MPU_MBOX_DB, align 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @OCE_WRITE_REG32(%struct.TYPE_11__* %32, i32 %33, i32 %34, i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 1073741823
  store i32 %44, i32* %6, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @oce_mbox_wait(%struct.TYPE_11__* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %31
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = load i32, i32* @db, align 4
  %60 = load i32, i32* @PD_MPU_MBOX_DB, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @OCE_WRITE_REG32(%struct.TYPE_11__* %58, i32 %59, i32 %60, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @oce_mbox_wait(%struct.TYPE_11__* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %70 = call i32 @oce_dma_sync(%struct.TYPE_12__* %68, i32 %69)
  br label %71

71:                                               ; preds = %57, %31
  br label %72

72:                                               ; preds = %71, %2
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @oce_dma_sync(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @oce_mbox_wait(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @OCE_WRITE_REG32(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
