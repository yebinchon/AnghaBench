; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_packer.c_ib_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_packer.c_ib_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_field = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Structure field %s of size %d bits is not byte-aligned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_unpack(%struct.ib_field* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ib_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.ib_field* %0, %struct.ib_field** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %236, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %239

22:                                               ; preds = %18
  %23 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %23, i64 %25
  %27 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %236

31:                                               ; preds = %22
  %32 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %32, i64 %34
  %36 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 32
  br i1 %38, label %39, label %98

39:                                               ; preds = %31
  %40 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %40, i64 %42
  %44 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 32, %45
  %47 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %47, i64 %49
  %51 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %46, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %54, i64 %56
  %58 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = sub i64 %61, 1
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %69, i64 %71
  %73 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %68, i64 %75
  store i32* %76, i32** %13, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @be32_to_cpup(i32* %77)
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %11, align 4
  %83 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %83, i64 %85
  %87 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %89, i64 %91
  %93 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @value_write(i32 %88, i32 %94, i32 %95, i8* %96)
  br label %235

98:                                               ; preds = %31
  %99 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %99, i64 %101
  %103 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %104, 64
  br i1 %105, label %106, label %165

106:                                              ; preds = %98
  %107 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %107, i64 %109
  %111 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 64, %112
  %114 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %114, i64 %116
  %118 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %113, %119
  store i32 %120, i32* %14, align 4
  %121 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %121, i64 %123
  %125 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 64, %126
  %128 = zext i32 %127 to i64
  %129 = lshr i64 -1, %128
  %130 = load i32, i32* %14, align 4
  %131 = zext i32 %130 to i64
  %132 = shl i64 %129, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %16, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %136, i64 %138
  %140 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %135, i64 %142
  store i32* %143, i32** %17, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = call i32 @be64_to_cpup(i32* %144)
  %146 = load i32, i32* %16, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* %14, align 4
  %149 = ashr i32 %147, %148
  store i32 %149, i32* %15, align 4
  %150 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %150, i64 %152
  %154 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %156, i64 %158
  %160 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @value_write(i32 %155, i32 %161, i32 %162, i8* %163)
  br label %234

165:                                              ; preds = %98
  %166 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %166, i64 %168
  %170 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = srem i32 %171, 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %165
  %175 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %175, i64 %177
  %179 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = srem i32 %180, 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %174, %165
  %184 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %184, i64 %186
  %188 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %190, i64 %192
  %194 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %189, i32 %195)
  br label %197

197:                                              ; preds = %183, %174
  %198 = load i8*, i8** %8, align 8
  %199 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %199, i64 %201
  %203 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %198, i64 %205
  %207 = load i8*, i8** %7, align 8
  %208 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %208, i64 %210
  %212 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %213, 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %207, i64 %215
  %217 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %217, i64 %219
  %221 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sdiv i32 %222, 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %216, i64 %224
  %226 = load %struct.ib_field*, %struct.ib_field** %5, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %226, i64 %228
  %230 = getelementptr inbounds %struct.ib_field, %struct.ib_field* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sdiv i32 %231, 8
  %233 = call i32 @memcpy(i8* %206, i8* %225, i32 %232)
  br label %234

234:                                              ; preds = %197, %106
  br label %235

235:                                              ; preds = %234, %39
  br label %236

236:                                              ; preds = %235, %30
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %18

239:                                              ; preds = %18
  ret void
}

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @value_write(i32, i32, i32, i8*) #1

declare dso_local i32 @be64_to_cpup(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
