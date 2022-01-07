; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_alias_GUID.c_set_guid_rec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_alias_GUID.c_set_guid_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_next_alias_guid_work = type { i32, i32, i32, %struct.mlx4_sriov_alias_guid_info_rec_det }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.ib_sa_guidinfo_rec = type { i32, i32, i32 }
%struct.ib_port_attr = type { i64, i32 }
%struct.mlx4_alias_guid_work_context = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.mlx4_ib_dev* }

@.str = private unnamed_addr constant [47 x i8] c"mlx4_ib_query_port failed (err: %d), port: %d\0A\00", align 1
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"port %d not active...rescheduling\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GUID_REC_SIZE = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_IN_REC = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_LID = common dso_local global i32 0, align 4
@IB_SA_GUIDINFO_REC_BLOCK_NUM = common dso_local global i32 0, align 4
@aliasguid_query_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"ib_sa_guid_info_rec_query failed, query_id: %d. will reschedule to the next 1 sec.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx4_next_alias_guid_work*)* @set_guid_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_guid_rec(%struct.ib_device* %0, %struct.mlx4_next_alias_guid_work* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.mlx4_next_alias_guid_work*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.ib_sa_guidinfo_rec, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_port_attr, align 8
  %11 = alloca %struct.mlx4_alias_guid_work_context*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_sriov_alias_guid_info_rec_det*, align 8
  %18 = alloca %struct.list_head*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.mlx4_next_alias_guid_work* %1, %struct.mlx4_next_alias_guid_work** %5, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %20 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %19)
  store %struct.mlx4_ib_dev* %20, %struct.mlx4_ib_dev** %7, align 8
  %21 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %15, align 4
  %25 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %28, i32 0, i32 3
  store %struct.mlx4_sriov_alias_guid_info_rec_det* %29, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %30 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.list_head* %39, %struct.list_head** %18, align 8
  %40 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @__mlx4_ib_query_port(%struct.ib_device* %40, i32 %41, %struct.ib_port_attr* %10, i32 1)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %247

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* %15, align 4
  %57 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @HZ, align 4
  %59 = mul nsw i32 5, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %12, align 8
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %188

63:                                               ; preds = %50
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.mlx4_alias_guid_work_context* @kmalloc(i32 48, i32 %64)
  store %struct.mlx4_alias_guid_work_context* %65, %struct.mlx4_alias_guid_work_context** %11, align 8
  %66 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %67 = icmp ne %struct.mlx4_alias_guid_work_context* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @HZ, align 4
  %72 = mul nsw i32 %71, 5
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %12, align 8
  br label %188

74:                                               ; preds = %63
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %77 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %79 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %80 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %79, i32 0, i32 8
  store %struct.mlx4_ib_dev* %78, %struct.mlx4_ib_dev** %80, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %83 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %85 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %88 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %90 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %93 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = call i32 @memset(%struct.ib_sa_guidinfo_rec* %8, i32 0, i32 12)
  %95 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @cpu_to_be16(i32 %96)
  %98 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %8, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %16, align 4
  %100 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %8, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, %struct.ib_sa_guidinfo_rec* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %104 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GUID_REC_SIZE, align 4
  %107 = load i32, i32* @NUM_ALIAS_GUID_IN_REC, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i32 @memcpy(i32 %102, i32 %105, i32 %108)
  %110 = load i32, i32* @IB_SA_GUIDINFO_REC_LID, align 4
  %111 = load i32, i32* @IB_SA_GUIDINFO_REC_BLOCK_NUM, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %17, align 8
  %114 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  store i32 %116, i32* %9, align 4
  %117 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %118 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %117, i32 0, i32 6
  %119 = call i32 @init_completion(i32* %118)
  %120 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %121 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %127 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %126, i32 0, i32 4
  %128 = load %struct.list_head*, %struct.list_head** %18, align 8
  %129 = call i32 @list_add_tail(i32* %127, %struct.list_head* %128)
  %130 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %14, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %137 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %5, align 8
  %145 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = load i32, i32* @aliasguid_query_handler, align 4
  %149 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %150 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %151 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %150, i32 0, i32 5
  %152 = call i64 @ib_sa_guid_info_rec_query(i32 %140, %struct.ib_device* %141, i32 %142, %struct.ib_sa_guidinfo_rec* %8, i32 %143, i32 %146, i32 1000, i32 %147, i32 %148, %struct.mlx4_alias_guid_work_context* %149, i32* %151)
  %153 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %154 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  %155 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %156 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %74
  %160 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %161 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %166 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %14, align 8
  %170 = call i32 @spin_lock_irqsave(i32* %168, i64 %169)
  %171 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %172 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, %struct.mlx4_alias_guid_work_context* %171, i32 0, i32 4
  %173 = call i32 @list_del(i32* %172)
  %174 = load %struct.mlx4_alias_guid_work_context*, %struct.mlx4_alias_guid_work_context** %11, align 8
  %175 = call i32 @kfree(%struct.mlx4_alias_guid_work_context* %174)
  %176 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i64, i64* %14, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  %182 = load i32, i32* @HZ, align 4
  %183 = mul nsw i32 1, %182
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %12, align 8
  %185 = load i32, i32* @EAGAIN, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %6, align 4
  br label %188

187:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %245

188:                                              ; preds = %159, %68, %55
  %189 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %190 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i64, i64* %13, align 8
  %193 = call i32 @spin_lock_irqsave(i32* %191, i64 %192)
  %194 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %195 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i64, i64* %14, align 8
  %199 = call i32 @spin_lock_irqsave(i32* %197, i64 %198)
  %200 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @invalidate_guid_record(%struct.mlx4_ib_dev* %200, i32 %201, i32 %202)
  %204 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %233, label %209

209:                                              ; preds = %188
  %210 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %211 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %222 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i64, i64* %12, align 8
  %232 = call i32 @queue_delayed_work(i32 %220, i32* %230, i64 %231)
  br label %233

233:                                              ; preds = %209, %188
  %234 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %235 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64, i64* %14, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %241 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i64, i64* %13, align 8
  %244 = call i32 @spin_unlock_irqrestore(i32* %242, i64 %243)
  br label %245

245:                                              ; preds = %233, %187
  %246 = load i32, i32* %6, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %245, %45
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @__mlx4_ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.mlx4_alias_guid_work_context* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_sa_guidinfo_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ib_sa_guid_info_rec_query(i32, %struct.ib_device*, i32, %struct.ib_sa_guidinfo_rec*, i32, i32, i32, i32, i32, %struct.mlx4_alias_guid_work_context*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_alias_guid_work_context*) #1

declare dso_local i32 @invalidate_guid_record(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
