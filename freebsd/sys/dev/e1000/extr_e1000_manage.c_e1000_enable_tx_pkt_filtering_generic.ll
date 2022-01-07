; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_enable_tx_pkt_filtering_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_enable_tx_pkt_filtering_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_host_mng_dhcp_cookie }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_host_mng_dhcp_cookie = type { i64, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"e1000_enable_tx_pkt_filtering_generic\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_MNG_DHCP_COOKIE_LENGTH = common dso_local global i32 0, align 4
@E1000_MNG_DHCP_COOKIE_OFFSET = common dso_local global i32 0, align 4
@E1000_HOST_IF = common dso_local global i32 0, align 4
@E1000_IAMT_SIGNATURE = common dso_local global i64 0, align 8
@E1000_MNG_DHCP_COOKIE_STATUS_PARSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_enable_tx_pkt_filtering_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_host_mng_dhcp_cookie*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_host_mng_dhcp_cookie* %13, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = bitcast %struct.e1000_host_mng_dhcp_cookie* %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** @TRUE, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %26, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = bitcast %struct.e1000_hw* %28 to %struct.e1000_hw.0*
  %30 = call i32 %27(%struct.e1000_hw.0* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %1
  %33 = load i8*, i8** @FALSE, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %2, align 4
  br label %128

42:                                               ; preds = %1
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = call i64 @e1000_mng_enable_host_if_generic(%struct.e1000_hw* %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @E1000_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i8*, i8** @FALSE, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %2, align 4
  br label %128

58:                                               ; preds = %42
  %59 = load i32, i32* @E1000_MNG_DHCP_COOKIE_LENGTH, align 4
  %60 = ashr i32 %59, 2
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @E1000_MNG_DHCP_COOKIE_OFFSET, align 4
  %62 = ashr i32 %61, 2
  store i32 %62, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %78, %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = load i32, i32* @E1000_HOST_IF, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @E1000_READ_REG_ARRAY_DWORD(%struct.e1000_hw* %68, i32 %69, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %83 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  %85 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %88 = bitcast %struct.e1000_host_mng_dhcp_cookie* %87 to i32*
  %89 = load i32, i32* @E1000_MNG_DHCP_COOKIE_LENGTH, align 4
  %90 = call i64 @e1000_calculate_checksum(i32* %88, i32 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %81
  %95 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %96 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @E1000_IAMT_SIGNATURE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94, %81
  %101 = load i8*, i8** @TRUE, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %2, align 4
  br label %128

110:                                              ; preds = %94
  %111 = load %struct.e1000_host_mng_dhcp_cookie*, %struct.e1000_host_mng_dhcp_cookie** %4, align 8
  %112 = getelementptr inbounds %struct.e1000_host_mng_dhcp_cookie, %struct.e1000_host_mng_dhcp_cookie* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_PARSING, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %110
  %118 = load i8*, i8** @FALSE, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  br label %123

123:                                              ; preds = %117, %110
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %100, %48, %32
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_mng_enable_host_if_generic(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG_ARRAY_DWORD(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_calculate_checksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
