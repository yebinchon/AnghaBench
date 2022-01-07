; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_setcapturesamplerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_setcapturesamplerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GOF_PER_SEC = common dso_local global i32 0, align 4
@BA1_CSRC = common dso_local global i64 0, align 8
@BA1_CCI = common dso_local global i64 0, align 8
@BA1_CD = common dso_local global i64 0, align 8
@BA1_VARIDEC_BUF_1 = common dso_local global i32 0, align 4
@BA1_CPI = common dso_local global i64 0, align 8
@BA1_CFG1 = common dso_local global i64 0, align 8
@BA1_CFG2 = common dso_local global i64 0, align 8
@BA1_CCST = common dso_local global i64 0, align 8
@BA1_CSPB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @csa_setcapturesamplerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csa_setcapturesamplerate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 48000, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 9
  %17 = load i32, i32* %14, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %186

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %186

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 16
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 7
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 7
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = xor i32 %45, -1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %14, align 4
  %50 = shl i32 %49, 16
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 10
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 10
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %4, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @GOF_PER_SEC, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @GOF_PER_SEC, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %83, 24
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %4, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %11, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load i64, i64* @BA1_CSRC, align 8
  %92 = load i32, i32* %10, align 4
  %93 = shl i32 %92, 16
  %94 = and i32 %93, -65536
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 65535
  %97 = or i32 %94, %96
  %98 = call i32 @csa_writemem(i32* %90, i64 %91, i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* @BA1_CCI, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @csa_writemem(i32* %99, i64 %100, i32 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = load i64, i64* @BA1_CD, align 8
  %105 = load i32, i32* @BA1_VARIDEC_BUF_1, align 4
  %106 = load i32, i32* %11, align 4
  %107 = shl i32 %106, 2
  %108 = add nsw i32 %105, %107
  %109 = shl i32 %108, 16
  %110 = and i32 %109, -65536
  %111 = or i32 %110, 128
  %112 = call i32 @csa_writemem(i32* %103, i64 %104, i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i64, i64* @BA1_CPI, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @csa_writemem(i32* %113, i64 %114, i32 %115)
  store i32 1, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %117

117:                                              ; preds = %132, %25
  %118 = load i32, i32* %13, align 4
  %119 = icmp sle i32 %118, 64
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sdiv i32 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %128, %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %13, align 4
  %134 = mul nsw i32 %133, 2
  store i32 %134, i32* %13, align 4
  br label %117

135:                                              ; preds = %117
  %136 = load i32, i32* %4, align 4
  %137 = sdiv i32 %136, 3
  %138 = mul nsw i32 %137, 3
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %12, align 4
  %143 = mul nsw i32 %142, 3
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %141, %135
  store i32 5, i32* %13, align 4
  br label %145

145:                                              ; preds = %160, %144
  %146 = load i32, i32* %13, align 4
  %147 = icmp sle i32 %146, 125
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %13, align 4
  %151 = sdiv i32 %149, %150
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i32, i32* %12, align 4
  %158 = mul nsw i32 %157, 5
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %156, %148
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = mul nsw i32 %161, 5
  store i32 %162, i32* %13, align 4
  br label %145

163:                                              ; preds = %145
  %164 = load i32*, i32** %3, align 8
  %165 = load i64, i64* @BA1_CFG1, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @csa_writemem(i32* %164, i64 %165, i32 %166)
  %168 = load i32*, i32** %3, align 8
  %169 = load i64, i64* @BA1_CFG2, align 8
  %170 = load i32, i32* %12, align 4
  %171 = or i32 8388608, %170
  %172 = call i32 @csa_writemem(i32* %168, i64 %169, i32 %171)
  %173 = load i32*, i32** %3, align 8
  %174 = load i64, i64* @BA1_CCST, align 8
  %175 = call i32 @csa_writemem(i32* %173, i64 %174, i32 65535)
  %176 = load i32*, i32** %3, align 8
  %177 = load i64, i64* @BA1_CSPB, align 8
  %178 = load i32, i32* %4, align 4
  %179 = mul nsw i32 65536, %178
  %180 = sdiv i32 %179, 24000
  %181 = call i32 @csa_writemem(i32* %176, i64 %177, i32 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = load i64, i64* @BA1_CSPB, align 8
  %184 = add nsw i64 %183, 4
  %185 = call i32 @csa_writemem(i32* %182, i64 %184, i32 65535)
  br label %186

186:                                              ; preds = %163, %24, %19
  ret void
}

declare dso_local i32 @csa_writemem(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
