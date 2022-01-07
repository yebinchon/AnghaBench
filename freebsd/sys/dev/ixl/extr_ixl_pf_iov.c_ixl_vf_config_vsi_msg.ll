; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_vsi_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_vsi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.virtchnl_vsi_queue_config_info = type { i32, i32, %struct.virtchnl_queue_pair_info* }
%struct.virtchnl_queue_pair_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@VIRTCHNL_OP_CONFIG_VSI_QUEUES = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"VF %d: invalid # of qpairs (msg has %d, VSI has %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"VF %d: size of recvd message (%d) does not match expected size (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"VF %d: VSI id in recvd message (%d) does not match expected id (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_config_vsi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_config_vsi_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_vsi_queue_config_info*, align 8
  %10 = alloca %struct.virtchnl_queue_pair_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %18 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %19 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %20 = load i32, i32* @I40E_ERR_PARAM, align 4
  %21 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %17, %struct.ixl_vf* %18, i32 %19, i32 %20)
  br label %208

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.virtchnl_vsi_queue_config_info*
  store %struct.virtchnl_vsi_queue_config_info* %24, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %25 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %26 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %31 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %34 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %29, %22
  %39 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %40 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %43 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %46 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %49 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %51)
  %53 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %54 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %55 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %56 = load i32, i32* @I40E_ERR_PARAM, align 4
  %57 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %53, %struct.ixl_vf* %54, i32 %55, i32 %56)
  br label %208

58:                                               ; preds = %29
  %59 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %60 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 32
  %64 = add i64 16, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %71 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %74 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %80 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %81 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %82 = load i32, i32* @I40E_ERR_PARAM, align 4
  %83 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %79, %struct.ixl_vf* %80, i32 %81, i32 %82)
  br label %208

84:                                               ; preds = %58
  %85 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %86 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %89 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %84
  %94 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %95 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %98 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %101 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %104 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %102, i32 %106)
  %108 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %109 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %110 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %111 = load i32, i32* @I40E_ERR_PARAM, align 4
  %112 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %108, %struct.ixl_vf* %109, i32 %110, i32 %111)
  br label %208

113:                                              ; preds = %84
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %200, %113
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %117 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %203

120:                                              ; preds = %114
  %121 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %9, align 8
  %122 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %121, i32 0, i32 2
  %123 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %123, i64 %125
  store %struct.virtchnl_queue_pair_info* %126, %struct.virtchnl_queue_pair_info** %10, align 8
  %127 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %10, align 8
  %128 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %132 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %130, %134
  br i1 %135, label %167, label %136

136:                                              ; preds = %120
  %137 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %10, align 8
  %138 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %142 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %167, label %146

146:                                              ; preds = %136
  %147 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %10, align 8
  %148 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %10, align 8
  %152 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %150, %154
  br i1 %155, label %167, label %156

156:                                              ; preds = %146
  %157 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %10, align 8
  %158 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %162 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp sge i64 %160, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %156, %146, %136, %120
  %168 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %169 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %170 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %171 = load i32, i32* @I40E_ERR_PARAM, align 4
  %172 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %168, %struct.ixl_vf* %169, i32 %170, i32 %171)
  br label %208

173:                                              ; preds = %156
  %174 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %175 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %176 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %10, align 8
  %177 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %176, i32 0, i32 1
  %178 = call i64 @ixl_vf_config_tx_queue(%struct.ixl_pf* %174, %struct.ixl_vf* %175, %struct.TYPE_5__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %182 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %183 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %184 = load i32, i32* @I40E_ERR_PARAM, align 4
  %185 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %181, %struct.ixl_vf* %182, i32 %183, i32 %184)
  br label %208

186:                                              ; preds = %173
  %187 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %188 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %189 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %10, align 8
  %190 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %189, i32 0, i32 0
  %191 = call i64 @ixl_vf_config_rx_queue(%struct.ixl_pf* %187, %struct.ixl_vf* %188, %struct.TYPE_6__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %195 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %196 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %197 = load i32, i32* @I40E_ERR_PARAM, align 4
  %198 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %194, %struct.ixl_vf* %195, i32 %196, i32 %197)
  br label %208

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %114

203:                                              ; preds = %114
  %204 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %205 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %206 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %207 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %204, %struct.ixl_vf* %205, i32 %206)
  br label %208

208:                                              ; preds = %203, %193, %180, %167, %93, %69, %38, %16
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ixl_vf_config_tx_queue(%struct.ixl_pf*, %struct.ixl_vf*, %struct.TYPE_5__*) #1

declare dso_local i64 @ixl_vf_config_rx_queue(%struct.ixl_pf*, %struct.ixl_vf*, %struct.TYPE_6__*) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
