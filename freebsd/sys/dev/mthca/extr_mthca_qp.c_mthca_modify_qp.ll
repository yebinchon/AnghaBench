; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i64, i64, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_dev = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.mthca_qp = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_LINK_LAYER_UNSPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Bad QP transition (transport %d) %d->%d with attr 0x%08x\0A\00", align 1
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"P_Key index (%u) too large. max is %d\0A\00", align 1
@IB_QP_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Port number (%u) is invalid\0A\00", align 1
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Max rdma_atomic as initiator %u too large (max is %d)\0A\00", align 1
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Max rdma_atomic as responder %u too large (max %d)\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca %struct.mthca_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mthca_dev* @to_mdev(i32 %16)
  store %struct.mthca_dev* %17, %struct.mthca_dev** %9, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = call %struct.mthca_qp* @to_mqp(%struct.ib_qp* %18)
  store %struct.mthca_qp* %19, %struct.mthca_qp** %10, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %23 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  br label %53

33:                                               ; preds = %4
  %34 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %35 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %39 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %43 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %46 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %50 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  br label %53

53:                                               ; preds = %33, %29
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IB_QP_STATE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %60 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %61, %58 ], [ %63, %62 ]
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %69 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @IB_LINK_LAYER_UNSPECIFIED, align 4
  %73 = call i32 @ib_modify_qp_is_ok(i32 %66, i32 %67, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %64
  %76 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %77 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %78 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %76, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82)
  br label %203

84:                                               ; preds = %64
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %94 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %92, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %100 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %101 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %105 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %108)
  br label %203

110:                                              ; preds = %89, %84
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @IB_QP_PORT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %115
  %121 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %122 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %125 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %123, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %120, %115
  %130 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %131 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %203

136:                                              ; preds = %120, %110
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %136
  %142 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %143 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %146 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %144, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %141
  %151 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %152 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %153 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %157 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %151, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %155, i64 %159)
  br label %203

161:                                              ; preds = %141, %136
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %161
  %167 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %168 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %171 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = shl i32 1, %173
  %175 = icmp sgt i32 %169, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %166
  %177 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %178 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %179 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %182 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = shl i32 1, %184
  %186 = call i32 (%struct.mthca_dev*, i8*, i32, ...) @mthca_dbg(%struct.mthca_dev* %177, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %180, i32 %185)
  br label %203

187:                                              ; preds = %166, %161
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @IB_QPS_RESET, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 0, i32* %13, align 4
  br label %203

196:                                              ; preds = %191, %187
  %197 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %198 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @__mthca_modify_qp(%struct.ib_qp* %197, %struct.ib_qp_attr* %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %196, %195, %176, %150, %129, %98, %75
  %204 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %205 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %204, i32 0, i32 1
  %206 = call i32 @mutex_unlock(i32* %205)
  %207 = load i32, i32* %13, align 4
  ret i32 %207
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i32, ...) #1

declare dso_local i32 @__mthca_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
