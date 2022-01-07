; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_convert_usermsg_to_hostmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_convert_usermsg_to_hostmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_msg = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.hv_kvp_exchg_msg_value }
%struct.hv_kvp_exchg_msg_value = type { i8*, i32, i32, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_7__ = type { %struct.hv_kvp_exchg_msg_value }
%struct.TYPE_6__ = type { i32 }
%struct.hv_kvp_ip_msg = type { i32 }

@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@HV_REG_SZ = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_kvp_msg*, %struct.hv_kvp_msg*)* @hv_kvp_convert_usermsg_to_hostmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kvp_convert_usermsg_to_hostmsg(%struct.hv_kvp_msg* %0, %struct.hv_kvp_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_kvp_msg*, align 8
  %5 = alloca %struct.hv_kvp_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hv_kvp_exchg_msg_value*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hv_kvp_ip_msg*, align 8
  store %struct.hv_kvp_msg* %0, %struct.hv_kvp_msg** %4, align 8
  store %struct.hv_kvp_msg* %1, %struct.hv_kvp_msg** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %14 = bitcast %struct.hv_kvp_msg* %13 to %struct.hv_kvp_ip_msg*
  store %struct.hv_kvp_ip_msg* %14, %struct.hv_kvp_ip_msg** %12, align 8
  %15 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %16 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %123 [
    i32 130, label %19
    i32 128, label %23
    i32 129, label %23
    i32 133, label %23
    i32 132, label %24
    i32 131, label %86
  ]

19:                                               ; preds = %2
  %20 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %21 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %12, align 8
  %22 = call i32 @hv_kvp_convert_utf8_ipinfo_to_utf16(%struct.hv_kvp_msg* %20, %struct.hv_kvp_ip_msg* %21)
  store i32 %22, i32* %3, align 4
  br label %125

23:                                               ; preds = %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %125

24:                                               ; preds = %2
  %25 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %26 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.hv_kvp_exchg_msg_value* %28, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %29 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %30 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %36 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %40 = sdiv i32 %39, 2
  %41 = sub nsw i32 %40, 2
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @utf8_to_utf16(i32* %38, i32 %41, i8* %42, i32 %44, i32 1, i32* %8)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 2, %47
  %49 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %50 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %52 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %11, align 8
  %58 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %59 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %64 = sdiv i32 %63, 2
  %65 = sub nsw i32 %64, 2
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i32 @utf8_to_utf16(i32* %62, i32 %65, i8* %66, i32 %68, i32 1, i32* %8)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  %72 = mul nsw i32 2, %71
  %73 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %74 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** @HV_REG_SZ, align 8
  %76 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %77 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %24
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %24
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %3, align 4
  br label %125

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %125

86:                                               ; preds = %2
  %87 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %88 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store %struct.hv_kvp_exchg_msg_value* %90, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %91 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %92 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %11, align 8
  %98 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %99 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %104 = sdiv i32 %103, 2
  %105 = sub nsw i32 %104, 2
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = call i32 @utf8_to_utf16(i32* %102, i32 %105, i8* %106, i32 %108, i32 1, i32* %8)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  %112 = mul nsw i32 2, %111
  %113 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %114 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load i8*, i8** @HV_REG_SZ, align 8
  %116 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %9, align 8
  %117 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %86
  %121 = load i32, i32* @EINVAL, align 4
  store i32 %121, i32* %3, align 4
  br label %125

122:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %125

123:                                              ; preds = %2
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %122, %120, %85, %83, %23, %19
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @hv_kvp_convert_utf8_ipinfo_to_utf16(%struct.hv_kvp_msg*, %struct.hv_kvp_ip_msg*) #1

declare dso_local i32 @utf8_to_utf16(i32*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
