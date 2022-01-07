; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_Diag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_Diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TAU32_Diag(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = call i32 @h2LrH3(i32* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64* %16, i64** %7, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %239 [
    i32 1, label %18
    i32 0, label %27
    i32 2, label %37
    i32 3, label %49
    i32 5, label %61
    i32 6, label %71
    i32 4, label %81
    i32 7, label %90
    i32 8, label %103
    i32 9, label %117
    i32 10, label %143
    i32 11, label %169
    i32 12, label %210
  ]

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 -1
  store volatile i64 0, i64* %20, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store volatile i64 65535, i64* %22, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 -1
  store volatile i64 224, i64* %24, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 -1
  store volatile i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %3, %18
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load volatile i64, i64* %29, align 8
  %31 = and i64 %30, 65535
  %32 = load i64*, i64** %7, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 -1
  %34 = load volatile i64, i64* %33, align 8
  %35 = shl i64 %34, 16
  %36 = or i64 %31, %35
  store i64 %36, i64* %8, align 8
  br label %239

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = lshr i64 %38, 16
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 -1
  store volatile i64 %39, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %42, 65535
  %44 = load i64*, i64** %7, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store volatile i64 %43, i64* %45, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load volatile i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  br label %239

49:                                               ; preds = %3
  %50 = load i64, i64* %6, align 8
  %51 = and i64 %50, 65535
  %52 = load i64*, i64** %7, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store volatile i64 %51, i64* %53, align 8
  %54 = load i64, i64* %6, align 8
  %55 = lshr i64 %54, 16
  %56 = load i64*, i64** %7, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 -1
  store volatile i64 %55, i64* %57, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load volatile i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  br label %239

61:                                               ; preds = %3
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = lshr i64 %63, 16
  %65 = and i64 %64, 255
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %6, align 8
  %68 = lshr i64 %67, 8
  %69 = and i64 %68, 255
  %70 = call i32 @AUUSL3(i64* %62, i32 %66, i64 %69)
  br label %239

71:                                               ; preds = %3
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = lshr i64 %73, 16
  %75 = and i64 %74, 255
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %6, align 8
  %78 = lshr i64 %77, 8
  %79 = and i64 %78, 255
  %80 = call i32 @AUUSL3(i64* %72, i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %3, %71
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %6, align 8
  %84 = lshr i64 %83, 16
  %85 = and i64 %84, 255
  %86 = trunc i64 %85 to i32
  %87 = call i32 @RtiEy4(i64* %82, i32 %86)
  %88 = shl i32 %87, 8
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %8, align 8
  br label %239

90:                                               ; preds = %3
  %91 = load i64*, i64** %7, align 8
  %92 = load i64, i64* %6, align 8
  %93 = lshr i64 %92, 16
  %94 = and i64 %93, 255
  %95 = trunc i64 %94 to i32
  %96 = load i64, i64* %6, align 8
  %97 = lshr i64 %96, 8
  %98 = and i64 %97, 255
  %99 = call i32 @AUUSL3(i64* %91, i32 %95, i64 %98)
  %100 = load i64*, i64** %7, align 8
  %101 = call i32 @RtiEy4(i64* %100, i32 5)
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %8, align 8
  br label %239

103:                                              ; preds = %3
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %6, align 8
  %106 = lshr i64 %105, 16
  %107 = and i64 %106, 255
  %108 = trunc i64 %107 to i32
  %109 = load i64, i64* %6, align 8
  %110 = lshr i64 %109, 8
  %111 = and i64 %110, 255
  %112 = call i32 @AUUSL3(i64* %104, i32 %108, i64 %111)
  %113 = load i64*, i64** %7, align 8
  %114 = load i64, i64* %6, align 8
  %115 = and i64 %114, 255
  %116 = call i32 @AUUSL3(i64* %113, i32 5, i64 %115)
  br label %239

117:                                              ; preds = %3
  %118 = load i64*, i64** %7, align 8
  %119 = load i64, i64* %6, align 8
  %120 = lshr i64 %119, 16
  %121 = and i64 %120, 255
  %122 = trunc i64 %121 to i32
  %123 = load i64, i64* %6, align 8
  %124 = lshr i64 %123, 8
  %125 = and i64 %124, 255
  %126 = call i32 @AUUSL3(i64* %118, i32 %122, i64 %125)
  %127 = load i64*, i64** %7, align 8
  %128 = call i32 @RtiEy4(i64* %127, i32 5)
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %8, align 8
  %130 = load i64*, i64** %7, align 8
  %131 = load i64, i64* %6, align 8
  %132 = lshr i64 %131, 16
  %133 = and i64 %132, 255
  %134 = trunc i64 %133 to i32
  %135 = load i64, i64* %6, align 8
  %136 = lshr i64 %135, 8
  %137 = and i64 %136, 255
  %138 = call i32 @AUUSL3(i64* %130, i32 %134, i64 %137)
  %139 = load i64*, i64** %7, align 8
  %140 = load i64, i64* %6, align 8
  %141 = and i64 %140, 255
  %142 = call i32 @AUUSL3(i64* %139, i32 5, i64 %141)
  br label %239

143:                                              ; preds = %3
  %144 = load i64*, i64** %7, align 8
  %145 = load i64, i64* %6, align 8
  %146 = lshr i64 %145, 16
  %147 = and i64 %146, 255
  %148 = trunc i64 %147 to i32
  %149 = load i64, i64* %6, align 8
  %150 = lshr i64 %149, 8
  %151 = and i64 %150, 255
  %152 = call i32 @AUUSL3(i64* %144, i32 %148, i64 %151)
  %153 = load i64*, i64** %7, align 8
  %154 = load i64, i64* %6, align 8
  %155 = and i64 %154, 255
  %156 = call i32 @AUUSL3(i64* %153, i32 5, i64 %155)
  %157 = load i64*, i64** %7, align 8
  %158 = load i64, i64* %6, align 8
  %159 = lshr i64 %158, 16
  %160 = and i64 %159, 255
  %161 = trunc i64 %160 to i32
  %162 = load i64, i64* %6, align 8
  %163 = lshr i64 %162, 8
  %164 = and i64 %163, 255
  %165 = call i32 @AUUSL3(i64* %157, i32 %161, i64 %164)
  %166 = load i64*, i64** %7, align 8
  %167 = call i32 @RtiEy4(i64* %166, i32 5)
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %8, align 8
  br label %239

169:                                              ; preds = %3
  %170 = load i64*, i64** %7, align 8
  %171 = load i64, i64* %6, align 8
  %172 = lshr i64 %171, 16
  %173 = and i64 %172, 255
  %174 = trunc i64 %173 to i32
  %175 = load i64, i64* %6, align 8
  %176 = lshr i64 %175, 8
  %177 = and i64 %176, 255
  %178 = call i32 @AUUSL3(i64* %170, i32 %174, i64 %177)
  %179 = load i64*, i64** %7, align 8
  %180 = load i64, i64* %6, align 8
  %181 = and i64 %180, 255
  %182 = call i32 @AUUSL3(i64* %179, i32 5, i64 %181)
  %183 = load i64*, i64** %7, align 8
  %184 = load i64, i64* %6, align 8
  %185 = lshr i64 %184, 16
  %186 = and i64 %185, 255
  %187 = trunc i64 %186 to i32
  %188 = load i64, i64* %6, align 8
  %189 = lshr i64 %188, 8
  %190 = and i64 %189, 255
  %191 = call i32 @AUUSL3(i64* %183, i32 %187, i64 %190)
  %192 = load i64*, i64** %7, align 8
  %193 = call i32 @RtiEy4(i64* %192, i32 5)
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %8, align 8
  %195 = load i64*, i64** %7, align 8
  %196 = load i64, i64* %6, align 8
  %197 = lshr i64 %196, 16
  %198 = and i64 %197, 255
  %199 = trunc i64 %198 to i32
  %200 = load i64, i64* %6, align 8
  %201 = lshr i64 %200, 8
  %202 = and i64 %201, 255
  %203 = call i32 @AUUSL3(i64* %195, i32 %199, i64 %202)
  %204 = load i64*, i64** %7, align 8
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* %6, align 8
  %207 = and i64 %205, %206
  %208 = and i64 %207, 255
  %209 = call i32 @AUUSL3(i64* %204, i32 5, i64 %208)
  br label %239

210:                                              ; preds = %3
  %211 = load i64, i64* %6, align 8
  %212 = icmp ugt i64 %211, 2097151999
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  br label %215

214:                                              ; preds = %210
  store i64 -1, i64* %8, align 8
  br label %226

215:                                              ; preds = %213
  %216 = load i64, i64* %6, align 8
  store i64 %216, i64* %9, align 8
  %217 = load i64, i64* %9, align 8
  %218 = call { i64, i64 } asm sideeffect "mul $2;add $$2147483648, $0;adc $$0, $1", "={ax},={dx},r,0,~{dirflag},~{fpsr},~{flags}"(i64 206158430, i64 %217) #2, !srcloc !2
  %219 = extractvalue { i64, i64 } %218, 0
  %220 = extractvalue { i64, i64 } %218, 1
  store i64 %219, i64* %9, align 8
  store i64 %220, i64* %8, align 8
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* %6, align 8
  %223 = add i64 %221, %222
  %224 = load i64, i64* %8, align 8
  %225 = add i64 %224, %223
  store i64 %225, i64* %8, align 8
  br label %226

226:                                              ; preds = %215, %214
  %227 = load i64*, i64** %7, align 8
  %228 = load i64, i64* %8, align 8
  %229 = call i32 @LzuvP2(i64* %227, i64 %228)
  %230 = load i64*, i64** %7, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = and i64 %233, -36
  %235 = or i64 %234, 32
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  %238 = call i32 @AUUSL3(i64* %230, i32 0, i64 %235)
  br label %239

239:                                              ; preds = %3, %226, %169, %143, %117, %103, %90, %81, %61, %49, %37, %27
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = call i32 @uYS5N2(i32* %241)
  %243 = load i64, i64* %8, align 8
  ret i64 %243
}

declare dso_local i32 @h2LrH3(i32*) #1

declare dso_local i32 @AUUSL3(i64*, i32, i64) #1

declare dso_local i32 @RtiEy4(i64*, i32) #1

declare dso_local i32 @LzuvP2(i64*, i64) #1

declare dso_local i32 @uYS5N2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2160}
