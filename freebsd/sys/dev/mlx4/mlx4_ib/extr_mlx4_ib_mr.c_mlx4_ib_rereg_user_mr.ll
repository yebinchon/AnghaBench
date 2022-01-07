; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_rereg_user_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_rereg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32, i8*, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.mlx4_mpt_entry = type { i32 }
%struct.TYPE_14__ = type { i32 }

@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_rereg_user_mr(%struct.ib_mr* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, %struct.ib_pd* %6, %struct.ib_udata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_pd*, align 8
  %17 = alloca %struct.ib_udata*, align 8
  %18 = alloca %struct.mlx4_ib_dev*, align 8
  %19 = alloca %struct.mlx4_ib_mr*, align 8
  %20 = alloca %struct.mlx4_mpt_entry*, align 8
  %21 = alloca %struct.mlx4_mpt_entry**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.ib_pd* %6, %struct.ib_pd** %16, align 8
  store %struct.ib_udata* %7, %struct.ib_udata** %17, align 8
  %25 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %26 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.mlx4_ib_dev* @to_mdev(i32 %27)
  store %struct.mlx4_ib_dev* %28, %struct.mlx4_ib_dev** %18, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %30 = call %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr* %29)
  store %struct.mlx4_ib_mr* %30, %struct.mlx4_ib_mr** %19, align 8
  store %struct.mlx4_mpt_entry** %20, %struct.mlx4_mpt_entry*** %21, align 8
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %34, i32 0, i32 0
  %36 = call i32 @mlx4_mr_hw_get_mpt(i32 %33, %struct.TYPE_15__* %35, %struct.mlx4_mpt_entry*** %21)
  store i32 %36, i32* %22, align 4
  %37 = load i32, i32* %22, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %8
  %40 = load i32, i32* %22, align 4
  store i32 %40, i32* %9, align 4
  br label %209

41:                                               ; preds = %8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @IB_MR_REREG_PD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %51 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %50, align 8
  %52 = load %struct.ib_pd*, %struct.ib_pd** %16, align 8
  %53 = call %struct.TYPE_14__* @to_mpd(%struct.ib_pd* %52)
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlx4_mr_hw_change_pd(i32 %49, %struct.mlx4_mpt_entry* %51, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %202

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %71 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @convert_access(i32 %72)
  %74 = call i32 @mlx4_mr_hw_change_access(i32 %69, %struct.mlx4_mpt_entry* %71, i32 %73)
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %22, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %202

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %181

84:                                               ; preds = %79
  %85 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %88, i32 0, i32 0
  %90 = call i32 @mlx4_mr_rereg_mem_cleanup(i32 %87, %struct.TYPE_15__* %89)
  %91 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %92 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %91, i32 0, i32 1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = call i32 @ib_umem_release(%struct.TYPE_16__* %93)
  %95 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %96 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %104 = or i32 %102, %103
  %105 = call %struct.TYPE_16__* @ib_umem_get(i32 %99, i8* %100, i8* %101, i32 %104, i32 0)
  %106 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %106, i32 0, i32 1
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %107, align 8
  %108 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %108, i32 0, i32 1
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = call i64 @IS_ERR(%struct.TYPE_16__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %84
  %114 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %115 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %114, i32 0, i32 1
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = call i32 @PTR_ERR(%struct.TYPE_16__* %116)
  store i32 %117, i32* %22, align 4
  %118 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %118, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %119, align 8
  br label %202

120:                                              ; preds = %84
  %121 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %122 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %121, i32 0, i32 1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = call i32 @ib_umem_page_count(%struct.TYPE_16__* %123)
  store i32 %124, i32* %24, align 4
  %125 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ilog2(i32 %129)
  store i32 %130, i32* %23, align 4
  %131 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %135 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %134, i32 0, i32 0
  %136 = load i8*, i8** %14, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %141 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %140, align 8
  %142 = call i32 @mlx4_mr_rereg_mem_write(i32 %133, %struct.TYPE_15__* %135, i8* %136, i8* %137, i32 %138, i32 %139, %struct.mlx4_mpt_entry* %141)
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %22, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %120
  %146 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %146, i32 0, i32 1
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = call i32 @ib_umem_release(%struct.TYPE_16__* %148)
  br label %202

150:                                              ; preds = %120
  %151 = load i8*, i8** %14, align 8
  %152 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %153 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  store i8* %151, i8** %154, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %157 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  store i8* %155, i8** %158, align 8
  %159 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %160 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %163, i32 0, i32 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %159, i32* %162, %struct.TYPE_16__* %165)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %150
  %170 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %171 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %174 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %173, i32 0, i32 0
  %175 = call i32 @mlx4_mr_rereg_mem_cleanup(i32 %172, %struct.TYPE_15__* %174)
  %176 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %176, i32 0, i32 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = call i32 @ib_umem_release(%struct.TYPE_16__* %178)
  br label %202

180:                                              ; preds = %150
  br label %181

181:                                              ; preds = %180, %79
  %182 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %183 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %185, i32 0, i32 0
  %187 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %188 = call i32 @mlx4_mr_hw_write_mpt(i32 %184, %struct.TYPE_15__* %186, %struct.mlx4_mpt_entry** %187)
  store i32 %188, i32* %22, align 4
  %189 = load i32, i32* %22, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %181
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i32, i32* %15, align 4
  %198 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %199 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  br label %201

201:                                              ; preds = %196, %191, %181
  br label %202

202:                                              ; preds = %201, %169, %145, %113, %77, %59
  %203 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %204 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %207 = call i32 @mlx4_mr_hw_put_mpt(i32 %205, %struct.mlx4_mpt_entry** %206)
  %208 = load i32, i32* %22, align 4
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %202, %39
  %210 = load i32, i32* %9, align 4
  ret i32 %210
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mlx4_mr_hw_get_mpt(i32, %struct.TYPE_15__*, %struct.mlx4_mpt_entry***) #1

declare dso_local i32 @mlx4_mr_hw_change_pd(i32, %struct.mlx4_mpt_entry*, i32) #1

declare dso_local %struct.TYPE_14__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx4_mr_hw_change_access(i32, %struct.mlx4_mpt_entry*, i32) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @mlx4_mr_rereg_mem_cleanup(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ib_umem_get(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @ib_umem_page_count(%struct.TYPE_16__*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_mr_rereg_mem_write(i32, %struct.TYPE_15__*, i8*, i8*, i32, i32, %struct.mlx4_mpt_entry*) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mlx4_mr_hw_write_mpt(i32, %struct.TYPE_15__*, %struct.mlx4_mpt_entry**) #1

declare dso_local i32 @mlx4_mr_hw_put_mpt(i32, %struct.mlx4_mpt_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
