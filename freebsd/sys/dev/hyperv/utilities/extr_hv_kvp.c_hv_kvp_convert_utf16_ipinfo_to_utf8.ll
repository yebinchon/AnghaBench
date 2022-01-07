; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_convert_utf16_ipinfo_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_convert_utf16_ipinfo_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_ip_msg = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i64, i64 }
%struct.hv_kvp_msg = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.vmbus_channel = type { i32 }

@MAX_IP_ADDR_SIZE = common dso_local global i32 0, align 4
@MAX_ADAPTER_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"hn\00", align 1
@HYPERV_GUID_STRLEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@MAX_GATEWAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_kvp_ip_msg*, %struct.hv_kvp_msg*)* @hv_kvp_convert_utf16_ipinfo_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kvp_convert_utf16_ipinfo_to_utf8(%struct.hv_kvp_ip_msg* %0, %struct.hv_kvp_msg* %1) #0 {
  %3 = alloca %struct.hv_kvp_ip_msg*, align 8
  %4 = alloca %struct.hv_kvp_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmbus_channel*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hv_kvp_ip_msg* %0, %struct.hv_kvp_ip_msg** %3, align 8
  store %struct.hv_kvp_msg* %1, %struct.hv_kvp_msg** %4, align 8
  store i32 1, i32* %10, align 4
  %19 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %20 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %26 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %27 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @utf16_to_utf8(i8* %24, i32 %25, i32* %30, i32 %31, i32 %32, i32* %5)
  %34 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %35 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* @MAX_ADAPTER_ID_SIZE, align 4
  %41 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %42 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* @MAX_ADAPTER_ID_SIZE, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @utf16_to_utf8(i8* %39, i32 %40, i32* %45, i32 %46, i32 %47, i32* %9)
  %49 = call i32 @devclass_find(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %50 = call i64 @devclass_get_devices(i32 %49, i32** %11, i32* %12)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %106

52:                                               ; preds = %2
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %99, %52
  %56 = load i32, i32* %12, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %55
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* @HYPERV_GUID_STRLEN, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %15, align 8
  %67 = alloca i8, i64 %65, align 16
  store i64 %65, i64* %16, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.vmbus_channel* @vmbus_get_channel(i32 %68)
  store %struct.vmbus_channel* %69, %struct.vmbus_channel** %14, align 8
  %70 = load %struct.vmbus_channel*, %struct.vmbus_channel** %14, align 8
  %71 = call i32 @vmbus_chan_guid_inst(%struct.vmbus_channel* %70)
  %72 = trunc i64 %65 to i32
  %73 = call i32 @hyperv_guid2str(i32 %71, i8* %67, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %75 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = bitcast i64* %77 to i8*
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i32, i32* %17, align 4
  %81 = call i64 @strncmp(i8* %67, i8* %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %58
  %84 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %85 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @device_get_nameunit(i32 %90)
  %92 = load i32, i32* @MAX_ADAPTER_ID_SIZE, align 4
  %93 = call i32 @strlcpy(i8* %89, i32 %91, i32 %92)
  store i32 2, i32* %18, align 4
  br label %95

94:                                               ; preds = %58
  store i32 0, i32* %18, align 4
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %18, align 4
  switch i32 %97, label %183 [
    i32 0, label %98
    i32 2, label %102
  ]

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %12, align 4
  br label %55

102:                                              ; preds = %95, %55
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* @M_TEMP, align 4
  %105 = call i32 @free(i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %2
  %107 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %108 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %111 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %114 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %118 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  store i32 %116, i32* %120, align 4
  %121 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %122 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %126 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  store i32 %124, i32* %128, align 8
  %129 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %130 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %136 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %137 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i32*
  %141 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @utf16_to_utf8(i8* %134, i32 %135, i32* %140, i32 %141, i32 %142, i32* %6)
  %144 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %145 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %151 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %152 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  %156 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @utf16_to_utf8(i8* %149, i32 %150, i32* %155, i32 %156, i32 %157, i32* %7)
  %159 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %160 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %166 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %3, align 8
  %167 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @utf16_to_utf8(i8* %164, i32 %165, i32* %170, i32 %171, i32 %172, i32* %8)
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %6, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %7, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %8, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %9, align 4
  %182 = or i32 %180, %181
  ret i32 %182

183:                                              ; preds = %95
  unreachable
}

declare dso_local i32 @utf16_to_utf8(i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @devclass_get_devices(i32, i32**, i32*) #1

declare dso_local i32 @devclass_find(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.vmbus_channel* @vmbus_get_channel(i32) #1

declare dso_local i32 @hyperv_guid2str(i32, i8*, i32) #1

declare dso_local i32 @vmbus_chan_guid_inst(%struct.vmbus_channel*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
