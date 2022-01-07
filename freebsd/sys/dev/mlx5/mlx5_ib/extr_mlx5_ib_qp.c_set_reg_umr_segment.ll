; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_umr_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_reg_umr_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wqe_umr_ctrl_seg = type { i32, i32, i8*, i8* }
%struct.ib_send_wr = type { i32, i32 }
%struct.mlx5_umr_wr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MLX5_IB_SEND_UMR_FAIL_IF_FREE = common dso_local global i32 0, align 4
@MLX5_UMR_CHECK_FREE = common dso_local global i32 0, align 4
@MLX5_UMR_CHECK_NOT_FREE = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UNREG = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_MTT = common dso_local global i32 0, align 4
@MLX5_UMR_TRANSLATION_OFFSET_EN = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_TRANSLATION = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_ACCESS = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_PD = common dso_local global i32 0, align 4
@MLX5_UMR_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_wqe_umr_ctrl_seg*, %struct.ib_send_wr*)* @set_reg_umr_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg_umr_segment(%struct.mlx5_wqe_umr_ctrl_seg* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca %struct.mlx5_wqe_umr_ctrl_seg*, align 8
  %4 = alloca %struct.ib_send_wr*, align 8
  %5 = alloca %struct.mlx5_umr_wr*, align 8
  store %struct.mlx5_wqe_umr_ctrl_seg* %0, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %4, align 8
  %6 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %7 = call %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr* %6)
  store %struct.mlx5_umr_wr* %7, %struct.mlx5_umr_wr** %5, align 8
  %8 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %9 = call i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg* %8, i32 0, i32 24)
  %10 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %11 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MLX5_IB_SEND_UMR_FAIL_IF_FREE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MLX5_UMR_CHECK_FREE, align 4
  %18 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @MLX5_UMR_CHECK_NOT_FREE, align 4
  %22 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX5_IB_SEND_UMR_UNREG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %109, label %31

31:                                               ; preds = %24
  %32 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @get_klm_octo(i32 %34)
  %36 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_MTT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %31
  %45 = call i32 (...) @get_umr_update_mtt_mask()
  %46 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @get_klm_octo(i32 %51)
  %53 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @MLX5_UMR_TRANSLATION_OFFSET_EN, align 4
  %56 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %44, %31
  %61 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %62 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_TRANSLATION, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = call i32 (...) @get_umr_update_translation_mask()
  %69 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_ACCESS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = call i32 (...) @get_umr_update_access_mask()
  %82 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %83 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %88 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_PD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = call i32 (...) @get_umr_update_pd_mask()
  %95 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %96 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %101 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = call i32 (...) @get_umr_reg_mr_mask()
  %106 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %107 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %99
  br label %113

109:                                              ; preds = %24
  %110 = call i32 (...) @get_umr_unreg_mr_mask()
  %111 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %112 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %115 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @MLX5_UMR_INLINE, align 4
  %120 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %3, align 8
  %121 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %113
  ret void
}

declare dso_local %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg*, i32, i32) #1

declare dso_local i8* @get_klm_octo(i32) #1

declare dso_local i32 @get_umr_update_mtt_mask(...) #1

declare dso_local i32 @get_umr_update_translation_mask(...) #1

declare dso_local i32 @get_umr_update_access_mask(...) #1

declare dso_local i32 @get_umr_update_pd_mask(...) #1

declare dso_local i32 @get_umr_reg_mr_mask(...) #1

declare dso_local i32 @get_umr_unreg_mr_mask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
