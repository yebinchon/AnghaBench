; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_sse42_crc32c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_sse42_crc32c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHORT = common dso_local global i32 0, align 4
@crc32c_short = common dso_local global i32 0, align 4
@crc32c_2short = common dso_local global i32 0, align 4
@LONG = common dso_local global i32 0, align 4
@crc32c_2long = common dso_local global i32 0, align 4
@crc32c_long = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sse42_crc32c(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 8, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %25, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 7
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @_mm_crc32_u8(i32 %26, i8 zeroext %28)
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %6, align 4
  br label %15

34:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SHORT, align 4
  %38 = mul nsw i32 %37, 3
  %39 = icmp uge i32 %36, %38
  br i1 %39, label %40, label %98

40:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @SHORT, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %70, %40
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @_mm_crc32_u64(i32 %46, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @SHORT, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @_mm_crc32_u64(i32 %51, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* @SHORT, align 4
  %62 = mul nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @_mm_crc32_u64(i32 %59, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %45
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %45, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @crc32c_short, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @crc32c_shift(i32 %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = xor i32 %77, %78
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @crc32c_short, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @crc32c_shift(i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @crc32c_2short, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @crc32c_shift(i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = xor i32 %85, %86
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @SHORT, align 4
  %90 = mul nsw i32 %89, 2
  %91 = load i8*, i8** %8, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* @SHORT, align 4
  %95 = mul nsw i32 %94, 3
  %96 = load i32, i32* %6, align 4
  %97 = sub i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %35

98:                                               ; preds = %35
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %10, align 4
  %101 = xor i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = and i64 %106, 7
  %108 = sub i64 %104, %107
  %109 = getelementptr inbounds i8, i8* %102, i64 %108
  store i8* %109, i8** %9, align 8
  br label %110

110:                                              ; preds = %114, %98
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = icmp ult i8* %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @_mm_crc32_u64(i32 %115, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 8
  store i8* %121, i8** %8, align 8
  br label %110

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = and i64 %124, 7
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %130, %122
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @_mm_crc32_u8(i32 %131, i8 zeroext %133)
  store i32 %134, i32* %10, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, -1
  store i32 %138, i32* %6, align 4
  br label %127

139:                                              ; preds = %127
  %140 = load i32, i32* %10, align 4
  ret i32 %140
}

declare dso_local i32 @_mm_crc32_u8(i32, i8 zeroext) #1

declare dso_local i32 @_mm_crc32_u64(i32, i32) #1

declare dso_local i32 @crc32c_shift(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
