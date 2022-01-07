; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, i32, i64, i64, i8*, i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.dos_partition = type { i64, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.g_part_mbr_table = type { i32 }
%struct.g_part_mbr_entry = type { %struct.dos_partition }

@UINT32_MAX = common dso_local global i32 0, align 4
@NDOSPART = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@DOSPTYP_PMBR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_mbr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_mbr_read(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.dos_partition, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_part_mbr_table*, align 8
  %9 = alloca %struct.g_part_mbr_entry*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %20 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %19, i32 0, i32 0
  %21 = load %struct.g_provider*, %struct.g_provider** %20, align 8
  store %struct.g_provider* %21, %struct.g_provider** %7, align 8
  %22 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %23 = bitcast %struct.g_part_table* %22 to %struct.g_part_mbr_table*
  store %struct.g_part_mbr_table* %23, %struct.g_part_mbr_table** %8, align 8
  %24 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %25 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = load i32, i32* @UINT32_MAX, align 4
  %35 = call i64 @MIN(i32 %33, i32 %34)
  store i64 %35, i64* %13, align 8
  %36 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %37 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8** @g_read_data(%struct.g_consumer* %36, i64 0, i32 %39, i32* %17)
  store i8** %40, i8*** %10, align 8
  %41 = load i8**, i8*** %10, align 8
  %42 = icmp eq i8** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %3, align 4
  br label %213

45:                                               ; preds = %2
  %46 = load i8**, i8*** %10, align 8
  %47 = load %struct.g_part_mbr_table*, %struct.g_part_mbr_table** %8, align 8
  %48 = getelementptr inbounds %struct.g_part_mbr_table, %struct.g_part_mbr_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bcopy(i8** %46, i32 %49, i32 4)
  %51 = load i32, i32* @NDOSPART, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %186, %45
  %54 = load i32, i32* %18, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %189

56:                                               ; preds = %53
  %57 = load i8**, i8*** %10, align 8
  %58 = load i32, i32* @DOSPARTOFF, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @DOSPARTSIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %60, i64 %64
  store i8** %65, i8*** %11, align 8
  %66 = load i8**, i8*** %11, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 9
  store i8* %68, i8** %69, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 8
  store i8* %72, i8** %73, align 8
  %74 = load i8**, i8*** %11, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 7
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 6
  store i8* %80, i8** %81, align 8
  %82 = load i8**, i8*** %11, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 4
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  %87 = load i8**, i8*** %11, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 5
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 5
  store i8* %89, i8** %90, align 8
  %91 = load i8**, i8*** %11, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 6
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = load i8**, i8*** %11, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 7
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 4
  store i8* %98, i8** %99, align 8
  %100 = load i8**, i8*** %11, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 8
  %102 = call i8* @le32dec(i8** %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 2
  store i64 %103, i64* %104, align 8
  %105 = load i8**, i8*** %11, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 12
  %107 = call i8* @le32dec(i8** %106)
  %108 = ptrtoint i8* %107 to i64
  %109 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 3
  store i64 %108, i64* %109, align 8
  %110 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %56
  %114 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DOSPTYP_PMBR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %56
  br label %186

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %119
  br label %186

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 63
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  store i8* %133, i8** %15, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %136 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = icmp ugt i8* %134, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %128
  %141 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %142 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %140
  %146 = load i64, i64* %13, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @g_part_geometry_heads(i64 %146, i8* %147, i64* %12, i8** %16)
  %149 = load i64, i64* %12, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = load i8*, i8** %15, align 8
  %153 = ptrtoint i8* %152 to i64
  %154 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %155 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %158 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %151, %145
  br label %160

160:                                              ; preds = %159, %140, %128
  %161 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %14, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %14, align 8
  br label %168

168:                                              ; preds = %165, %160
  %169 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  %172 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %175, %177
  %179 = sub nsw i64 %178, 1
  %180 = call i64 @g_part_new_entry(%struct.g_part_table* %169, i32 %171, i64 %173, i64 %179)
  %181 = inttoptr i64 %180 to %struct.g_part_mbr_entry*
  store %struct.g_part_mbr_entry* %181, %struct.g_part_mbr_entry** %9, align 8
  %182 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %9, align 8
  %183 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %182, i32 0, i32 0
  %184 = bitcast %struct.dos_partition* %183 to i8*
  %185 = bitcast %struct.dos_partition* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 80, i1 false)
  br label %186

186:                                              ; preds = %168, %127, %118
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %18, align 4
  br label %53

189:                                              ; preds = %53
  %190 = load i32, i32* @NDOSPART, align 4
  %191 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %192 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 8
  %193 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %194 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %197 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  %198 = load i64, i64* %13, align 8
  %199 = sub nsw i64 %198, 1
  %200 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %201 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %200, i32 0, i32 3
  store i64 %199, i64* %201, align 8
  %202 = load i64, i64* %14, align 8
  %203 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %204 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp slt i64 %202, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %189
  %208 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %209 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %208, i32 0, i32 2
  store i64 1, i64* %209, align 8
  br label %210

210:                                              ; preds = %207, %189
  %211 = load i8**, i8*** %10, align 8
  %212 = call i32 @g_free(i8** %211)
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %210, %43
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i8** @g_read_data(%struct.g_consumer*, i64, i32, i32*) #1

declare dso_local i32 @bcopy(i8**, i32, i32) #1

declare dso_local i8* @le32dec(i8**) #1

declare dso_local i32 @g_part_geometry_heads(i64, i8*, i64*, i8**) #1

declare dso_local i64 @g_part_new_entry(%struct.g_part_table*, i32, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @g_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
