; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_gsb_crc32.c_crc32c_sb8_64_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_gsb_crc32.c_crc32c_sb8_64_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sctp_crc_tableil8_o32 = common dso_local global i32* null, align 8
@sctp_crc_tableil8_o88 = common dso_local global i32* null, align 8
@sctp_crc_tableil8_o80 = common dso_local global i32* null, align 8
@sctp_crc_tableil8_o72 = common dso_local global i32* null, align 8
@sctp_crc_tableil8_o64 = common dso_local global i32* null, align 8
@sctp_crc_tableil8_o56 = common dso_local global i32* null, align 8
@sctp_crc_tableil8_o48 = common dso_local global i32* null, align 8
@sctp_crc_tableil8_o40 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @crc32c_sb8_64_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32c_sb8_64_bit(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %14, %15
  %17 = call i32 @rounddown(i32 %16, i32 8)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %42, %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32*, i32** @sctp_crc_tableil8_o32, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %29, %33
  %35 = and i32 %34, 255
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %28, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 8
  %41 = xor i32 %38, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %23

45:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %147, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sdiv i32 %48, 8
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %150

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = xor i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  %60 = load i8, i8* %58, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %5, align 4
  %64 = xor i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 16
  %70 = load i32, i32* %5, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 24
  %77 = load i32, i32* %5, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32*, i32** @sctp_crc_tableil8_o88, align 8
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 255
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** @sctp_crc_tableil8_o80, align 8
  %86 = load i32, i32* %5, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %84, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %5, align 4
  %94 = ashr i32 %93, 16
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32*, i32** @sctp_crc_tableil8_o72, align 8
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 255
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %95, %101
  %103 = load i32*, i32** @sctp_crc_tableil8_o64, align 8
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %102, %109
  store i32 %110, i32* %5, align 4
  %111 = load i32*, i32** @sctp_crc_tableil8_o56, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %6, align 8
  %114 = load i8, i8* %112, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = xor i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load i32*, i32** @sctp_crc_tableil8_o48, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  %123 = load i8, i8* %121, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = xor i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load i32*, i32** @sctp_crc_tableil8_o40, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %6, align 8
  %132 = load i8, i8* %130, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %5, align 4
  %137 = xor i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load i32*, i32** @sctp_crc_tableil8_o32, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  %141 = load i8, i8* %139, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %5, align 4
  %146 = xor i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %51
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %46

150:                                              ; preds = %46
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %170, %150
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = load i32*, i32** @sctp_crc_tableil8_o32, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %6, align 8
  %160 = load i8, i8* %158, align 1
  %161 = zext i8 %160 to i32
  %162 = xor i32 %157, %161
  %163 = and i32 %162, 255
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %156, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = ashr i32 %167, 8
  %169 = xor i32 %166, %168
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %155
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %151

173:                                              ; preds = %151
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @rounddown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
