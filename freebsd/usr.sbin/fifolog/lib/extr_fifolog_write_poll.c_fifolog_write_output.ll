; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_write_poll.c_fifolog_write_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_writer = type { i32*, i32, i32, i32*, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32*, i64 }

@FIFOLOG_FLG_SYNC = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@FIFOLOG_FLG_4BYTE = common dso_local global i32 0, align 4
@FIFOLOG_FLG_1BYTE = common dso_local global i32 0, align 4
@FIFOLOG_PT_BYTES_POST = common dso_local global i64 0, align 8
@FIFOLOG_PT_WRITES = common dso_local global i64 0, align 8
@FIFOLOG_PT_RUNTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fifolog_writer*, i32, i32)* @fifolog_write_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifolog_write_output(%struct.fifolog_writer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fifolog_writer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fifolog_writer* %0, %struct.fifolog_writer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %14 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %13, i32 0, i32 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %21 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = ptrtoint i32* %19 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  store i64 %26, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i64 4, i64* %8, align 8
  %27 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %28 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %31 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @be32enc(i32* %29, i32 %32)
  %34 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %35 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %38 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %8, align 8
  %44 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %45 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FIFOLOG_FLG_SYNC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %3
  %51 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %52 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @be32enc(i32* %55, i32 %56)
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 4
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %50, %3
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %63 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %62, i32 0, i32 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %61, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp sge i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %255

79:                                               ; preds = %60
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %82 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %81, i32 0, i32 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %80, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @Z_NO_FLUSH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %255

92:                                               ; preds = %87, %79
  %93 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %94 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %93, i32 0, i32 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = sub nsw i64 %97, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %101, 255
  br i1 %102, label %103, label %123

103:                                              ; preds = %92
  %104 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %105 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %108 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %107, i32 0, i32 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = getelementptr inbounds i32, i32* %112, i64 -4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @be32enc(i32* %113, i32 %114)
  %116 = load i32, i32* @FIFOLOG_FLG_4BYTE, align 4
  %117 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %118 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %116
  store i32 %122, i32* %120, align 4
  br label %146

123:                                              ; preds = %92
  %124 = load i32, i32* %11, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %129 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %132 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %131, i32 0, i32 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, 1
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  store i32 %127, i32* %137, align 4
  %138 = load i32, i32* @FIFOLOG_FLG_1BYTE, align 4
  %139 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %140 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %126, %123
  br label %146

146:                                              ; preds = %145, %103
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %8, align 8
  %149 = sub nsw i64 %147, %148
  %150 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %151 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @FIFOLOG_PT_BYTES_POST, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %149
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %160 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %159, i32 0, i32 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %165 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %168 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %167, i32 0, i32 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %174 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %179 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %178, i32 0, i32 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = mul nsw i64 %177, %182
  %184 = trunc i64 %183 to i32
  %185 = call i32 @pwrite(i32 %163, i32* %166, i32 %172, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %189 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %188, i32 0, i32 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %187, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %146
  store i32 -1, i32* %12, align 4
  br label %196

195:                                              ; preds = %146
  store i32 1, i32* %12, align 4
  br label %196

196:                                              ; preds = %195, %194
  %197 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %198 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @FIFOLOG_PT_WRITES, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %206 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  %209 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %210 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @FIFOLOG_PT_RUNTIME, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %208, i32* %213, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %216 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  %217 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %218 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %222 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  %225 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %226 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %225, i32 0, i32 2
  store i32 0, i32* %226, align 4
  %227 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %228 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %231 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @memset(i32* %229, i32 0, i64 %232)
  %234 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %235 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 5
  %238 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %239 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %238, i32 0, i32 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  store i32* %237, i32** %243, align 8
  %244 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %245 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %244, i32 0, i32 7
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %246, 5
  %248 = load %struct.fifolog_writer*, %struct.fifolog_writer** %5, align 8
  %249 = getelementptr inbounds %struct.fifolog_writer, %struct.fifolog_writer* %248, i32 0, i32 8
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  store i64 %247, i64* %253, align 8
  %254 = load i32, i32* %12, align 4
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %196, %91, %78
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pwrite(i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
