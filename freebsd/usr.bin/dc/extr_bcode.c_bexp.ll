; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.number = type { i64, i32* }

@.str = private unnamed_addr constant [54 x i8] c"Runtime warning: non-zero fractional part in exponent\00", align 1
@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bexp() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.number*, align 8
  %3 = alloca %struct.number*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = call %struct.number* (...) @pop_number()
  store %struct.number* %14, %struct.number** %2, align 8
  %15 = load %struct.number*, %struct.number** %2, align 8
  %16 = icmp eq %struct.number* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %255

18:                                               ; preds = %0
  %19 = call %struct.number* (...) @pop_number()
  store %struct.number* %19, %struct.number** %1, align 8
  %20 = load %struct.number*, %struct.number** %1, align 8
  %21 = icmp eq %struct.number* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.number*, %struct.number** %2, align 8
  %24 = call i32 @push_number(%struct.number* %23)
  br label %255

25:                                               ; preds = %18
  %26 = load %struct.number*, %struct.number** %2, align 8
  %27 = getelementptr inbounds %struct.number, %struct.number* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = call i32* (...) @BN_new()
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @bn_checkp(i32* %32)
  %34 = call i32* (...) @BN_new()
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @bn_checkp(i32* %35)
  %37 = load %struct.number*, %struct.number** %2, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @split_number(%struct.number* %37, i32* %38, i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @BN_is_zero(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = call i32 @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %30
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @BN_free(i32* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @BN_free(i32* %49)
  br label %51

51:                                               ; preds = %46, %25
  %52 = load %struct.number*, %struct.number** %2, align 8
  %53 = call i32 @normalize(%struct.number* %52, i32 0)
  store i32 0, i32* %4, align 4
  %54 = load %struct.number*, %struct.number** %2, align 8
  %55 = getelementptr inbounds %struct.number, %struct.number* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @BN_is_negative(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  %60 = load %struct.number*, %struct.number** %2, align 8
  %61 = call i32 @negate(%struct.number* %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 4
  store i32 %62, i32* %5, align 4
  br label %100

63:                                               ; preds = %51
  %64 = load %struct.number*, %struct.number** %2, align 8
  %65 = getelementptr inbounds %struct.number, %struct.number* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @BN_get_word(i32* %66)
  store i64 %67, i64* %8, align 8
  %68 = load %struct.number*, %struct.number** %1, align 8
  %69 = getelementptr inbounds %struct.number, %struct.number* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 4
  %72 = call i32 @max(i64 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.number*, %struct.number** %1, align 8
  %74 = getelementptr inbounds %struct.number, %struct.number* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %75, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %97, label %84

84:                                               ; preds = %63
  %85 = load %struct.number*, %struct.number** %1, align 8
  %86 = getelementptr inbounds %struct.number, %struct.number* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @ULONG_MAX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @UINT_MAX, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %89, %63
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %93, %84
  br label %100

100:                                              ; preds = %99, %59
  %101 = load %struct.number*, %struct.number** %2, align 8
  %102 = getelementptr inbounds %struct.number, %struct.number* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @BN_is_zero(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = call %struct.number* (...) @new_number()
  store %struct.number* %107, %struct.number** %3, align 8
  %108 = load %struct.number*, %struct.number** %3, align 8
  %109 = getelementptr inbounds %struct.number, %struct.number* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @BN_one(i32* %110)
  %112 = call i32 @bn_check(i32 %111)
  %113 = load %struct.number*, %struct.number** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @normalize(%struct.number* %113, i32 %114)
  br label %248

116:                                              ; preds = %100
  %117 = load %struct.number*, %struct.number** %1, align 8
  %118 = getelementptr inbounds %struct.number, %struct.number* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %128, %116
  %122 = load %struct.number*, %struct.number** %2, align 8
  %123 = getelementptr inbounds %struct.number, %struct.number* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @BN_is_bit_set(i32* %124, i32 0)
  %126 = icmp ne i64 %125, 0
  %127 = xor i1 %126, true
  br i1 %127, label %128, label %144

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %10, align 4
  %131 = load %struct.number*, %struct.number** %1, align 8
  %132 = load %struct.number*, %struct.number** %1, align 8
  %133 = load %struct.number*, %struct.number** %1, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @bmul_number(%struct.number* %131, %struct.number* %132, %struct.number* %133, i32 %134)
  %136 = load %struct.number*, %struct.number** %2, align 8
  %137 = getelementptr inbounds %struct.number, %struct.number* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.number*, %struct.number** %2, align 8
  %140 = getelementptr inbounds %struct.number, %struct.number* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @BN_rshift1(i32* %138, i32* %141)
  %143 = call i32 @bn_check(i32 %142)
  br label %121

144:                                              ; preds = %121
  %145 = load %struct.number*, %struct.number** %1, align 8
  %146 = call %struct.number* @dup_number(%struct.number* %145)
  store %struct.number* %146, %struct.number** %3, align 8
  %147 = load %struct.number*, %struct.number** %2, align 8
  %148 = getelementptr inbounds %struct.number, %struct.number* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.number*, %struct.number** %2, align 8
  %151 = getelementptr inbounds %struct.number, %struct.number* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @BN_rshift1(i32* %149, i32* %152)
  %154 = call i32 @bn_check(i32 %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %185, %144
  %157 = load %struct.number*, %struct.number** %2, align 8
  %158 = getelementptr inbounds %struct.number, %struct.number* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @BN_is_zero(i32* %159)
  %161 = icmp ne i64 %160, 0
  %162 = xor i1 %161, true
  br i1 %162, label %163, label %194

163:                                              ; preds = %156
  %164 = load i32, i32* %10, align 4
  %165 = mul nsw i32 %164, 2
  store i32 %165, i32* %10, align 4
  %166 = load %struct.number*, %struct.number** %1, align 8
  %167 = load %struct.number*, %struct.number** %1, align 8
  %168 = load %struct.number*, %struct.number** %1, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @bmul_number(%struct.number* %166, %struct.number* %167, %struct.number* %168, i32 %169)
  %171 = load %struct.number*, %struct.number** %2, align 8
  %172 = getelementptr inbounds %struct.number, %struct.number* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call i64 @BN_is_bit_set(i32* %173, i32 0)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %163
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %11, align 4
  %180 = load %struct.number*, %struct.number** %3, align 8
  %181 = load %struct.number*, %struct.number** %3, align 8
  %182 = load %struct.number*, %struct.number** %1, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @bmul_number(%struct.number* %180, %struct.number* %181, %struct.number* %182, i32 %183)
  br label %185

185:                                              ; preds = %176, %163
  %186 = load %struct.number*, %struct.number** %2, align 8
  %187 = getelementptr inbounds %struct.number, %struct.number* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.number*, %struct.number** %2, align 8
  %190 = getelementptr inbounds %struct.number, %struct.number* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @BN_rshift1(i32* %188, i32* %191)
  %193 = call i32 @bn_check(i32 %192)
  br label %156

194:                                              ; preds = %156
  %195 = load i32, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %243

197:                                              ; preds = %194
  %198 = call i32* (...) @BN_new()
  store i32* %198, i32** %13, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = call i32 @bn_checkp(i32* %199)
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @BN_one(i32* %201)
  %203 = call i32 @bn_check(i32 %202)
  %204 = call i32* (...) @BN_CTX_new()
  store i32* %204, i32** %12, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = call i32 @bn_checkp(i32* %205)
  %207 = load i32*, i32** %13, align 8
  %208 = load %struct.number*, %struct.number** %3, align 8
  %209 = getelementptr inbounds %struct.number, %struct.number* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = trunc i64 %213 to i32
  %215 = call i32 @scale_number(i32* %207, i32 %214)
  %216 = load %struct.number*, %struct.number** %3, align 8
  %217 = getelementptr inbounds %struct.number, %struct.number* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = call i64 @BN_is_zero(i32* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %197
  %222 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %234

223:                                              ; preds = %197
  %224 = load %struct.number*, %struct.number** %3, align 8
  %225 = getelementptr inbounds %struct.number, %struct.number* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32*, i32** %13, align 8
  %228 = load %struct.number*, %struct.number** %3, align 8
  %229 = getelementptr inbounds %struct.number, %struct.number* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32*, i32** %12, align 8
  %232 = call i32 @BN_div(i32* %226, i32* null, i32* %227, i32* %230, i32* %231)
  %233 = call i32 @bn_check(i32 %232)
  br label %234

234:                                              ; preds = %223, %221
  %235 = load i32*, i32** %13, align 8
  %236 = call i32 @BN_free(i32* %235)
  %237 = load i32*, i32** %12, align 8
  %238 = call i32 @BN_CTX_free(i32* %237)
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = load %struct.number*, %struct.number** %3, align 8
  %242 = getelementptr inbounds %struct.number, %struct.number* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  br label %247

243:                                              ; preds = %194
  %244 = load %struct.number*, %struct.number** %3, align 8
  %245 = load i32, i32* %5, align 4
  %246 = call i32 @normalize(%struct.number* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %234
  br label %248

248:                                              ; preds = %247, %106
  %249 = load %struct.number*, %struct.number** %3, align 8
  %250 = call i32 @push_number(%struct.number* %249)
  %251 = load %struct.number*, %struct.number** %1, align 8
  %252 = call i32 @free_number(%struct.number* %251)
  %253 = load %struct.number*, %struct.number** %2, align 8
  %254 = call i32 @free_number(%struct.number* %253)
  br label %255

255:                                              ; preds = %248, %22, %17
  ret void
}

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @bn_checkp(i32*) #1

declare dso_local i32 @split_number(%struct.number*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @normalize(%struct.number*, i32) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @negate(%struct.number*) #1

declare dso_local i64 @BN_get_word(i32*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i64 @BN_is_bit_set(i32*, i32) #1

declare dso_local i32 @bmul_number(%struct.number*, %struct.number*, %struct.number*, i32) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local %struct.number* @dup_number(%struct.number*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @scale_number(i32*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @free_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
