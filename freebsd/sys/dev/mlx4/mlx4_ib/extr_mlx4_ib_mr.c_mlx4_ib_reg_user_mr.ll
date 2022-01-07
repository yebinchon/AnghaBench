; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.ib_mr }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx4_ib_reg_user_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.mlx4_ib_dev*, align 8
  %15 = alloca %struct.mlx4_ib_mr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %19 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.mlx4_ib_dev* @to_mdev(i32 %21)
  store %struct.mlx4_ib_dev* %22, %struct.mlx4_ib_dev** %14, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mlx4_ib_mr* @kzalloc(i32 24, i32 %23)
  store %struct.mlx4_ib_mr* %24, %struct.mlx4_ib_mr** %15, align 8
  %25 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %26 = icmp ne %struct.mlx4_ib_mr* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.ib_mr* @ERR_PTR(i32 %29)
  store %struct.ib_mr* %30, %struct.ib_mr** %7, align 8
  br label %140

31:                                               ; preds = %6
  %32 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %33 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.TYPE_15__* @ib_umem_get(i32 %36, i32 %37, i32 %38, i32 %41, i32 0)
  %43 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %43, i32 0, i32 0
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %44, align 8
  %45 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = call i64 @IS_ERR(%struct.TYPE_15__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %31
  %51 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.TYPE_15__* %53)
  store i32 %54, i32* %17, align 4
  br label %135

55:                                               ; preds = %31
  %56 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = call i32 @ib_umem_page_count(%struct.TYPE_15__* %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ilog2(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %70 = call %struct.TYPE_13__* @to_mpd(%struct.ib_pd* %69)
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @convert_access(i32 %75)
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %79, i32 0, i32 1
  %81 = call i32 @mlx4_mr_alloc(i32 %68, i32 %72, i32 %73, i32 %74, i32 %76, i32 %77, i32 %78, %struct.TYPE_14__* %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %55
  br label %130

85:                                               ; preds = %55
  %86 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %87 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %88 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %91 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %86, i32* %89, %struct.TYPE_15__* %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %120

97:                                               ; preds = %85
  %98 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %99 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %101, i32 0, i32 1
  %103 = call i32 @mlx4_mr_enable(i32 %100, %struct.TYPE_14__* %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %120

107:                                              ; preds = %97
  %108 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %116, i32 0, i32 1
  store i32 %111, i32* %117, align 4
  %118 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %118, i32 0, i32 2
  store %struct.ib_mr* %119, %struct.ib_mr** %7, align 8
  br label %140

120:                                              ; preds = %106, %96
  %121 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %122 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.mlx4_ib_dev* @to_mdev(i32 %123)
  %125 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %127, i32 0, i32 1
  %129 = call i32 @mlx4_mr_free(i32 %126, %struct.TYPE_14__* %128)
  br label %130

130:                                              ; preds = %120, %84
  %131 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %131, i32 0, i32 0
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = call i32 @ib_umem_release(%struct.TYPE_15__* %133)
  br label %135

135:                                              ; preds = %130, %50
  %136 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %137 = call i32 @kfree(%struct.mlx4_ib_mr* %136)
  %138 = load i32, i32* %17, align 4
  %139 = call %struct.ib_mr* @ERR_PTR(i32 %138)
  store %struct.ib_mr* %139, %struct.ib_mr** %7, align 8
  br label %140

140:                                              ; preds = %135, %107, %27
  %141 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %141
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_15__* @ib_umem_get(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @ib_umem_page_count(%struct.TYPE_15__*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_mr_alloc(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_mr_enable(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
