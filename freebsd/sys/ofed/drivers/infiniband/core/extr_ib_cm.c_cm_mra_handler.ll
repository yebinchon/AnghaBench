; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_mra_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_mra_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_22__*, %struct.TYPE_18__, %struct.TYPE_15__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.cm_id_private = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_13__*, %struct.TYPE_20__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8** }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.cm_mra_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REQ = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REP = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_OTHER = common dso_local global i32 0, align 4
@IB_CM_LAP_SENT = common dso_local global i32 0, align 4
@IB_CM_MRA_LAP_RCVD = common dso_local global i32 0, align 4
@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_MRA_COUNTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_mra_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_mra_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_mra_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %8 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %9 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %8, i32 0, i32 3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.cm_mra_msg*
  store %struct.cm_mra_msg* %14, %struct.cm_mra_msg** %5, align 8
  %15 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %5, align 8
  %16 = call %struct.cm_id_private* @cm_acquire_mraed_id(%struct.cm_mra_msg* %15)
  store %struct.cm_id_private* %16, %struct.cm_id_private** %4, align 8
  %17 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %18 = icmp ne %struct.cm_id_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %208

22:                                               ; preds = %1
  %23 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %5, align 8
  %24 = getelementptr inbounds %struct.cm_mra_msg, %struct.cm_mra_msg* %23, i32 0, i32 0
  %25 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %26 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  store i32* %24, i32** %27, align 8
  %28 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %5, align 8
  %29 = call i32 @cm_mra_get_service_timeout(%struct.cm_mra_msg* %28)
  %30 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %31 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 8
  %35 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %5, align 8
  %36 = call i32 @cm_mra_get_service_timeout(%struct.cm_mra_msg* %35)
  %37 = call i32 @cm_convert_to_ms(i32 %36)
  %38 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %39 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cm_convert_to_ms(i32 %41)
  %43 = add nsw i32 %37, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %45 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_irq(i32* %45)
  %47 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %48 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %161 [
    i32 128, label %51
    i32 129, label %74
    i32 132, label %97
    i32 130, label %148
    i32 131, label %148
  ]

51:                                               ; preds = %22
  %52 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %5, align 8
  %53 = call i32 @cm_mra_get_msg_mraed(%struct.cm_mra_msg* %52)
  %54 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %58 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %64 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %63, i32 0, i32 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ib_modify_mad(i32 %62, %struct.TYPE_13__* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56, %51
  br label %200

70:                                               ; preds = %56
  %71 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %72 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 130, i32* %73, align 4
  br label %162

74:                                               ; preds = %22
  %75 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %5, align 8
  %76 = call i32 @cm_mra_get_msg_mraed(%struct.cm_mra_msg* %75)
  %77 = load i32, i32* @CM_MSG_RESPONSE_REP, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %81 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %87 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %86, i32 0, i32 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ib_modify_mad(i32 %85, %struct.TYPE_13__* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79, %74
  br label %200

93:                                               ; preds = %79
  %94 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %95 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 131, i32* %96, align 4
  br label %162

97:                                               ; preds = %22
  %98 = load %struct.cm_mra_msg*, %struct.cm_mra_msg** %5, align 8
  %99 = call i32 @cm_mra_get_msg_mraed(%struct.cm_mra_msg* %98)
  %100 = load i32, i32* @CM_MSG_RESPONSE_OTHER, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %122, label %102

102:                                              ; preds = %97
  %103 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %104 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IB_CM_LAP_SENT, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %122, label %109

109:                                              ; preds = %102
  %110 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %111 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %117 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %116, i32 0, i32 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @ib_modify_mad(i32 %115, %struct.TYPE_13__* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %109, %102, %97
  %123 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %124 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IB_CM_MRA_LAP_RCVD, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %122
  %130 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %131 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %130, i32 0, i32 1
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @CM_MRA_COUNTER, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = call i32 @atomic_long_inc(i32* %140)
  br label %142

142:                                              ; preds = %129, %122
  br label %200

143:                                              ; preds = %109
  %144 = load i32, i32* @IB_CM_MRA_LAP_RCVD, align 4
  %145 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %146 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  br label %162

148:                                              ; preds = %22, %22
  %149 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %150 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %149, i32 0, i32 1
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %152, align 8
  %154 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @CM_MRA_COUNTER, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = call i32 @atomic_long_inc(i32* %159)
  br label %161

161:                                              ; preds = %22, %148
  br label %200

162:                                              ; preds = %143, %93, %70
  %163 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %164 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %170 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %169, i32 0, i32 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 1
  store i8* %168, i8** %174, align 8
  %175 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %176 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %175, i32 0, i32 2
  %177 = call i32 @atomic_inc_and_test(i32* %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %162
  %181 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %182 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %181, i32 0, i32 0
  %183 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %184 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %183, i32 0, i32 1
  %185 = call i32 @list_add_tail(i32* %182, i32* %184)
  br label %186

186:                                              ; preds = %180, %162
  %187 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %188 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %187, i32 0, i32 0
  %189 = call i32 @spin_unlock_irq(i32* %188)
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %194 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %195 = call i32 @cm_process_work(%struct.cm_id_private* %193, %struct.cm_work* %194)
  br label %199

196:                                              ; preds = %186
  %197 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %198 = call i32 @cm_deref_id(%struct.cm_id_private* %197)
  br label %199

199:                                              ; preds = %196, %192
  store i32 0, i32* %2, align 4
  br label %208

200:                                              ; preds = %161, %142, %92, %69
  %201 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %202 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %201, i32 0, i32 0
  %203 = call i32 @spin_unlock_irq(i32* %202)
  %204 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %205 = call i32 @cm_deref_id(%struct.cm_id_private* %204)
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %200, %199, %19
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.cm_id_private* @cm_acquire_mraed_id(%struct.cm_mra_msg*) #1

declare dso_local i32 @cm_mra_get_service_timeout(%struct.cm_mra_msg*) #1

declare dso_local i32 @cm_convert_to_ms(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cm_mra_get_msg_mraed(%struct.cm_mra_msg*) #1

declare dso_local i32 @ib_modify_mad(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
