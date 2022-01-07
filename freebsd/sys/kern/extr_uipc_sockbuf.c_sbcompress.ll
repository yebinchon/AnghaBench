; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbcompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbcompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, i32, i32, i32, %struct.mbuf*, %struct.mbuf*, i32*, %struct.mbuf* }
%struct.mbuf = type { i32, i32, i64, %struct.mbuf* }

@M_EOR = common dso_local global i32 0, align 4
@SB_NOCOALESCE = common dso_local global i32 0, align 4
@M_NOTREADY = common dso_local global i32 0, align 4
@M_NOMAP = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i64 0, align 8
@MT_OOBDATA = common dso_local global i64 0, align 8
@MLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sbcompress: eor && n == NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbcompress(%struct.sockbuf* %0, %struct.mbuf* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %10 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %9)
  br label %11

11:                                               ; preds = %225, %184, %57, %3
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %13 = icmp ne %struct.mbuf* %12, null
  br i1 %13, label %14, label %244

14:                                               ; preds = %11
  %15 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @M_EOR, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %14
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 3
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  store %struct.mbuf* %32, %struct.mbuf** %8, align 8
  %33 = icmp ne %struct.mbuf* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %35, %struct.mbuf** %8, align 8
  %36 = icmp ne %struct.mbuf* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %34, %29
  %38 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %37, %26
  %46 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %47 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %46, i32 0, i32 7
  %48 = load %struct.mbuf*, %struct.mbuf** %47, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = icmp eq %struct.mbuf* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 3
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  %55 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %56 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %55, i32 0, i32 7
  store %struct.mbuf* %54, %struct.mbuf** %56, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %59 = call %struct.mbuf* @m_free(%struct.mbuf* %58)
  store %struct.mbuf* %59, %struct.mbuf** %5, align 8
  br label %11

60:                                               ; preds = %37, %34, %14
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = icmp ne %struct.mbuf* %61, null
  br i1 %62, label %63, label %187

63:                                               ; preds = %60
  %64 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @M_EOR, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %187

70:                                               ; preds = %63
  %71 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %72 = call i64 @M_WRITABLE(%struct.mbuf* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %187

74:                                               ; preds = %70
  %75 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %76 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SB_NOCOALESCE, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %187

81:                                               ; preds = %74
  %82 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @M_NOTREADY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %187, label %88

88:                                               ; preds = %81
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @M_NOTREADY, align 4
  %93 = load i32, i32* @M_NOMAP, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %187, label %97

97:                                               ; preds = %88
  %98 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %99 = call i32 @mbuf_has_tls_session(%struct.mbuf* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %187, label %101

101:                                              ; preds = %97
  %102 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %103 = call i32 @mbuf_has_tls_session(%struct.mbuf* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %187, label %105

105:                                              ; preds = %101
  %106 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MCLBYTES, align 4
  %110 = sdiv i32 %109, 4
  %111 = icmp sle i32 %108, %110
  br i1 %111, label %112, label %187

112:                                              ; preds = %105
  %113 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %114 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %117 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %116)
  %118 = icmp sle i32 %115, %117
  br i1 %118, label %119, label %187

119:                                              ; preds = %112
  %120 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %187

127:                                              ; preds = %119
  %128 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %129 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %130 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @mtodo(%struct.mbuf* %132, i32 %135)
  %137 = call i32 @m_copydata(%struct.mbuf* %128, i32 0, i32 %131, i32 %136)
  %138 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %139 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %142 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %146 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %149 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %153 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %127
  %157 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %161 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %156, %127
  %165 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MT_DATA, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %172 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @MT_OOBDATA, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  %177 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %178 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %181 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %176, %170, %164
  %185 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %186 = call %struct.mbuf* @m_free(%struct.mbuf* %185)
  store %struct.mbuf* %186, %struct.mbuf** %5, align 8
  br label %11

187:                                              ; preds = %119, %112, %105, %101, %97, %88, %81, %74, %70, %63, %60
  %188 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %189 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @MLEN, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  %194 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %195 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @M_NOMAP, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %193
  %201 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %202 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @M_NOTREADY, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %209 = call i32 @mbuf_has_tls_session(%struct.mbuf* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %213 = call i32 @mb_unmapped_compress(%struct.mbuf* %212)
  br label %214

214:                                              ; preds = %211, %207, %200, %193, %187
  %215 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %216 = icmp ne %struct.mbuf* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %219 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %220 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %219, i32 0, i32 3
  store %struct.mbuf* %218, %struct.mbuf** %220, align 8
  br label %225

221:                                              ; preds = %214
  %222 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %223 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %224 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %223, i32 0, i32 5
  store %struct.mbuf* %222, %struct.mbuf** %224, align 8
  br label %225

225:                                              ; preds = %221, %217
  %226 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %227 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %228 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %227, i32 0, i32 4
  store %struct.mbuf* %226, %struct.mbuf** %228, align 8
  %229 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %230 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %231 = call i32 @sballoc(%struct.sockbuf* %229, %struct.mbuf* %230)
  %232 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %232, %struct.mbuf** %6, align 8
  %233 = load i32, i32* @M_EOR, align 4
  %234 = xor i32 %233, -1
  %235 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %236 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %240 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %239, i32 0, i32 3
  %241 = load %struct.mbuf*, %struct.mbuf** %240, align 8
  store %struct.mbuf* %241, %struct.mbuf** %5, align 8
  %242 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %243 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %242, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %243, align 8
  br label %11

244:                                              ; preds = %11
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %244
  %248 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %249 = icmp ne %struct.mbuf* %248, null
  %250 = zext i1 %249 to i32
  %251 = call i32 @KASSERT(i32 %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %252 = load i32, i32* %7, align 4
  %253 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %254 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %247, %244
  %258 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %259 = call i32 @SBLASTMBUFCHK(%struct.sockbuf* %258)
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

declare dso_local i64 @M_WRITABLE(%struct.mbuf*) #1

declare dso_local i32 @mbuf_has_tls_session(%struct.mbuf*) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @mtodo(%struct.mbuf*, i32) #1

declare dso_local i32 @mb_unmapped_compress(%struct.mbuf*) #1

declare dso_local i32 @sballoc(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SBLASTMBUFCHK(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
