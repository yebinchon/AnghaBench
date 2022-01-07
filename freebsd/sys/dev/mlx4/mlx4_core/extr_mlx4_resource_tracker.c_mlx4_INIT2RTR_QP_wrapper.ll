; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_INIT2RTR_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_INIT2RTR_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@QP_TRANS_INIT2RTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@RES_QP_HW = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_INIT2RTR_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_qp_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.res_qp*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %26 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %25, i32 0, i32 0
  %27 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %26, align 8
  %28 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %27, i64 8
  store %struct.mlx4_qp_context* %28, %struct.mlx4_qp_context** %15, align 8
  %29 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 8388607
  store i32 %32, i32* %16, align 4
  %33 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %34 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %19, align 4
  %36 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %37 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %20, align 8
  %40 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %41 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %21, align 8
  %44 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %45 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %22, align 8
  %48 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %49 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %23, align 8
  %52 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %53 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %24, align 8
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %59 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %60 = call i32 @adjust_qp_sched_queue(%struct.mlx4_dev* %56, i32 %57, %struct.mlx4_qp_context* %58, %struct.mlx4_cmd_mailbox* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %6
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %173

65:                                               ; preds = %6
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %67 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %68 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %69 = load i32, i32* @QP_TRANS_INIT2RTR, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @verify_qp_parameters(%struct.mlx4_dev* %66, %struct.mlx4_vhcr* %67, %struct.mlx4_cmd_mailbox* %68, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %7, align 4
  br label %173

76:                                               ; preds = %65
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %80 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %81 = call i64 @roce_verify_mac(%struct.mlx4_dev* %77, i32 %78, %struct.mlx4_qp_context* %79, %struct.mlx4_cmd_mailbox* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %173

86:                                               ; preds = %76
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %90 = call i32 @update_pkey_index(%struct.mlx4_dev* %87, i32 %88, %struct.mlx4_cmd_mailbox* %89)
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %92 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @update_gid(%struct.mlx4_dev* %91, %struct.mlx4_cmd_mailbox* %92, i8* %95)
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %98 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %99 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %100 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %97, %struct.mlx4_vhcr* %98, %struct.mlx4_qp_context* %99)
  %101 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %102 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %18, align 8
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* @RES_QP, align 4
  %109 = call i32 @get_res(%struct.mlx4_dev* %105, i32 %106, i32 %107, i32 %108, %struct.res_qp** %17)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %86
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %7, align 4
  br label %173

114:                                              ; preds = %86
  %115 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %116 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @RES_QP_HW, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @EBUSY, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %14, align 4
  br label %141

124:                                              ; preds = %114
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %126 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @update_vport_qp_param(%struct.mlx4_dev* %125, %struct.mlx4_cmd_mailbox* %126, i32 %127, i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %141

133:                                              ; preds = %124
  %134 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %137 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %138 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %139 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %140 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %134, i32 %135, %struct.mlx4_vhcr* %136, %struct.mlx4_cmd_mailbox* %137, %struct.mlx4_cmd_mailbox* %138, %struct.mlx4_cmd_info* %139)
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %133, %132, %121
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %166, label %144

144:                                              ; preds = %141
  %145 = load i8*, i8** %18, align 8
  %146 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %147 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %150 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %153 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** %21, align 8
  %155 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %156 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** %22, align 8
  %158 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %159 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** %23, align 8
  %161 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %162 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %24, align 8
  %164 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %165 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %144, %141
  %167 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @RES_QP, align 4
  %171 = call i32 @put_res(%struct.mlx4_dev* %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %166, %112, %83, %74, %63
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local i32 @adjust_qp_sched_queue(%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @verify_qp_parameters(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i64 @roce_verify_mac(%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @update_gid(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i8*) #1

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @update_vport_qp_param(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
