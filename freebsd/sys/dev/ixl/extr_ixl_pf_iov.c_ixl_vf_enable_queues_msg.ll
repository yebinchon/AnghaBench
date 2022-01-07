; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_enable_queues_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_enable_queues_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.virtchnl_queue_select = type { i64, i64, i64 }

@VIRTCHNL_OP_ENABLE_QUEUES = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"VF %d: TX ring %d is outside of VF VSI allocation!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"VF %d: TX ring %d is already enabled!\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"VF %d: RX ring %d is outside of VF VSI allocation!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"VF %d: RX ring %d is already enabled!\0A\00", align 1
@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_enable_queues_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_enable_queues_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_queue_select*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 24
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %18 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %19 = load i32, i32* @VIRTCHNL_OP_ENABLE_QUEUES, align 4
  %20 = load i32, i32* @I40E_ERR_PARAM, align 4
  %21 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %17, %struct.ixl_vf* %18, i32 %19, i32 %20)
  br label %199

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.virtchnl_queue_select*
  store %struct.virtchnl_queue_select* %24, %struct.virtchnl_queue_select** %9, align 8
  %25 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %9, align 8
  %26 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %29 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %22
  %34 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %9, align 8
  %35 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %9, align 8
  %40 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %33, %22
  %44 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %45 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %46 = load i32, i32* @VIRTCHNL_OP_ENABLE_QUEUES, align 4
  %47 = load i32, i32* @I40E_ERR_PARAM, align 4
  %48 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %44, %struct.ixl_vf* %45, i32 %46, i32 %47)
  br label %199

49:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %114, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %53, label %117

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 1, %54
  %56 = sext i32 %55 to i64
  %57 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %9, align 8
  %58 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %65 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %63, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %71 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %74 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %117

78:                                               ; preds = %62
  %79 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %80 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %79, i32 0, i32 0
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @ixl_pf_qmgr_is_queue_configured(i32* %80, i32 %81, i32 1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %114

85:                                               ; preds = %78
  %86 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %87 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %86, i32 0, i32 0
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @ixl_pf_qmgr_is_queue_enabled(i32* %87, i32 %88, i32 1)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %93 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %94 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @ixl_dbg_iov(%struct.ixl_pf* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %85
  %99 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %100 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %101 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %100, i32 0, i32 0
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ixl_enable_tx_ring(%struct.ixl_pf* %99, i32* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %117

107:                                              ; preds = %98
  %108 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %109 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %108, i32 0, i32 0
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @ixl_pf_qmgr_mark_queue_enabled(i32* %109, i32 %110, i32 1)
  br label %112

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %53
  br label %114

114:                                              ; preds = %113, %84
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %50

117:                                              ; preds = %106, %69, %50
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %182, %117
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 32
  br i1 %120, label %121, label %185

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = shl i32 1, %122
  %124 = sext i32 %123 to i64
  %125 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %9, align 8
  %126 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = and i64 %124, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %181

130:                                              ; preds = %121
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %133 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %131, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %139 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %142 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %144)
  br label %185

146:                                              ; preds = %130
  %147 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %148 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %147, i32 0, i32 0
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @ixl_pf_qmgr_is_queue_configured(i32* %148, i32 %149, i32 0)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  br label %182

153:                                              ; preds = %146
  %154 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %155 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %154, i32 0, i32 0
  %156 = load i32, i32* %12, align 4
  %157 = call i64 @ixl_pf_qmgr_is_queue_enabled(i32* %155, i32 %156, i32 0)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %161 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %162 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @ixl_dbg_iov(%struct.ixl_pf* %160, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %159, %153
  %167 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %168 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %169 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %168, i32 0, i32 0
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @ixl_enable_rx_ring(%struct.ixl_pf* %167, i32* %169, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %185

175:                                              ; preds = %166
  %176 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %177 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %176, i32 0, i32 0
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @ixl_pf_qmgr_mark_queue_enabled(i32* %177, i32 %178, i32 0)
  br label %180

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %121
  br label %182

182:                                              ; preds = %181, %152
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %118

185:                                              ; preds = %174, %137, %118
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %190 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %191 = load i32, i32* @VIRTCHNL_OP_ENABLE_QUEUES, align 4
  %192 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  %193 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %189, %struct.ixl_vf* %190, i32 %191, i32 %192)
  br label %199

194:                                              ; preds = %185
  %195 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %196 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %197 = load i32, i32* @VIRTCHNL_OP_ENABLE_QUEUES, align 4
  %198 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %195, %struct.ixl_vf* %196, i32 %197)
  br label %199

199:                                              ; preds = %194, %188, %43, %16
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @ixl_pf_qmgr_is_queue_configured(i32*, i32, i32) #1

declare dso_local i64 @ixl_pf_qmgr_is_queue_enabled(i32*, i32, i32) #1

declare dso_local i32 @ixl_dbg_iov(%struct.ixl_pf*, i8*, i32, i32) #1

declare dso_local i32 @ixl_enable_tx_ring(%struct.ixl_pf*, i32*, i32) #1

declare dso_local i32 @ixl_pf_qmgr_mark_queue_enabled(i32*, i32, i32) #1

declare dso_local i32 @ixl_enable_rx_ring(%struct.ixl_pf*, i32*, i32) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
