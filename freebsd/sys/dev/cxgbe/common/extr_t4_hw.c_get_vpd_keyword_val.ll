; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_get_vpd_keyword_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_get_vpd_keyword_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_vpdr_hdr = type { i32, i64* }

@ENOENT = common dso_local global i32 0, align 4
@VPD_LEN = common dso_local global i32 0, align 4
@VPD_INFO_FLD_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i32)* @get_vpd_keyword_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vpd_keyword_val(i64* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.t4_vpdr_hdr*, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %10, align 4
  %13 = load i64*, i64** %5, align 8
  %14 = load i32, i32* %10, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = bitcast i64* %16 to i8*
  %18 = bitcast i8* %17 to %struct.t4_vpdr_hdr*
  store %struct.t4_vpdr_hdr* %18, %struct.t4_vpdr_hdr** %12, align 8
  %19 = load %struct.t4_vpdr_hdr*, %struct.t4_vpdr_hdr** %12, align 8
  %20 = getelementptr inbounds %struct.t4_vpdr_hdr, %struct.t4_vpdr_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.t4_vpdr_hdr*, %struct.t4_vpdr_hdr** %12, align 8
  %23 = getelementptr inbounds %struct.t4_vpdr_hdr, %struct.t4_vpdr_hdr* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.t4_vpdr_hdr*, %struct.t4_vpdr_hdr** %12, align 8
  %29 = getelementptr inbounds %struct.t4_vpdr_hdr, %struct.t4_vpdr_hdr* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 8
  %35 = add nsw i32 %27, %34
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %63, %3
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = add i64 16, %42
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = add i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i64*, i64** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = bitcast i64* %51 to i8*
  %53 = bitcast i8* %52 to %struct.t4_vpdr_hdr*
  store %struct.t4_vpdr_hdr* %53, %struct.t4_vpdr_hdr** %12, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load %struct.t4_vpdr_hdr*, %struct.t4_vpdr_hdr** %12, align 8
  %57 = getelementptr inbounds %struct.t4_vpdr_hdr, %struct.t4_vpdr_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %40
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %131

63:                                               ; preds = %40
  %64 = load %struct.t4_vpdr_hdr*, %struct.t4_vpdr_hdr** %12, align 8
  %65 = getelementptr inbounds %struct.t4_vpdr_hdr, %struct.t4_vpdr_hdr* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.t4_vpdr_hdr*, %struct.t4_vpdr_hdr** %12, align 8
  %71 = getelementptr inbounds %struct.t4_vpdr_hdr, %struct.t4_vpdr_hdr* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 8
  %77 = add nsw i32 %69, %76
  store i32 %77, i32* %11, align 4
  br label %36

78:                                               ; preds = %36
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = add i64 %80, 16
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %83, %84
  %86 = load i32, i32* @VPD_LEN, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %131

91:                                               ; preds = %78
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %114, %91
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @VPD_INFO_FLD_HDR_SIZE, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %97, %98
  %100 = icmp ule i32 %96, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %93
  %102 = load i64*, i64** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @memcmp(i64* %105, i8* %106, i32 2)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load i32, i32* @VPD_INFO_FLD_HDR_SIZE, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %131

114:                                              ; preds = %101
  %115 = load i32, i32* @VPD_INFO_FLD_HDR_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64*, i64** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %116, %122
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  br label %93

128:                                              ; preds = %93
  %129 = load i32, i32* @ENOENT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %109, %88, %60
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
