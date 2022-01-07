; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_rereg_user_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_rereg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { %struct.ib_pd*, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_mr = type { i32, i8*, i8*, %struct.TYPE_7__, i32, i64, %struct.mlx5_ib_mr* }
%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"start 0x%llx, virt_addr 0x%llx, length 0x%llx, access_flags 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to unregister MR\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to destroy MKey\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to rereg UMR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_rereg_user_mr(%struct.ib_mr* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, %struct.ib_pd* %6, %struct.ib_udata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_pd*, align 8
  %17 = alloca %struct.ib_udata*, align 8
  %18 = alloca %struct.mlx5_ib_dev*, align 8
  %19 = alloca %struct.mlx5_ib_mr*, align 8
  %20 = alloca %struct.ib_pd*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.ib_pd* %6, %struct.ib_pd** %16, align 8
  store %struct.ib_udata* %7, %struct.ib_udata** %17, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %30 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.mlx5_ib_dev* @to_mdev(i32 %31)
  store %struct.mlx5_ib_dev* %32, %struct.mlx5_ib_dev** %18, align 8
  %33 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %34 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %33)
  store %struct.mlx5_ib_mr* %34, %struct.mlx5_ib_mr** %19, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @IB_MR_REREG_PD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %8
  %40 = load %struct.ib_pd*, %struct.ib_pd** %16, align 8
  br label %45

41:                                               ; preds = %8
  %42 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %43 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %42, i32 0, i32 0
  %44 = load %struct.ib_pd*, %struct.ib_pd** %43, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi %struct.ib_pd* [ %40, %39 ], [ %44, %41 ]
  store %struct.ib_pd* %46, %struct.ib_pd** %20, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %15, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i32 [ %52, %51 ], [ %56, %53 ]
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i8*, i8** %14, align 8
  br label %71

65:                                               ; preds = %57
  %66 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %66, i32 0, i32 6
  %68 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %67, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  br label %71

71:                                               ; preds = %65, %63
  %72 = phi i8* [ %64, %63 ], [ %70, %65 ]
  store i8* %72, i8** %22, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i8*, i8** %13, align 8
  br label %85

79:                                               ; preds = %71
  %80 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %80, i32 0, i32 6
  %82 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %81, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  br label %85

85:                                               ; preds = %79, %77
  %86 = phi i8* [ %78, %77 ], [ %84, %79 ]
  store i8* %86, i8** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %87 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load i8*, i8** %14, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load i8*, i8** %13, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %87, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %91, i64 %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @IB_MR_REREG_PD, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %128

99:                                               ; preds = %85
  %100 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %104 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %103, i32 0, i32 6
  %105 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %104, align 8
  %106 = call i32 @ib_umem_release(%struct.mlx5_ib_mr* %105)
  %107 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %108 = load i8*, i8** %22, align 8
  %109 = load i8*, i8** %23, align 8
  %110 = load i32, i32* %21, align 4
  %111 = call %struct.mlx5_ib_mr* @mr_umem_get(%struct.ib_pd* %107, i8* %108, i8* %109, i32 %110, i32* %25, i32* %24, i32* %26, i32* %27)
  %112 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %113 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %112, i32 0, i32 6
  store %struct.mlx5_ib_mr* %111, %struct.mlx5_ib_mr** %113, align 8
  %114 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %114, i32 0, i32 6
  %116 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %115, align 8
  %117 = call i64 @IS_ERR(%struct.mlx5_ib_mr* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %99
  %120 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %121 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %120, i32 0, i32 6
  %122 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.mlx5_ib_mr* %122)
  store i32 %123, i32* %28, align 4
  %124 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %125 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %124, i32 0, i32 6
  store %struct.mlx5_ib_mr* null, %struct.mlx5_ib_mr** %125, align 8
  %126 = load i32, i32* %28, align 4
  store i32 %126, i32* %9, align 4
  br label %263

127:                                              ; preds = %99
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %190

133:                                              ; preds = %128
  %134 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %135 = load i8*, i8** %22, align 8
  %136 = load i8*, i8** %23, align 8
  %137 = call i32 @use_umr_mtt_update(%struct.mlx5_ib_mr* %134, i8* %135, i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %190, label %139

139:                                              ; preds = %133
  %140 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %141 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %146 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %147 = call i32 @unreg_umr(%struct.mlx5_ib_dev* %145, %struct.mlx5_ib_mr* %146)
  store i32 %147, i32* %28, align 4
  %148 = load i32, i32* %28, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %152 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %144
  br label %164

154:                                              ; preds = %139
  %155 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %156 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %157 = call i32 @destroy_mkey(%struct.mlx5_ib_dev* %155, %struct.mlx5_ib_mr* %156)
  store i32 %157, i32* %28, align 4
  %158 = load i32, i32* %28, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %162 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %154
  br label %164

164:                                              ; preds = %163, %153
  %165 = load i32, i32* %28, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* %28, align 4
  store i32 %168, i32* %9, align 4
  br label %263

169:                                              ; preds = %164
  %170 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %171 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %172 = load i8*, i8** %22, align 8
  %173 = load i8*, i8** %23, align 8
  %174 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %175 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %174, i32 0, i32 6
  %176 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %175, align 8
  %177 = load i32, i32* %26, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %21, align 4
  %180 = call %struct.mlx5_ib_mr* @reg_create(%struct.ib_mr* %170, %struct.ib_pd* %171, i8* %172, i8* %173, %struct.mlx5_ib_mr* %176, i32 %177, i32 %178, i32 %179)
  store %struct.mlx5_ib_mr* %180, %struct.mlx5_ib_mr** %19, align 8
  %181 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %182 = call i64 @IS_ERR(%struct.mlx5_ib_mr* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %169
  %185 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %186 = call i32 @PTR_ERR(%struct.mlx5_ib_mr* %185)
  store i32 %186, i32* %9, align 4
  br label %263

187:                                              ; preds = %169
  %188 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %189 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %188, i32 0, i32 5
  store i64 0, i64* %189, align 8
  br label %208

190:                                              ; preds = %133, %128
  %191 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %192 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %193 = load i8*, i8** %22, align 8
  %194 = load i8*, i8** %23, align 8
  %195 = load i32, i32* %25, align 4
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* %27, align 4
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @rereg_umr(%struct.ib_pd* %191, %struct.mlx5_ib_mr* %192, i8* %193, i8* %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %28, align 4
  %201 = load i32, i32* %28, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %190
  %204 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %205 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %204, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %206 = load i32, i32* %28, align 4
  store i32 %206, i32* %9, align 4
  br label %263

207:                                              ; preds = %190
  br label %208

208:                                              ; preds = %207, %187
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @IB_MR_REREG_PD, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %208
  %214 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %215 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %216 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %215, i32 0, i32 0
  store %struct.ib_pd* %214, %struct.ib_pd** %216, align 8
  %217 = load %struct.ib_pd*, %struct.ib_pd** %20, align 8
  %218 = call %struct.TYPE_8__* @to_mpd(%struct.ib_pd* %217)
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %222 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  store i32 %220, i32* %223, align 8
  br label %224

224:                                              ; preds = %213, %208
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load i32, i32* %21, align 4
  %231 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %232 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %224
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %233
  %239 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %240 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %243 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %242, i32 0, i32 0
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = call i32 @atomic_sub(i32 %241, i32* %246)
  %248 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %249 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %250 = load i32, i32* %25, align 4
  %251 = load i8*, i8** %23, align 8
  %252 = load i32, i32* %21, align 4
  %253 = call i32 @set_mr_fileds(%struct.mlx5_ib_dev* %248, %struct.mlx5_ib_mr* %249, i32 %250, i8* %251, i32 %252)
  %254 = load i8*, i8** %22, align 8
  %255 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %256 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  store i8* %254, i8** %257, align 8
  %258 = load i8*, i8** %23, align 8
  %259 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %19, align 8
  %260 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  store i8* %258, i8** %261, align 8
  br label %262

262:                                              ; preds = %238, %233
  store i32 0, i32* %9, align 4
  br label %263

263:                                              ; preds = %262, %203, %184, %167, %119
  %264 = load i32, i32* %9, align 4
  ret i32 %264
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @ib_umem_release(%struct.mlx5_ib_mr*) #1

declare dso_local %struct.mlx5_ib_mr* @mr_umem_get(%struct.ib_pd*, i8*, i8*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @use_umr_mtt_update(%struct.mlx5_ib_mr*, i8*, i8*) #1

declare dso_local i32 @unreg_umr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @destroy_mkey(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local %struct.mlx5_ib_mr* @reg_create(%struct.ib_mr*, %struct.ib_pd*, i8*, i8*, %struct.mlx5_ib_mr*, i32, i32, i32) #1

declare dso_local i32 @rereg_umr(%struct.ib_pd*, %struct.mlx5_ib_mr*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @set_mr_fileds(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
