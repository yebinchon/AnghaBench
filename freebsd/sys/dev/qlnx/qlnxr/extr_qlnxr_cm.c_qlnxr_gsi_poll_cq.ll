; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32, i8*, i32, i32, i32*, i64, i32, i32, i64 }
%struct.qlnxr_dev = type { i32, %struct.qlnxr_qp* }
%struct.qlnxr_qp = type { %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qlnxr_cq = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i8* null, align 8
@IB_WC_SUCCESS = common dso_local global i8* null, align 8
@IB_WC_GRH = common dso_local global i32 0, align 4
@IB_WC_IP_CSUM_OK = common dso_local global i32 0, align 4
@IB_WC_SEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"exit i = %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IB_WC_WITH_SMAC = common dso_local global i32 0, align 4
@IB_WC_WITH_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_gsi_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_cq*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %14)
  store %struct.qlnxr_dev* %15, %struct.qlnxr_dev** %7, align 8
  %16 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %17 = call %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq* %16)
  store %struct.qlnxr_cq* %17, %struct.qlnxr_cq** %8, align 8
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 1
  %20 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %19, align 8
  store %struct.qlnxr_qp* %20, %struct.qlnxr_qp** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %22 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %26 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %99, %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %35 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %39 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br label %43

43:                                               ; preds = %33, %29
  %44 = phi i1 [ false, %29 ], [ %42, %33 ]
  br i1 %44, label %45, label %139

45:                                               ; preds = %43
  %46 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %46, i64 %48
  %50 = call i32 @memset(%struct.ib_wc* %49, i32 0, i32 56)
  %51 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %52 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %51, i32 0, i32 2
  %53 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i64 %55
  %57 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %56, i32 0, i32 4
  store i32* %52, i32** %57, align 8
  %58 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %59 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %62 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i64 %70
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 0, i32 3
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* @IB_WC_RECV, align 4
  %74 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %74, i64 %76
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %77, i32 0, i32 2
  store i32 %73, i32* %78, align 8
  %79 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %79, i64 %81
  %83 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %85 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %88 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %45
  %96 = load i8*, i8** @IB_WC_GENERAL_ERR, align 8
  br label %99

97:                                               ; preds = %45
  %98 = load i8*, i8** @IB_WC_SUCCESS, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i8* [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %101, i64 %103
  %105 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %104, i32 0, i32 1
  store i8* %100, i8** %105, align 8
  %106 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %107 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %110 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %119, i64 %121
  %123 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %122, i32 0, i32 7
  store i32 %118, i32* %123, align 4
  %124 = load i32, i32* @IB_WC_GRH, align 4
  %125 = load i32, i32* @IB_WC_IP_CSUM_OK, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %127, i64 %129
  %131 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %126
  store i32 %133, i32* %131, align 8
  %134 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %135 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %134, i32 0, i32 3
  %136 = call i32 @qlnxr_inc_sw_cons(%struct.TYPE_8__* %135)
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %29

139:                                              ; preds = %43
  br label %140

140:                                              ; preds = %156, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %146 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %150 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %148, %152
  br label %154

154:                                              ; preds = %144, %140
  %155 = phi i1 [ false, %140 ], [ %153, %144 ]
  br i1 %155, label %156, label %201

156:                                              ; preds = %154
  %157 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %157, i64 %159
  %161 = call i32 @memset(%struct.ib_wc* %160, i32 0, i32 56)
  %162 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %163 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %162, i32 0, i32 2
  %164 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %164, i64 %166
  %168 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %167, i32 0, i32 4
  store i32* %163, i32** %168, align 8
  %169 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %170 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %169, i32 0, i32 1
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %173 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %179, i64 %181
  %183 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %182, i32 0, i32 3
  store i32 %178, i32* %183, align 4
  %184 = load i32, i32* @IB_WC_SEND, align 4
  %185 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %185, i64 %187
  %189 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %188, i32 0, i32 2
  store i32 %184, i32* %189, align 8
  %190 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %191 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %191, i64 %193
  %195 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %194, i32 0, i32 1
  store i8* %190, i8** %195, align 8
  %196 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %197 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %196, i32 0, i32 0
  %198 = call i32 @qlnxr_inc_sw_cons(%struct.TYPE_8__* %197)
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %140

201:                                              ; preds = %154
  %202 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %203 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %202, i32 0, i32 0
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  %206 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %207 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %11, align 4
  ret i32 %211
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq*) #1

declare dso_local i32 @QL_DPRINT12(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @qlnxr_inc_sw_cons(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
