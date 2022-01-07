; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_convert_utf8_ipinfo_to_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_kvp.c_hv_kvp_convert_utf8_ipinfo_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.hv_kvp_ip_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i64, i64 }

@MAX_IP_ADDR_SIZE = common dso_local global i32 0, align 4
@MAX_GATEWAY_SIZE = common dso_local global i32 0, align 4
@MAX_ADAPTER_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_kvp_msg*, %struct.hv_kvp_ip_msg*)* @hv_kvp_convert_utf8_ipinfo_to_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kvp_convert_utf8_ipinfo_to_utf16(%struct.hv_kvp_msg* %0, %struct.hv_kvp_ip_msg* %1) #0 {
  %3 = alloca %struct.hv_kvp_msg*, align 8
  %4 = alloca %struct.hv_kvp_ip_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hv_kvp_msg* %0, %struct.hv_kvp_msg** %3, align 8
  store %struct.hv_kvp_ip_msg* %1, %struct.hv_kvp_ip_msg** %4, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %4, align 8
  %12 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %17 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %18 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %24 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @strlen(i8* %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @utf8_to_utf16(i32* %15, i32 %16, i8* %22, i32 %29, i32 %30, i32* %5)
  %32 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %4, align 8
  %33 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %38 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %39 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %45 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @strlen(i8* %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @utf8_to_utf16(i32* %36, i32 %37, i8* %43, i32 %50, i32 %51, i32* %6)
  %53 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %4, align 8
  %54 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %59 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %60 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %66 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @strlen(i8* %70)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @utf8_to_utf16(i32* %57, i32 %58, i8* %64, i32 %71, i32 %72, i32* %7)
  %74 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %4, align 8
  %75 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %80 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %81 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %87 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @strlen(i8* %91)
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @utf8_to_utf16(i32* %78, i32 %79, i8* %85, i32 %92, i32 %93, i32* %8)
  %95 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %4, align 8
  %96 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32, i32* @MAX_ADAPTER_ID_SIZE, align 4
  %101 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %102 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %108 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @strlen(i8* %112)
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @utf8_to_utf16(i32* %99, i32 %100, i8* %106, i32 %113, i32 %114, i32* %9)
  %116 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %117 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %4, align 8
  %122 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %125 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %4, align 8
  %130 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %138, %139
  ret i32 %140
}

declare dso_local i32 @utf8_to_utf16(i32*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
