; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_SW2HW_EQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_SW2HW_EQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_eq_context* }
%struct.mlx4_eq_context = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_eq = type { %struct.res_mtt* }
%struct.res_mtt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@RES_EQ = common dso_local global i32 0, align 4
@RES_EQ_HW = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SW2HW_EQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_eq_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.res_eq*, align 8
  %21 = alloca %struct.res_mtt*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %22 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %23 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 10
  %27 = load i32, i32* %15, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %16, align 4
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %30 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %29, i32 0, i32 0
  %31 = load %struct.mlx4_eq_context*, %struct.mlx4_eq_context** %30, align 8
  store %struct.mlx4_eq_context* %31, %struct.mlx4_eq_context** %17, align 8
  %32 = load %struct.mlx4_eq_context*, %struct.mlx4_eq_context** %17, align 8
  %33 = call i32 @eq_get_mtt_addr(%struct.mlx4_eq_context* %32)
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %33, %37
  store i32 %38, i32* %18, align 4
  %39 = load %struct.mlx4_eq_context*, %struct.mlx4_eq_context** %17, align 8
  %40 = call i32 @eq_get_mtt_size(%struct.mlx4_eq_context* %39)
  store i32 %40, i32* %19, align 4
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @RES_EQ, align 4
  %45 = call i32 @add_res_range(%struct.mlx4_dev* %41, i32 %42, i32 %43, i32 1, i32 %44, i32 0)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %6
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %7, align 4
  br label %131

50:                                               ; preds = %6
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @RES_EQ_HW, align 4
  %55 = call i32 @eq_res_start_move_to(%struct.mlx4_dev* %51, i32 %52, i32 %53, i32 %54, %struct.res_eq** %20)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %124

59:                                               ; preds = %50
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @RES_MTT, align 4
  %64 = call i32 @get_res(%struct.mlx4_dev* %60, i32 %61, i32 %62, i32 %63, %struct.res_mtt** %21)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %118

68:                                               ; preds = %59
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.res_mtt*, %struct.res_mtt** %21, align 8
  %74 = call i32 @check_mtt_range(%struct.mlx4_dev* %69, i32 %70, i32 %71, i32 %72, %struct.res_mtt* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %109

78:                                               ; preds = %68
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %82 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %83 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %84 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %85 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %79, i32 %80, %struct.mlx4_vhcr* %81, %struct.mlx4_cmd_mailbox* %82, %struct.mlx4_cmd_mailbox* %83, %struct.mlx4_cmd_info* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %109

89:                                               ; preds = %78
  %90 = load %struct.res_mtt*, %struct.res_mtt** %21, align 8
  %91 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %90, i32 0, i32 1
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.res_mtt*, %struct.res_mtt** %21, align 8
  %94 = load %struct.res_eq*, %struct.res_eq** %20, align 8
  %95 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %94, i32 0, i32 0
  store %struct.res_mtt* %93, %struct.res_mtt** %95, align 8
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.res_mtt*, %struct.res_mtt** %21, align 8
  %99 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @RES_MTT, align 4
  %103 = call i32 @put_res(%struct.mlx4_dev* %96, i32 %97, i32 %101, i32 %102)
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @RES_EQ, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @res_end_move(%struct.mlx4_dev* %104, i32 %105, i32 %106, i32 %107)
  store i32 0, i32* %7, align 4
  br label %131

109:                                              ; preds = %88, %77
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.res_mtt*, %struct.res_mtt** %21, align 8
  %113 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RES_MTT, align 4
  %117 = call i32 @put_res(%struct.mlx4_dev* %110, i32 %111, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %67
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @RES_EQ, align 4
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @res_abort_move(%struct.mlx4_dev* %119, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %58
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @RES_EQ, align 4
  %129 = call i32 @rem_res_range(%struct.mlx4_dev* %125, i32 %126, i32 %127, i32 1, i32 %128, i32 0)
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %124, %89, %48
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @eq_get_mtt_addr(%struct.mlx4_eq_context*) #1

declare dso_local i32 @eq_get_mtt_size(%struct.mlx4_eq_context*) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eq_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_eq**) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
