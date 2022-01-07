; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_irq_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_irq_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ixl_vf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.virtchnl_irq_map_info = type { i32, %struct.virtchnl_vector_map* }
%struct.virtchnl_vector_map = type { i64, i64, i64, i64, i64, i64 }

@VIRTCHNL_OP_CONFIG_IRQ_MAP = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@IXL_MAX_ITR_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_config_irq_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_config_irq_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_irq_map_info*, align 8
  %10 = alloca %struct.virtchnl_vector_map*, align 8
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 0
  store %struct.i40e_hw* %16, %struct.i40e_hw** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %22 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %23 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %24 = load i32, i32* @I40E_ERR_PARAM, align 4
  %25 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %21, %struct.ixl_vf* %22, i32 %23, i32 %24)
  br label %171

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.virtchnl_irq_map_info*
  store %struct.virtchnl_irq_map_info* %28, %struct.virtchnl_irq_map_info** %9, align 8
  %29 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %9, align 8
  %30 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %35 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %36 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %37 = load i32, i32* @I40E_ERR_PARAM, align 4
  %38 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %34, %struct.ixl_vf* %35, i32 %36, i32 %37)
  br label %171

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %9, align 8
  %43 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 48
  %47 = add i64 16, %46
  %48 = icmp ne i64 %41, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %51 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %52 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %53 = load i32, i32* @I40E_ERR_PARAM, align 4
  %54 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %50, %struct.ixl_vf* %51, i32 %52, i32 %53)
  br label %171

55:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %163, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %9, align 8
  %59 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %166

62:                                               ; preds = %56
  %63 = load %struct.virtchnl_irq_map_info*, %struct.virtchnl_irq_map_info** %9, align 8
  %64 = getelementptr inbounds %struct.virtchnl_irq_map_info, %struct.virtchnl_irq_map_info* %63, i32 0, i32 1
  %65 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %65, i64 %67
  store %struct.virtchnl_vector_map* %68, %struct.virtchnl_vector_map** %10, align 8
  %69 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %70 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %73 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %71, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %62
  %78 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %79 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %82 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %80, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %77, %62
  %87 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %88 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %89 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %90 = load i32, i32* @I40E_ERR_PARAM, align 4
  %91 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %87, %struct.ixl_vf* %88, i32 %89, i32 %90)
  br label %171

92:                                               ; preds = %77
  %93 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %94 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %99 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @fls(i64 %100)
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %105 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %103, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %97
  %110 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %111 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %112 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %113 = load i32, i32* @I40E_ERR_PARAM, align 4
  %114 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %110, %struct.ixl_vf* %111, i32 %112, i32 %113)
  br label %171

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %92
  %117 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %118 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  %122 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %123 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @fls(i64 %124)
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %129 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %127, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %121
  %134 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %135 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %136 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %137 = load i32, i32* @I40E_ERR_PARAM, align 4
  %138 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %134, %struct.ixl_vf* %135, i32 %136, i32 %137)
  br label %171

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139, %116
  %141 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %142 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IXL_MAX_ITR_IDX, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %148 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IXL_MAX_ITR_IDX, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146, %140
  %153 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %154 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %155 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %156 = load i32, i32* @I40E_ERR_PARAM, align 4
  %157 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %153, %struct.ixl_vf* %154, i32 %155, i32 %156)
  br label %171

158:                                              ; preds = %146
  %159 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %160 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %161 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %10, align 8
  %162 = call i32 @ixl_vf_config_vector(%struct.ixl_pf* %159, %struct.ixl_vf* %160, %struct.virtchnl_vector_map* %161)
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %56

166:                                              ; preds = %56
  %167 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %168 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %169 = load i32, i32* @VIRTCHNL_OP_CONFIG_IRQ_MAP, align 4
  %170 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %167, %struct.ixl_vf* %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %152, %133, %109, %86, %49, %33, %20
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @ixl_vf_config_vector(%struct.ixl_pf*, %struct.ixl_vf*, %struct.virtchnl_vector_map*) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
