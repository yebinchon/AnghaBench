; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_rss_key_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_rss_key_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ixl_vf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.virtchnl_rss_key = type { i32, i32*, i32 }
%struct.i40e_aqc_get_set_rss_key_data = type { i32, i32 }

@VIRTCHNL_OP_CONFIG_RSS_KEY = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"VF %d: Key size in msg (%d) is greater than max key size (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"VF %d: VSI id in recvd message (%d) does not match expected id (%d)\0A\00", align 1
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"i40e_aq_set_rss_key status %s, error %s\0A\00", align 1
@I40E_ERR_ADMIN_QUEUE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"VF %d: Programmed key starting with 0x%x ok!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_config_rss_key_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_config_rss_key_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca %struct.virtchnl_rss_key*, align 8
  %11 = alloca %struct.i40e_aqc_get_set_rss_key_data, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 1
  store %struct.i40e_hw* %15, %struct.i40e_hw** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 24
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %21 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %22 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %23 = load i32, i32* @I40E_ERR_PARAM, align 4
  %24 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %20, %struct.ixl_vf* %21, i32 %22, i32 %23)
  br label %191

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.virtchnl_rss_key*
  store %struct.virtchnl_rss_key* %27, %struct.virtchnl_rss_key** %10, align 8
  %28 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %29 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 52
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %34 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %37 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %40 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 52)
  %43 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %44 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %45 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %46 = load i32, i32* @I40E_ERR_PARAM, align 4
  %47 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %43, %struct.ixl_vf* %44, i32 %45, i32 %46)
  br label %191

48:                                               ; preds = %25
  %49 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %50 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %53 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %48
  %58 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %59 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %62 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %65 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %68 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66, i32 %70)
  %72 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %73 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %74 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %75 = load i32, i32* @I40E_ERR_PARAM, align 4
  %76 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %72, %struct.ixl_vf* %73, i32 %74, i32 %75)
  br label %191

77:                                               ; preds = %48
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %79 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @I40E_MAC_X722, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %147

84:                                               ; preds = %77
  %85 = call i32 @bzero(%struct.i40e_aqc_get_set_rss_key_data* %11, i32 8)
  %86 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %87 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sle i32 %88, 40
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %92 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_key_data, %struct.i40e_aqc_get_set_rss_key_data* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %97 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @bcopy(i32* %93, i32 %95, i32 %98)
  br label %118

100:                                              ; preds = %84
  %101 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %102 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_key_data, %struct.i40e_aqc_get_set_rss_key_data* %11, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bcopy(i32* %103, i32 %105, i32 40)
  %107 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %108 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 40
  %111 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_key_data, %struct.i40e_aqc_get_set_rss_key_data* %11, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %114 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 40
  %117 = call i32 @bcopy(i32* %110, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %100, %90
  %119 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %120 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %121 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @i40e_aq_set_rss_key(%struct.i40e_hw* %119, i32 %123, %struct.i40e_aqc_get_set_rss_key_data* %11)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %118
  %128 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %129 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @i40e_stat_str(%struct.i40e_hw* %131, i32 %132)
  %134 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %135 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %136 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @i40e_aq_str(%struct.i40e_hw* %134, i32 %138)
  %140 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %139)
  %141 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %142 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %143 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %144 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_ERROR, align 4
  %145 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %141, %struct.ixl_vf* %142, i32 %143, i32 %144)
  br label %191

146:                                              ; preds = %118
  br label %174

147:                                              ; preds = %77
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %151 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sdiv i32 %152, 4
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %148
  %156 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %159 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @I40E_VFQF_HKEY1(i32 %157, i32 %160)
  %162 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %163 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %156, i32 %161, i32 %168)
  br label %170

170:                                              ; preds = %155
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %148

173:                                              ; preds = %148
  br label %174

174:                                              ; preds = %173, %146
  %175 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %176 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %179 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %10, align 8
  %182 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @DDPRINTF(i32 %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %180, i32 %185)
  %187 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %188 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %189 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %190 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %187, %struct.ixl_vf* %188, i32 %189)
  br label %191

191:                                              ; preds = %174, %127, %57, %32, %19
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @bzero(%struct.i40e_aqc_get_set_rss_key_data*, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @i40e_aq_set_rss_key(%struct.i40e_hw*, i32, %struct.i40e_aqc_get_set_rss_key_data*) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VFQF_HKEY1(i32, i32) #1

declare dso_local i32 @DDPRINTF(i32, i8*, i32, i32) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
