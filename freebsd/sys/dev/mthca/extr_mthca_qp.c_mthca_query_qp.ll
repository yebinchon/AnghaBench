; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_9__, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, %struct.TYPE_8__ }
%struct.mthca_dev = type { i32 }
%struct.mthca_qp = type { i64, i64, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mthca_mailbox = type { %struct.mthca_qp_param* }
%struct.mthca_qp_param = type { %struct.mthca_qp_context }
%struct.mthca_qp_context = type { i32, %struct.TYPE_10__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"QUERY_QP failed (%d)\0A\00", align 1
@RC = common dso_local global i64 0, align 8
@UC = common dso_local global i64 0, align 8
@MTHCA_QP_STATE_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca %struct.mthca_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mthca_mailbox*, align 8
  %13 = alloca %struct.mthca_qp_param*, align 8
  %14 = alloca %struct.mthca_qp_context*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mthca_dev* @to_mdev(i32 %18)
  store %struct.mthca_dev* %19, %struct.mthca_dev** %9, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %21 = call %struct.mthca_qp* @to_mqp(%struct.ib_qp* %20)
  store %struct.mthca_qp* %21, %struct.mthca_qp** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.mthca_mailbox* null, %struct.mthca_mailbox** %12, align 8
  %22 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %23 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %26 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_QPS_RESET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i64, i64* @IB_QPS_RESET, align 8
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %243

34:                                               ; preds = %4
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %35, i32 %36)
  store %struct.mthca_mailbox* %37, %struct.mthca_mailbox** %12, align 8
  %38 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %39 = call i64 @IS_ERR(%struct.mthca_mailbox* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %43 = call i32 @PTR_ERR(%struct.mthca_mailbox* %42)
  store i32 %43, i32* %11, align 4
  br label %298

44:                                               ; preds = %34
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %46 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %47 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %50 = call i32 @mthca_QUERY_QP(%struct.mthca_dev* %45, i32 %48, i32 0, %struct.mthca_mailbox* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @mthca_warn(%struct.mthca_dev* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %294

57:                                               ; preds = %44
  %58 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %59 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %58, i32 0, i32 0
  %60 = load %struct.mthca_qp_param*, %struct.mthca_qp_param** %59, align 8
  store %struct.mthca_qp_param* %60, %struct.mthca_qp_param** %13, align 8
  %61 = load %struct.mthca_qp_param*, %struct.mthca_qp_param** %13, align 8
  %62 = getelementptr inbounds %struct.mthca_qp_param, %struct.mthca_qp_param* %61, i32 0, i32 0
  store %struct.mthca_qp_context* %62, %struct.mthca_qp_context** %14, align 8
  %63 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %64 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = ashr i32 %66, 28
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @to_ib_qp_state(i32 %68)
  %70 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %71 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %73 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %78 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 5
  %81 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %84 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = ashr i32 %86, 11
  %88 = and i32 %87, 3
  %89 = call i32 @to_ib_mig_state(i32 %88)
  %90 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %90, i32 0, i32 23
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %93 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be32_to_cpu(i32 %94)
  %96 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %99 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @be32_to_cpu(i32 %100)
  %102 = and i32 %101, 16777215
  %103 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %106 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = and i32 %108, 16777215
  %110 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %113 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be32_to_cpu(i32 %114)
  %116 = and i32 %115, 16777215
  %117 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %118 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %120 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = call i32 @to_ib_qp_access_flags(i32 %122)
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 22
  store i32 %123, i32* %125, align 8
  %126 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %127 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RC, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %57
  %132 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %133 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @UC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %131, %57
  %138 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %139 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %140 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %139, i32 0, i32 21
  %141 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %142 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %141, i32 0, i32 2
  %143 = call i32 @to_ib_ah_attr(%struct.mthca_dev* %138, %struct.TYPE_9__* %140, %struct.TYPE_10__* %142)
  %144 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 19
  %147 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %148 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %147, i32 0, i32 1
  %149 = call i32 @to_ib_ah_attr(%struct.mthca_dev* %144, %struct.TYPE_9__* %146, %struct.TYPE_10__* %148)
  %150 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %151 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @be32_to_cpu(i32 %153)
  %155 = and i32 %154, 127
  %156 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %157 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %156, i32 0, i32 6
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %159 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %158, i32 0, i32 19
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %163 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %162, i32 0, i32 20
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %137, %131
  %165 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %166 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @be32_to_cpu(i32 %168)
  %170 = and i32 %169, 127
  %171 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %172 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 8
  %173 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %174 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @be32_to_cpu(i32 %176)
  %178 = ashr i32 %177, 24
  %179 = and i32 %178, 3
  %180 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %181 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %180, i32 0, i32 8
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @MTHCA_QP_STATE_DRAINING, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %187 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %186, i32 0, i32 9
  store i32 %185, i32* %187, align 8
  %188 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %189 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @be32_to_cpu(i32 %190)
  %192 = ashr i32 %191, 21
  %193 = and i32 %192, 7
  %194 = shl i32 1, %193
  %195 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %196 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %195, i32 0, i32 10
  store i32 %194, i32* %196, align 4
  %197 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %198 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @be32_to_cpu(i32 %199)
  %201 = ashr i32 %200, 21
  %202 = and i32 %201, 7
  %203 = shl i32 1, %202
  %204 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %205 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %204, i32 0, i32 11
  store i32 %203, i32* %205, align 8
  %206 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %207 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @be32_to_cpu(i32 %208)
  %210 = ashr i32 %209, 24
  %211 = and i32 %210, 31
  %212 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %213 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %212, i32 0, i32 12
  store i32 %211, i32* %213, align 4
  %214 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %215 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = ashr i32 %217, 3
  %219 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %220 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %219, i32 0, i32 13
  store i32 %218, i32* %220, align 8
  %221 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %222 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @be32_to_cpu(i32 %223)
  %225 = ashr i32 %224, 16
  %226 = and i32 %225, 7
  %227 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %228 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %227, i32 0, i32 14
  store i32 %226, i32* %228, align 4
  %229 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %230 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 5
  %234 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %235 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %234, i32 0, i32 15
  store i32 %233, i32* %235, align 8
  %236 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %237 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 3
  %241 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %242 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %241, i32 0, i32 16
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %164, %30
  %244 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %245 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %248 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %247, i32 0, i32 17
  store i64 %246, i64* %248, align 8
  %249 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %250 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %254 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %253, i32 0, i32 18
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 4
  store i32 %252, i32* %255, align 8
  %256 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %257 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %261 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %260, i32 0, i32 18
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 3
  store i32 %259, i32* %262, align 4
  %263 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %264 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %268 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %267, i32 0, i32 18
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 2
  store i32 %266, i32* %269, align 8
  %270 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %271 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %275 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %274, i32 0, i32 18
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  store i32 %273, i32* %276, align 4
  %277 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %278 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %281 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %280, i32 0, i32 18
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  store i32 %279, i32* %282, align 8
  %283 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %284 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %283, i32 0, i32 1
  %285 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %286 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %285, i32 0, i32 18
  %287 = bitcast %struct.TYPE_8__* %284 to i8*
  %288 = bitcast %struct.TYPE_8__* %286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %287, i8* align 8 %288, i64 20, i1 false)
  %289 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %290 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %293 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %243, %53
  %295 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %296 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %297 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %295, %struct.mthca_mailbox* %296)
  br label %298

298:                                              ; preds = %294, %41
  %299 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %300 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %299, i32 0, i32 2
  %301 = call i32 @mutex_unlock(i32* %300)
  %302 = load i32, i32* %11, align 4
  ret i32 %302
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_QUERY_QP(%struct.mthca_dev*, i32, i32, %struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @to_ib_qp_state(i32) #1

declare dso_local i32 @to_ib_mig_state(i32) #1

declare dso_local i32 @to_ib_qp_access_flags(i32) #1

declare dso_local i32 @to_ib_ah_attr(%struct.mthca_dev*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
