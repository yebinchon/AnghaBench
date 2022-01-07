; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_set_bsf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_set_bsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_sig_attrs = type { %struct.ib_sig_domain, %struct.ib_sig_domain, i32 }
%struct.ib_sig_domain = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.mlx5_bsf = type { i32, i32, %struct.mlx5_bsf_basic }
%struct.mlx5_bsf_basic = type { i32, i8*, %struct.TYPE_10__, i8*, %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.mlx5_core_sig_ctx = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.mlx5_core_sig_ctx* }

@EINVAL = common dso_local global i32 0, align 4
@MLX5_CPY_GRD_MASK = common dso_local global i32 0, align 4
@MLX5_CPY_APP_MASK = common dso_local global i32 0, align 4
@MLX5_CPY_REF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, %struct.ib_sig_attrs*, %struct.mlx5_bsf*, i32)* @mlx5_set_bsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_set_bsf(%struct.ib_mr* %0, %struct.ib_sig_attrs* %1, %struct.mlx5_bsf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca %struct.ib_sig_attrs*, align 8
  %8 = alloca %struct.mlx5_bsf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_core_sig_ctx*, align 8
  %11 = alloca %struct.mlx5_bsf_basic*, align 8
  %12 = alloca %struct.ib_sig_domain*, align 8
  %13 = alloca %struct.ib_sig_domain*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %6, align 8
  store %struct.ib_sig_attrs* %1, %struct.ib_sig_attrs** %7, align 8
  store %struct.mlx5_bsf* %2, %struct.mlx5_bsf** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %15 = call %struct.TYPE_14__* @to_mmr(%struct.ib_mr* %14)
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_sig_ctx*, %struct.mlx5_core_sig_ctx** %16, align 8
  store %struct.mlx5_core_sig_ctx* %17, %struct.mlx5_core_sig_ctx** %10, align 8
  %18 = load %struct.mlx5_bsf*, %struct.mlx5_bsf** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5_bsf, %struct.mlx5_bsf* %18, i32 0, i32 2
  store %struct.mlx5_bsf_basic* %19, %struct.mlx5_bsf_basic** %11, align 8
  %20 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %7, align 8
  %21 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %20, i32 0, i32 1
  store %struct.ib_sig_domain* %21, %struct.ib_sig_domain** %12, align 8
  %22 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %7, align 8
  %23 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %22, i32 0, i32 0
  store %struct.ib_sig_domain* %23, %struct.ib_sig_domain** %13, align 8
  %24 = load %struct.mlx5_bsf*, %struct.mlx5_bsf** %8, align 8
  %25 = call i32 @memset(%struct.mlx5_bsf* %24, i32 0, i32 72)
  %26 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %27 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %26, i32 0, i32 0
  store i32 128, i32* %27, align 8
  %28 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %7, align 8
  %29 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %32 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %36 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %7, align 8
  %38 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %63 [
    i32 129, label %41
    i32 128, label %42
  ]

41:                                               ; preds = %4
  br label %66

42:                                               ; preds = %4
  %43 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %12, align 8
  %44 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @bs_selector(i32 %47)
  %49 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %50 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.mlx5_core_sig_ctx*, %struct.mlx5_core_sig_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.mlx5_core_sig_ctx, %struct.mlx5_core_sig_ctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %58 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %12, align 8
  %60 = load %struct.mlx5_bsf*, %struct.mlx5_bsf** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_bsf, %struct.mlx5_bsf* %60, i32 0, i32 1
  %62 = call i32 @mlx5_fill_inl_bsf(%struct.ib_sig_domain* %59, i32* %61)
  br label %66

63:                                               ; preds = %4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %180

66:                                               ; preds = %42, %41
  %67 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %7, align 8
  %68 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %176 [
    i32 129, label %71
    i32 128, label %72
  ]

71:                                               ; preds = %66
  br label %179

72:                                               ; preds = %66
  %73 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %12, align 8
  %74 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %13, align 8
  %79 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %77, %82
  br i1 %83, label %84, label %154

84:                                               ; preds = %72
  %85 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %12, align 8
  %86 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %13, align 8
  %89 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %154

92:                                               ; preds = %84
  %93 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %94 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, 16
  store i32 %96, i32* %94, align 8
  %97 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %12, align 8
  %98 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %13, align 8
  %103 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %92
  %109 = load i32, i32* @MLX5_CPY_GRD_MASK, align 4
  %110 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %111 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %108, %92
  %116 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %12, align 8
  %117 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %13, align 8
  %122 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %120, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %115
  %128 = load i32, i32* @MLX5_CPY_APP_MASK, align 4
  %129 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %130 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %127, %115
  %135 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %12, align 8
  %136 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %13, align 8
  %141 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %139, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %134
  %147 = load i32, i32* @MLX5_CPY_REF_MASK, align 4
  %148 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %149 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %134
  br label %164

154:                                              ; preds = %84, %72
  %155 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %13, align 8
  %156 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @bs_selector(i32 %159)
  %161 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %162 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  br label %164

164:                                              ; preds = %154, %153
  %165 = load %struct.mlx5_core_sig_ctx*, %struct.mlx5_core_sig_ctx** %10, align 8
  %166 = getelementptr inbounds %struct.mlx5_core_sig_ctx, %struct.mlx5_core_sig_ctx* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @cpu_to_be32(i32 %168)
  %170 = load %struct.mlx5_bsf_basic*, %struct.mlx5_bsf_basic** %11, align 8
  %171 = getelementptr inbounds %struct.mlx5_bsf_basic, %struct.mlx5_bsf_basic* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %13, align 8
  %173 = load %struct.mlx5_bsf*, %struct.mlx5_bsf** %8, align 8
  %174 = getelementptr inbounds %struct.mlx5_bsf, %struct.mlx5_bsf* %173, i32 0, i32 0
  %175 = call i32 @mlx5_fill_inl_bsf(%struct.ib_sig_domain* %172, i32* %174)
  br label %179

176:                                              ; preds = %66
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %180

179:                                              ; preds = %164, %71
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %176, %63
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local %struct.TYPE_14__* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @memset(%struct.mlx5_bsf*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @bs_selector(i32) #1

declare dso_local i32 @mlx5_fill_inl_bsf(%struct.ib_sig_domain*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
