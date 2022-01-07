; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32 }
%struct.g_part_ebr_table = type { i32 }
%struct.g_part_entry = type { i32, i64, i64 }
%struct.g_part_ebr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i32 0, align 4
@gpe_entry = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_ebr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ebr_write(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_part_ebr_table*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca %struct.g_part_entry*, align 8
  %9 = alloca %struct.g_part_ebr_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %13 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %14 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %13, i32 0, i32 0
  %15 = load %struct.g_provider*, %struct.g_provider** %14, align 8
  store %struct.g_provider* %15, %struct.g_provider** %6, align 8
  %16 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @g_malloc(i32 %18, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %24 = bitcast %struct.g_part_table* %23 to %struct.g_part_ebr_table*
  store %struct.g_part_ebr_table* %24, %struct.g_part_ebr_table** %5, align 8
  %25 = load %struct.g_part_ebr_table*, %struct.g_part_ebr_table** %5, align 8
  %26 = getelementptr inbounds %struct.g_part_ebr_table, %struct.g_part_ebr_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @DOSPARTOFF, align 4
  %30 = call i32 @bcopy(i32 %27, i32* %28, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @DOSMAGICOFFSET, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @DOSMAGIC, align 4
  %36 = call i32 @le16enc(i32* %34, i32 %35)
  %37 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %38 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %37, i32 0, i32 0
  %39 = call %struct.g_part_entry* @LIST_FIRST(i32* %38)
  store %struct.g_part_entry* %39, %struct.g_part_entry** %7, align 8
  br label %40

40:                                               ; preds = %50, %2
  %41 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %42 = icmp ne %struct.g_part_entry* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %45 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %52 = load i32, i32* @gpe_entry, align 4
  %53 = call %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry* %51, i32 %52)
  store %struct.g_part_entry* %53, %struct.g_part_entry** %7, align 8
  br label %40

54:                                               ; preds = %48
  %55 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %56 = icmp eq %struct.g_part_entry* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %61 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @g_write_data(%struct.g_consumer* %58, i32 0, i32* %59, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %235

64:                                               ; preds = %54
  %65 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %66 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %71 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %72 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %75 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* @DOSPARTOFF, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @ebr_entry_link(%struct.g_part_table* %70, i32 %73, i32 %77, i32* %81)
  %83 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %86 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @g_write_data(%struct.g_consumer* %83, i32 0, i32* %84, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %69
  br label %235

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %64
  br label %94

94:                                               ; preds = %232, %93
  %95 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %96 = bitcast %struct.g_part_entry* %95 to %struct.g_part_ebr_entry*
  store %struct.g_part_ebr_entry* %96, %struct.g_part_ebr_entry** %9, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @DOSPARTOFF, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32* %100, i32** %11, align 8
  %101 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %102 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %108 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %114 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %120 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %126 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  store i32 %128, i32* %130, align 4
  %131 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %132 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 5
  store i32 %134, i32* %136, align 4
  %137 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %138 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 6
  store i32 %140, i32* %142, align 4
  %143 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %144 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 7
  store i32 %146, i32* %148, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 8
  %151 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %152 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32enc(i32* %150, i32 %154)
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 12
  %158 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %9, align 8
  %159 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32enc(i32* %157, i32 %161)
  %163 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %164 = load i32, i32* @gpe_entry, align 4
  %165 = call %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry* %163, i32 %164)
  store %struct.g_part_entry* %165, %struct.g_part_entry** %8, align 8
  br label %166

166:                                              ; preds = %176, %94
  %167 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %168 = icmp ne %struct.g_part_entry* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %171 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %169, %166
  %175 = phi i1 [ false, %166 ], [ %173, %169 ]
  br i1 %175, label %176, label %180

176:                                              ; preds = %174
  %177 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %178 = load i32, i32* @gpe_entry, align 4
  %179 = call %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry* %177, i32 %178)
  store %struct.g_part_entry* %179, %struct.g_part_entry** %8, align 8
  br label %166

180:                                              ; preds = %174
  %181 = load i32, i32* @DOSPARTSIZE, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %11, align 8
  %185 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %186 = icmp ne %struct.g_part_entry* %185, null
  br i1 %186, label %187, label %198

187:                                              ; preds = %180
  %188 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %189 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %190 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %193 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @ebr_entry_link(%struct.g_part_table* %188, i32 %191, i32 %195, i32* %196)
  br label %202

198:                                              ; preds = %180
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* @DOSPARTSIZE, align 4
  %201 = call i32 @bzero(i32* %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %187
  %203 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %204 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %205 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %208 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %206, %209
  %211 = load i32*, i32** %10, align 8
  %212 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %213 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @g_write_data(%struct.g_consumer* %203, i32 %210, i32* %211, i32 %214)
  store i32 %215, i32* %12, align 4
  %216 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %217 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %202
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* @DOSPARTOFF, align 4
  %223 = call i32 @bzero(i32* %221, i32 %222)
  br label %224

224:                                              ; preds = %220, %202
  %225 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  store %struct.g_part_entry* %225, %struct.g_part_entry** %7, align 8
  br label %226

226:                                              ; preds = %224
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %231 = icmp ne %struct.g_part_entry* %230, null
  br label %232

232:                                              ; preds = %229, %226
  %233 = phi i1 [ false, %226 ], [ %231, %229 ]
  br i1 %233, label %94, label %234

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %234, %91, %57
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @g_free(i32* %236)
  %238 = load i32, i32* %12, align 4
  ret i32 %238
}

declare dso_local i32* @g_malloc(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local %struct.g_part_entry* @LIST_FIRST(i32*) #1

declare dso_local %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry*, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, i32*, i32) #1

declare dso_local i32 @ebr_entry_link(%struct.g_part_table*, i32, i32, i32*) #1

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
