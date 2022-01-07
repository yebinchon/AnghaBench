; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_alloc_demux_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_alloc_demux_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.mlx4_ib_demux_ctx = type { i32, i32*, i32*, i8*, i32*, %struct.mlx4_ib_dev* }
%struct.mlx4_active_ports = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed initializing mcg para-virt (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mlx4_ibt%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to create tunnelling WQ for port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mlx4_ibud%d\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to create up/down WQ for port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_demux_ctx*, i32)* @mlx4_ib_alloc_demux_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_demux_ctx(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_demux_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [12 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_active_ports, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_demux_ctx* %1, %struct.mlx4_ib_demux_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kcalloc(i32 %17, i32 8, i32 %18)
  %20 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %175

29:                                               ; preds = %3
  %30 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %31 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %31, i32 0, i32 5
  store %struct.mlx4_ib_dev* %30, %struct.mlx4_ib_dev** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %36, i32 0, i32 1
  %38 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %90, %29
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i32 @min(i32 %47, i32 %56)
  %58 = icmp slt i32 %41, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %40
  %60 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @mlx4_get_active_ports(%struct.TYPE_6__* %62, i32 %63)
  %65 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, 1
  %68 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @test_bit(i32 %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  br label %90

73:                                               ; preds = %59
  %74 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @alloc_pv_object(%struct.mlx4_ib_dev* %74, i32 %75, i32 %76, i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %149

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %40

93:                                               ; preds = %40
  %94 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %95 = call i32 @mlx4_ib_mcg_port_init(%struct.mlx4_ib_demux_ctx* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %149

101:                                              ; preds = %93
  %102 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @snprintf(i8* %102, i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %106 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %107 = call i8* @alloc_ordered_workqueue(i8* %105, i32 %106)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %9, align 4
  br label %146

120:                                              ; preds = %101
  %121 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @snprintf(i8* %121, i32 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %125 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %126 = call i8* @alloc_ordered_workqueue(i8* %124, i32 %125)
  %127 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %130 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %9, align 4
  br label %139

138:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %175

139:                                              ; preds = %133
  %140 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @destroy_workqueue(i32* %142)
  %144 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %145 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %144, i32 0, i32 2
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %139, %115
  %147 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %148 = call i32 @mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx* %147, i32 1)
  br label %149

149:                                              ; preds = %146, %98, %86
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %164, %149
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %153 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %151, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %150
  %160 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @free_pv_object(%struct.mlx4_ib_dev* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %150

167:                                              ; preds = %150
  %168 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @kfree(i32* %170)
  %172 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %173 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %172, i32 0, i32 1
  store i32* null, i32** %173, align 8
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %167, %138, %26
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @alloc_pv_object(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_mcg_port_init(%struct.mlx4_ib_demux_ctx*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx*, i32) #1

declare dso_local i32 @free_pv_object(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
