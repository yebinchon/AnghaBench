; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_init_congestion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_init_congestion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32*, %struct.sysctl_ctx_list, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sysctl_oid* }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"mlx5ibcong\00", align 1
@mlx5_ib_read_cong_stats = common dso_local global i32 0, align 4
@cc_query_allowed = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cong\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Congestion control\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"conf\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Configuration\00", align 1
@MLX5_IB_CONG_PARAMS_NUM = common dso_local global i32 0, align 4
@mlx5_ib_cong_params_desc = common dso_local global i32* null, align 8
@CTLTYPE_U64 = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@mlx5_ib_cong_params_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"QU\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@MLX5_IB_CONG_STATS_NUM = common dso_local global i32 0, align 4
@mlx5_ib_cong_stats_desc = common dso_local global i32* null, align 8
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_init_congestion(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store %struct.sysctl_ctx_list* %11, %struct.sysctl_ctx_list** %4, align 8
  %12 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %13 = call i32 @sysctl_ctx_init(%struct.sysctl_ctx_list* %12)
  %14 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = call i32 @sx_init(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* @mlx5_ib_read_cong_stats, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @cc_query_allowed, align 4
  %27 = call i32 @MLX5_CAP_GEN(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %165

30:                                               ; preds = %1
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %32 = call i32 @mlx5_ib_get_all_cc_params(%struct.mlx5_ib_dev* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %165

37:                                               ; preds = %30
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.sysctl_oid*, %struct.sysctl_oid** %43, align 8
  %45 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %44)
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLFLAG_RW, align 4
  %48 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %38, i32 %45, i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %48, %struct.sysctl_oid** %5, align 8
  %49 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %50 = icmp eq %struct.sysctl_oid* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %165

54:                                               ; preds = %37
  %55 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %56 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %57 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %56)
  %58 = load i32, i32* @OID_AUTO, align 4
  %59 = load i32, i32* @CTLFLAG_RW, align 4
  %60 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %55, i32 %57, i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %60, %struct.sysctl_oid** %6, align 8
  %61 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %62 = icmp eq %struct.sysctl_oid* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = call i32 @sysctl_ctx_free(%struct.sysctl_ctx_list* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %165

70:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MLX5_IB_CONG_PARAMS_NUM, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %77 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %78 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %77)
  %79 = load i32, i32* @OID_AUTO, align 4
  %80 = load i32*, i32** @mlx5_ib_cong_params_desc, align 8
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 2, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CTLTYPE_U64, align 4
  %87 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** @mlx5_ib_cong_params_desc, align 8
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 2, %94
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %76, i32 %78, i32 %79, i32 %85, i32 %90, %struct.mlx5_ib_dev* %91, i32 %92, i32* @mlx5_ib_cong_params_handler, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %71

104:                                              ; preds = %71
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %106 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %107 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %106)
  %108 = load i32, i32* @OID_AUTO, align 4
  %109 = load i32, i32* @CTLFLAG_RD, align 4
  %110 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %105, i32 %107, i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %109, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %110, %struct.sysctl_oid** %6, align 8
  %111 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %112 = icmp eq %struct.sysctl_oid* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = call i32 @sysctl_ctx_free(%struct.sysctl_ctx_list* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %165

120:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %156, %120
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @MLX5_IB_CONG_STATS_NUM, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %121
  %126 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %127 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %128 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %127)
  %129 = load i32, i32* @OID_AUTO, align 4
  %130 = load i32*, i32** @mlx5_ib_cong_stats_desc, align 8
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 2, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CTLFLAG_RD, align 4
  %137 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %140 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @MLX5_IB_CONG_PARAMS_NUM, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32*, i32** @mlx5_ib_cong_stats_desc, align 8
  %149 = load i32, i32* %8, align 4
  %150 = mul nsw i32 2, %149
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list* %126, i32 %128, i32 %129, i32 %135, i32 %138, i32* %147, i32 0, i32 %154)
  br label %156

156:                                              ; preds = %125
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %121

159:                                              ; preds = %121
  %160 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %161 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* @hz, align 4
  %164 = call i32 @schedule_delayed_work(i32* %162, i32 %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %159, %113, %63, %51, %35, %29
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @sysctl_ctx_init(%struct.sysctl_ctx_list*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_ib_get_all_cc_params(%struct.mlx5_ib_dev*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @sysctl_ctx_free(%struct.sysctl_ctx_list*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i32, i32, %struct.mlx5_ib_dev*, i32, i32*, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_U64(%struct.sysctl_ctx_list*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
