; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@time_second = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@MLX_IFTYPE_2 = common dso_local global i64 0, align 8
@MLX_CMD_ENQUIRY_OLD = common dso_local global i32 0, align 4
@MLX_CMD_ENQUIRY = common dso_local global i32 0, align 4
@mlx_periodic_enquiry = common dso_local global i32 0, align 4
@MLX_CMD_ENQSYSDRIVE = common dso_local global i32 0, align 4
@MLX_MAXDRIVES = common dso_local global i32 0, align 4
@MLX_CMD_REBUILDSTAT = common dso_local global i32 0, align 4
@mlx_periodic_rebuild = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mlx_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_periodic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlx_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mlx_softc*
  store %struct.mlx_softc* %5, %struct.mlx_softc** %3, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %8 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %7)
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32, i32* @time_second, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %30 = call i32 @mlx_pause_action(%struct.mlx_softc* %29)
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @hz, align 4
  %35 = call i32 @sysbeep(i32 500, i32 %34)
  br label %108

36:                                               ; preds = %20, %14, %1
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load i32, i32* @time_second, align 4
  %50 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %49, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %57 = call i32 @mlx_pause_action(%struct.mlx_softc* %56)
  %58 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @hz, align 4
  %62 = call i32 @sysbeep(i32 500, i32 %61)
  br label %71

63:                                               ; preds = %48
  %64 = load i32, i32* @time_second, align 4
  %65 = srem i32 %64, 5
  %66 = mul nsw i32 %65, 100
  %67 = add nsw i32 %66, 500
  %68 = load i32, i32* @hz, align 4
  %69 = sdiv i32 %68, 8
  %70 = call i32 @sysbeep(i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %63, %55
  br label %107

72:                                               ; preds = %42, %36
  %73 = load i32, i32* @time_second, align 4
  %74 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %75 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 10
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %72
  %80 = load i32, i32* @time_second, align 4
  %81 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %82 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %84 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %85 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MLX_IFTYPE_2, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @MLX_CMD_ENQUIRY_OLD, align 4
  br label %93

91:                                               ; preds = %79
  %92 = load i32, i32* @MLX_CMD_ENQUIRY, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @imax(i32 4, i32 4)
  %96 = load i32, i32* @mlx_periodic_enquiry, align 4
  %97 = call i32 @mlx_enquire(%struct.mlx_softc* %83, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %99 = load i32, i32* @MLX_CMD_ENQSYSDRIVE, align 4
  %100 = load i32, i32* @MLX_MAXDRIVES, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 4, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @mlx_periodic_enquiry, align 4
  %105 = call i32 @mlx_enquire(%struct.mlx_softc* %98, i32 %99, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %93, %72
  br label %107

107:                                              ; preds = %106, %71
  br label %108

108:                                              ; preds = %107, %28
  %109 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %110 = load i32, i32* @MLX_CMD_REBUILDSTAT, align 4
  %111 = load i32, i32* @mlx_periodic_rebuild, align 4
  %112 = call i32 @mlx_enquire(%struct.mlx_softc* %109, i32 %110, i32 4, i32 %111)
  %113 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %114 = call i32 @mlx_done(%struct.mlx_softc* %113, i32 1)
  %115 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %116 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %115, i32 0, i32 2
  %117 = load i32, i32* @hz, align 4
  %118 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %119 = call i32 @callout_reset(i32* %116, i32 %117, void (i8*)* @mlx_periodic, %struct.mlx_softc* %118)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @mlx_pause_action(%struct.mlx_softc*) #1

declare dso_local i32 @sysbeep(i32, i32) #1

declare dso_local i32 @mlx_enquire(%struct.mlx_softc*, i32, i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @mlx_done(%struct.mlx_softc*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
