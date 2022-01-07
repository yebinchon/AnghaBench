; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_gsi_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i64, i64, i32, %struct.ib_send_wr*, i32 }
%struct.ecore_roce_ll2_packet = type { i32 }
%struct.qlnxr_qp = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.qlnxr_dev* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qlnxr_dev = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@ECORE_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"(qp->state != ECORE_ROCE_QP_STATE_RTS)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDMA_MAX_SGE_PER_SQ_WQE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"(wr->num_sge > RDMA_MAX_SGE_PER_SQ_WQE)\0A\00", align 1
@IB_WR_SEND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"(wr->opcode > IB_WR_SEND)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"qlnxr_gsi_build_packet failed\0A\00", align 1
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WC_SEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"packet sent over gsi qp\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"qlnxr_ll2_post_tx failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"exit error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_gsi_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.ecore_roce_ll2_packet*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca %struct.qlnxr_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  store %struct.ecore_roce_ll2_packet* null, %struct.ecore_roce_ll2_packet** %8, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = call %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp* %13)
  store %struct.qlnxr_qp* %14, %struct.qlnxr_qp** %9, align 8
  %15 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %16 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %15, i32 0, i32 4
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %16, align 8
  store %struct.qlnxr_dev* %17, %struct.qlnxr_dev** %10, align 8
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @QL_DPRINT12(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %23 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ECORE_ROCE_QP_STATE_RTS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %29 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @QL_DPRINT11(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %33 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %32, %struct.ib_send_wr** %33, align 8
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %175

36:                                               ; preds = %3
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RDMA_MAX_SGE_PER_SQ_WQE, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %44 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @QL_DPRINT11(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %167

49:                                               ; preds = %36
  %50 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %51 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IB_WR_SEND, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %57 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @QL_DPRINT11(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %167

62:                                               ; preds = %49
  %63 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %64 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %63, i32 0, i32 1
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %68 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %69 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %70 = call i32 @qlnxr_gsi_build_packet(%struct.qlnxr_dev* %67, %struct.qlnxr_qp* %68, %struct.ib_send_wr* %69, %struct.ecore_roce_ll2_packet** %8)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %62
  %74 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %75 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %79 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @QL_DPRINT11(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %167

82:                                               ; preds = %62
  %83 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %84 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %8, align 8
  %85 = call i32 @qlnxr_ll2_post_tx(%struct.qlnxr_dev* %83, %struct.ecore_roce_ll2_packet* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %136, label %88

88:                                               ; preds = %82
  %89 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %90 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %93 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %96 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i32 %91, i32* %100, align 4
  %101 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %111 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %114 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %109, i32* %118, align 4
  %119 = load i32, i32* @IB_WC_SEND, align 4
  %120 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %121 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %120, i32 0, i32 3
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %124 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 %119, i32* %128, align 4
  %129 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %130 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %129, i32 0, i32 2
  %131 = call i32 @qlnxr_inc_sw_prod(%struct.TYPE_4__* %130)
  %132 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %133 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @QL_DPRINT11(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %145

136:                                              ; preds = %82
  %137 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %138 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @QL_DPRINT11(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32, i32* @EAGAIN, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %12, align 4
  %143 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %144 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %143, %struct.ib_send_wr** %144, align 8
  br label %145

145:                                              ; preds = %136, %88
  %146 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %147 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %146, i32 0, i32 1
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %151 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %150, i32 0, i32 3
  %152 = load %struct.ib_send_wr*, %struct.ib_send_wr** %151, align 8
  %153 = icmp ne %struct.ib_send_wr* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %155, i32 0, i32 3
  %157 = load %struct.ib_send_wr*, %struct.ib_send_wr** %156, align 8
  %158 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %157, %struct.ib_send_wr** %158, align 8
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %154, %145
  %162 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %163 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @QL_DPRINT12(i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %4, align 4
  br label %175

167:                                              ; preds = %73, %55, %42
  %168 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %169 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %168, %struct.ib_send_wr** %169, align 8
  %170 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %171 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @QL_DPRINT12(i32 %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %167, %161, %27
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local i32 @QL_DPRINT12(i32, i8*) #1

declare dso_local i32 @QL_DPRINT11(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qlnxr_gsi_build_packet(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_send_wr*, %struct.ecore_roce_ll2_packet**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qlnxr_ll2_post_tx(%struct.qlnxr_dev*, %struct.ecore_roce_ll2_packet*) #1

declare dso_local i32 @qlnxr_inc_sw_prod(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
