; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_free_demux_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_free_demux_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_ctx = type { i32, i32, %struct.TYPE_7__**, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DEMUX_PV_STATE_DOWN = common dso_local global i64 0, align 8
@DEMUX_PV_STATE_DOWNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_demux_ctx*)* @mlx4_ib_free_demux_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_free_demux_ctx(%struct.mlx4_ib_demux_ctx* %0) #0 {
  %2 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %2, align 8
  %5 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %6 = icmp ne %struct.mlx4_ib_demux_ctx* %5, null
  br i1 %6, label %7, label %109

7:                                                ; preds = %1
  %8 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mlx4_ib_dev* @to_mdev(i32 %10)
  store %struct.mlx4_ib_dev* %11, %struct.mlx4_ib_dev** %4, align 8
  %12 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %13 = call i32 @mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx* %12, i32 1)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %56, %7
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %14
  %24 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %56

33:                                               ; preds = %23
  %34 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DEMUX_PV_STATE_DOWN, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %33
  %46 = load i64, i64* @DEMUX_PV_STATE_DOWNING, align 8
  %47 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %49, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %46, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %33
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %14

59:                                               ; preds = %14
  %60 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @flush_workqueue(i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %93, %59
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %65, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %64
  %74 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = call i32 @destroy_pv_resources(%struct.mlx4_ib_dev* %74, i32 %75, i32 %78, %struct.TYPE_7__* %85, i32 0)
  %87 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @free_pv_object(%struct.mlx4_ib_dev* %87, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %73
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %64

96:                                               ; preds = %64
  %97 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %98, align 8
  %100 = call i32 @kfree(%struct.TYPE_7__** %99)
  %101 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @destroy_workqueue(i32 %103)
  %105 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %2, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @destroy_workqueue(i32 %107)
  br label %109

109:                                              ; preds = %96, %1
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_pv_resources(%struct.mlx4_ib_dev*, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @free_pv_object(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__**) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
