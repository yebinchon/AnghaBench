; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i64, %struct.ib_recv_wr*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qlnxr_dev = type { i32, i32, i32 }
%struct.qlnxr_qp = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [15 x i8] c"enter, wr: %p\0A\00", align 1
@ECORE_ROCE_QP_STATE_RTR = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"exit 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLNXR_GSI_MAX_RECV_SGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"exit 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"exit 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"exit rc = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"exit with -ENOMEM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_gsi_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %14)
  store %struct.qlnxr_dev* %15, %struct.qlnxr_dev** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = call %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp* %16)
  store %struct.qlnxr_qp* %17, %struct.qlnxr_qp** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %22 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.ib_recv_wr* %21)
  %23 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %24 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ECORE_ROCE_QP_STATE_RTR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %3
  %29 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %30 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %36 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %35, %struct.ib_recv_wr** %36, align 8
  %37 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %38 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @QL_DPRINT11(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %158

43:                                               ; preds = %28, %3
  %44 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %45 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %44, i32 0, i32 1
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %89, %43
  %49 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %50 = icmp ne %struct.ib_recv_wr* %49, null
  br i1 %50, label %51, label %134

51:                                               ; preds = %48
  %52 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QLNXR_GSI_MAX_RECV_SGE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %59 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @QL_DPRINT11(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %145

62:                                               ; preds = %51
  %63 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %64 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %67 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %70 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ecore_ll2_post_rx_buffer(i32 %65, i32 %68, i32 %74, i32 %80, i32 0, i32 1)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %62
  %85 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %86 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @QL_DPRINT11(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %145

89:                                               ; preds = %62
  %90 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %91 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %94 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %96
  %98 = call i32 @memset(%struct.TYPE_6__* %97, i32 0, i32 16)
  %99 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %100 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %103 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 0
  %110 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 0
  %114 = bitcast %struct.TYPE_4__* %109 to i8*
  %115 = bitcast %struct.TYPE_4__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 8, i1 false)
  %116 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %120 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %123 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 %118, i32* %127, align 8
  %128 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %129 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %128, i32 0, i32 2
  %130 = call i32 @qlnxr_inc_sw_prod(%struct.TYPE_5__* %129)
  %131 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %131, i32 0, i32 1
  %133 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %132, align 8
  store %struct.ib_recv_wr* %133, %struct.ib_recv_wr** %6, align 8
  br label %48

134:                                              ; preds = %48
  %135 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %136 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %135, i32 0, i32 1
  %137 = load i64, i64* %10, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %140 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %4, align 4
  br label %158

145:                                              ; preds = %84, %57
  %146 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %147 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %146, i32 0, i32 1
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %151 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %150, %struct.ib_recv_wr** %151, align 8
  %152 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %153 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %145, %134, %34
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local i32 @QL_DPRINT12(i32, i8*, ...) #1

declare dso_local i32 @QL_DPRINT11(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ecore_ll2_post_rx_buffer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qlnxr_inc_sw_prod(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
