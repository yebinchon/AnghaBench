; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_port_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_port_private = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ib_qp* }
%struct.ib_qp = type { i64 }
%struct.ib_qp_attr = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't kmalloc ib_qp_attr\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_DEFAULT_PKEY_FULL = common dso_local global i32 0, align 4
@IB_MAD_QPS_CORE = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP1_QKEY = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't change QP%d state to INIT: %d\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't change QP%d state to RTR: %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_MAD_SEND_Q_PSN = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Couldn't change QP%d state to RTS: %d\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to request completion notification: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Couldn't post receive WRs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_port_private*)* @ib_mad_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_mad_port_start(%struct.ib_mad_port_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad_port_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca i64, align 8
  store %struct.ib_mad_port_private* %0, %struct.ib_mad_port_private** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ib_qp_attr* @kmalloc(i32 24, i32 %9)
  store %struct.ib_qp_attr* %10, %struct.ib_qp_attr** %6, align 8
  %11 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %12 = icmp ne %struct.ib_qp_attr* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %15 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %187

21:                                               ; preds = %1
  %22 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %23 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %26 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IB_DEFAULT_PKEY_FULL, align 4
  %29 = call i32 @ib_find_pkey(%struct.TYPE_4__* %24, i32 %27, i32 %28, i64* %8)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %32, %21
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %128, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IB_MAD_QPS_CORE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %131

38:                                               ; preds = %34
  %39 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %40 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.ib_qp*, %struct.ib_qp** %45, align 8
  store %struct.ib_qp* %46, %struct.ib_qp** %7, align 8
  %47 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %48 = icmp ne %struct.ib_qp* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %128

50:                                               ; preds = %38
  %51 = load i32, i32* @IB_QPS_INIT, align 4
  %52 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %58 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @IB_QP1_QKEY, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 0, %61 ], [ %63, %62 ]
  %66 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %69 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %70 = load i32, i32* @IB_QP_STATE, align 4
  %71 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @IB_QP_QKEY, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @ib_modify_qp(%struct.ib_qp* %68, %struct.ib_qp_attr* %69, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %80 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  br label %183

86:                                               ; preds = %64
  %87 = load i32, i32* @IB_QPS_RTR, align 4
  %88 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %91 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %92 = load i32, i32* @IB_QP_STATE, align 4
  %93 = call i32 @ib_modify_qp(%struct.ib_qp* %90, %struct.ib_qp_attr* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %98 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  br label %183

104:                                              ; preds = %86
  %105 = load i32, i32* @IB_QPS_RTS, align 4
  %106 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @IB_MAD_SEND_Q_PSN, align 4
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %112 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %113 = load i32, i32* @IB_QP_STATE, align 4
  %114 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @ib_modify_qp(%struct.ib_qp* %111, %struct.ib_qp_attr* %112, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %104
  %120 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %121 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125)
  br label %183

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %127, %49
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %34

131:                                              ; preds = %34
  %132 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %133 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %136 = call i32 @ib_req_notify_cq(i32 %134, i32 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %131
  %140 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %141 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i32*, i8*, ...) @dev_err(i32* %143, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  br label %183

146:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %179, %146
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @IB_MAD_QPS_CORE, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %147
  %152 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %153 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load %struct.ib_qp*, %struct.ib_qp** %158, align 8
  %160 = icmp ne %struct.ib_qp* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %151
  br label %179

162:                                              ; preds = %151
  %163 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %164 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = call i32 @ib_mad_post_receive_mads(%struct.TYPE_3__* %168, i32* null)
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %162
  %173 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %174 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = call i32 (i32*, i8*, ...) @dev_err(i32* %176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %183

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %161
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %147

182:                                              ; preds = %147
  br label %183

183:                                              ; preds = %182, %172, %139, %119, %96, %78
  %184 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %185 = call i32 @kfree(%struct.ib_qp_attr* %184)
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %13
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.ib_qp_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ib_find_pkey(%struct.TYPE_4__*, i32, i32, i64*) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @ib_mad_post_receive_mads(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
