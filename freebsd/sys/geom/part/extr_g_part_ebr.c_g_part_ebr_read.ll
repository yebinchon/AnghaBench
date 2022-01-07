; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32, i32, i32, i64 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i8* }
%struct.dos_partition = type { i32, i32, i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_ebr_table = type { i32 }
%struct.g_part_ebr_entry = type { %struct.dos_partition }

@UINT32_MAX = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"GEOM: %s: invalid entries in the EBR ignored.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_ebr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ebr_read(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca [2 x %struct.dos_partition], align 16
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_part_entry*, align 8
  %9 = alloca %struct.g_part_ebr_table*, align 8
  %10 = alloca %struct.g_part_ebr_entry*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %17 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %7, align 8
  %20 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %21 = bitcast %struct.g_part_table* %20 to %struct.g_part_ebr_table*
  store %struct.g_part_ebr_table* %21, %struct.g_part_ebr_table** %9, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %24, %27
  %29 = load i32, i32* @UINT32_MAX, align 4
  %30 = call i32 @MIN(i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %2, %124, %173
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %40 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @g_read_data(%struct.g_consumer* %37, i32 %38, i32 %41, i32* %15)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %3, align 4
  br label %191

47:                                               ; preds = %31
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @DOSPARTOFF, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* @DOSPARTSIZE, align 4
  %53 = mul nsw i32 0, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %57 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %56, i64 0
  %58 = call i32 @ebr_entry_decode(i32* %55, %struct.dos_partition* %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @DOSPARTOFF, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @DOSPARTSIZE, align 4
  %64 = mul nsw i32 1, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %68 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %67, i64 1
  %69 = call i32 @ebr_entry_decode(i32* %66, %struct.dos_partition* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* @DOSPARTOFF, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* @DOSPARTSIZE, align 4
  %75 = mul nsw i32 2, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = call i64 @le64dec(i32* %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @DOSPARTOFF, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* @DOSPARTSIZE, align 4
  %84 = mul nsw i32 3, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = call i64 @le64dec(i32* %86)
  %88 = add nsw i64 %78, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %47
  %91 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %92 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %94 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %90, %47
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32*, i32** %11, align 8
  %102 = load %struct.g_part_ebr_table*, %struct.g_part_ebr_table** %9, align 8
  %103 = getelementptr inbounds %struct.g_part_ebr_table, %struct.g_part_ebr_table* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bcopy(i32* %101, i32 %104, i32 4)
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @g_free(i32* %107)
  %109 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %110 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %177

114:                                              ; preds = %106
  %115 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %116 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 16
  %118 = icmp eq i32 %117, 5
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 1
  %121 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %126 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %14, align 4
  br label %31

128:                                              ; preds = %119, %114
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %131 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %129, %132
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  %135 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %140 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  %143 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %144 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %142, %145
  %147 = sub nsw i32 %146, 1
  %148 = call i64 @g_part_new_entry(%struct.g_part_table* %135, i32 %136, i32 %137, i32 %147)
  %149 = inttoptr i64 %148 to %struct.g_part_entry*
  store %struct.g_part_entry* %149, %struct.g_part_entry** %8, align 8
  %150 = load i32, i32* %14, align 4
  %151 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %152 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %150, %153
  %155 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %156 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %154, %157
  %159 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %160 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %162 = bitcast %struct.g_part_entry* %161 to %struct.g_part_ebr_entry*
  store %struct.g_part_ebr_entry* %162, %struct.g_part_ebr_entry** %10, align 8
  %163 = load %struct.g_part_ebr_entry*, %struct.g_part_ebr_entry** %10, align 8
  %164 = getelementptr inbounds %struct.g_part_ebr_entry, %struct.g_part_ebr_entry* %163, i32 0, i32 0
  %165 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 0
  %166 = bitcast %struct.dos_partition* %164 to i8*
  %167 = bitcast %struct.dos_partition* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 16 %167, i64 12, i1 false)
  %168 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 1
  %169 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %128
  br label %177

173:                                              ; preds = %128
  %174 = getelementptr inbounds [2 x %struct.dos_partition], [2 x %struct.dos_partition]* %6, i64 0, i64 1
  %175 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %14, align 4
  br label %31

177:                                              ; preds = %172, %113
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %180 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %178, %181
  %183 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %184 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %186 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %185, i32 0, i32 4
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %187, 1
  %189 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %190 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %177, %45
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @ebr_entry_decode(i32*, %struct.dos_partition*) #1

declare dso_local i64 @le64dec(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i64 @g_part_new_entry(%struct.g_part_table*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
