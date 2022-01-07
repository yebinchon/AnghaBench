; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_alias_GUID.c_mlx4_ib_init_alias_guid_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_alias_GUID.c_mlx4_ib_init_alias_guid_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*, i32, i32, %union.ib_gid*)* }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GUID_STATE_NEED_PORT_INIT = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_REC_IN_PORT = common dso_local global i32 0, align 4
@mlx4_ib_sm_guid_assign = common dso_local global i64 0, align 8
@NUM_ALIAS_GUID_PER_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"alias_guid%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@alias_guid_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"init_alias_guid_service: Failed. (ret:%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_init_alias_guid_service(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca [15 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mlx4_is_master(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %282

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 4, i32 %16)
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32* %17, i32** %21, align 8
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %282

31:                                               ; preds = %15
  %32 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ib_sa_register_client(i32* %36)
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_init(i32* %41)
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %63, %31
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_9__*, i32, i32, %union.ib_gid*)*, i64 (%struct.TYPE_9__*, i32, i32, %union.ib_gid*)** %52, align 8
  %54 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %6, align 4
  %57 = call i64 %53(%struct.TYPE_9__* %55, i32 %56, i32 0, %union.ib_gid* %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %262

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %43

66:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %227, %66
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %230

73:                                               ; preds = %67
  %74 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = call i32 @memset(%struct.TYPE_10__* %81, i32 0, i32 4)
  %83 = load i32, i32* @GUID_STATE_NEED_PORT_INIT, align 4
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %83
  store i32 %94, i32* %92, align 8
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %116, %73
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %101 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = call i32 @memset(%struct.TYPE_10__* %114, i32 255, i32 8)
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %95

119:                                              ; preds = %95
  %120 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %121 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = call i32 @INIT_LIST_HEAD(i32* %128)
  %130 = load i64, i64* @mlx4_ib_sm_guid_assign, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %119
  store i32 1, i32* %7, align 4
  br label %133

133:                                              ; preds = %145, %132
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @NUM_ALIAS_GUID_PER_PORT, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i32 @mlx4_set_admin_guid(i32 %140, i32 0, i32 %141, i32 %143)
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %133

148:                                              ; preds = %133
  br label %149

149:                                              ; preds = %148, %119
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %160, %149
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @invalidate_guid_record(%struct.mlx4_ib_dev* %155, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %150

163:                                              ; preds = %150
  %164 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %165 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %168 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  store %struct.TYPE_7__* %166, %struct.TYPE_7__** %175, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  store i32 %176, i32* %185, align 8
  %186 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @snprintf(i8* %186, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %190 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %191 = call i32* @alloc_ordered_workqueue(i8* %189, i32 %190)
  %192 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %193 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i32* %191, i32** %200, align 8
  %201 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %163
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %5, align 4
  br label %231

215:                                              ; preds = %163
  %216 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  %225 = load i32, i32* @alias_guid_work, align 4
  %226 = call i32 @INIT_DELAYED_WORK(i32* %224, i32 %225)
  br label %227

227:                                              ; preds = %215
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %67

230:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %282

231:                                              ; preds = %212
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %258, %231
  %235 = load i32, i32* %6, align 4
  %236 = icmp sge i32 %235, 0
  br i1 %236, label %237, label %261

237:                                              ; preds = %234
  %238 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %239 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @destroy_workqueue(i32* %247)
  %249 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %250 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  store i32* null, i32** %257, align 8
  br label %258

258:                                              ; preds = %237
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %6, align 4
  br label %234

261:                                              ; preds = %234
  br label %262

262:                                              ; preds = %261, %59
  %263 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %264 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @ib_sa_unregister_client(i32* %267)
  %269 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %270 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @kfree(i32* %273)
  %275 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %276 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  store i32* null, i32** %278, align 8
  %279 = load i32, i32* %5, align 4
  %280 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %279)
  %281 = load i32, i32* %5, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %262, %230, %28, %14
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_sa_register_client(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlx4_set_admin_guid(i32, i32, i32, i32) #1

declare dso_local i32 @invalidate_guid_record(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @ib_sa_unregister_client(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
