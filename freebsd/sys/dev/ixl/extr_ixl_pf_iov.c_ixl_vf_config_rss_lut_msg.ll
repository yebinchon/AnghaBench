; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_rss_lut_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_rss_lut_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ixl_vf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.virtchnl_rss_lut = type { i32, i32*, i32 }

@VIRTCHNL_OP_CONFIG_RSS_LUT = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"VF %d: # of LUT entries in msg (%d) is greater than max (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"VF %d: VSI id in recvd message (%d) does not match expected id (%d)\0A\00", align 1
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"i40e_aq_set_rss_lut status %s, error %s\0A\00", align 1
@I40E_ERR_ADMIN_QUEUE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"VF %d: Programmed LUT starting with 0x%x and length %d ok!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_config_rss_lut_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_config_rss_lut_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca %struct.virtchnl_rss_lut*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %14 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %13, i32 0, i32 1
  store %struct.i40e_hw* %14, %struct.i40e_hw** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 24
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %20 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %21 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 4
  %22 = load i32, i32* @I40E_ERR_PARAM, align 4
  %23 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %19, %struct.ixl_vf* %20, i32 %21, i32 %22)
  br label %165

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.virtchnl_rss_lut*
  store %struct.virtchnl_rss_lut* %26, %struct.virtchnl_rss_lut** %10, align 8
  %27 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %28 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 64
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %33 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %36 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %39 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 64)
  %42 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %43 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %44 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 4
  %45 = load i32, i32* @I40E_ERR_PARAM, align 4
  %46 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %42, %struct.ixl_vf* %43, i32 %44, i32 %45)
  br label %165

47:                                               ; preds = %24
  %48 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %49 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %52 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %50, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %47
  %57 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %58 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %61 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %64 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %67 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i32 %69)
  %71 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %72 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %73 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 4
  %74 = load i32, i32* @I40E_ERR_PARAM, align 4
  %75 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %71, %struct.ixl_vf* %72, i32 %73, i32 %74)
  br label %165

76:                                               ; preds = %47
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %78 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @I40E_MAC_X722, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %76
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %85 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %86 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %90 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %93 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @i40e_aq_set_rss_lut(%struct.i40e_hw* %84, i32 %88, i32 0, i32* %91, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %83
  %99 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %100 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @i40e_stat_str(%struct.i40e_hw* %102, i32 %103)
  %105 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %107 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @i40e_aq_str(%struct.i40e_hw* %105, i32 %109)
  %111 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %110)
  %112 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %113 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %114 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 4
  %115 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_ERROR, align 4
  %116 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %112, %struct.ixl_vf* %113, i32 %114, i32 %115)
  br label %165

117:                                              ; preds = %83
  br label %145

118:                                              ; preds = %76
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %141, %118
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %122 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 4
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %130 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @I40E_VFQF_HLUT1(i32 %128, i32 %131)
  %133 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %134 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %127, i32 %132, i32 %139)
  br label %141

141:                                              ; preds = %126
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %119

144:                                              ; preds = %119
  br label %145

145:                                              ; preds = %144, %117
  %146 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %147 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %150 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %153 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %10, align 8
  %158 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @DDPRINTF(i32 %148, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %156, i32 %159)
  %161 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %162 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %163 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 4
  %164 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %161, %struct.ixl_vf* %162, i32 %163)
  br label %165

165:                                              ; preds = %145, %98, %56, %31, %18
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @i40e_aq_set_rss_lut(%struct.i40e_hw*, i32, i32, i32*, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VFQF_HLUT1(i32, i32) #1

declare dso_local i32 @DDPRINTF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
