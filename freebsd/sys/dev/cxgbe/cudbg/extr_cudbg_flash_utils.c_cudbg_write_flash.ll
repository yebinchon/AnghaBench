; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_cudbg_write_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_cudbg_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_private = type { %struct.cudbg_flash_sec_info, %struct.cudbg_init }
%struct.cudbg_flash_sec_info = type { i32, i32, i32, i64 }
%struct.cudbg_init = type { i32 (i8*, i32)*, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_flash_hdr = type { i64, i64 }
%struct.cudbg_buffer = type { i32, i64 }

@CUDBG_MAX_ENTITY = common dso_local global i32 0, align 4
@CUDBG_SF_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\09Writing %u bytes to flash\0A\00", align 1
@CUDBG_FLASH_SIZE = common dso_local global i64 0, align 8
@CUDBG_STATUS_FLASH_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_write_flash(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cudbg_private*, align 8
  %16 = alloca %struct.cudbg_init*, align 8
  %17 = alloca %struct.cudbg_flash_sec_info*, align 8
  %18 = alloca %struct.adapter*, align 8
  %19 = alloca %struct.cudbg_flash_hdr*, align 8
  %20 = alloca %struct.cudbg_buffer*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to %struct.cudbg_private*
  store %struct.cudbg_private* %31, %struct.cudbg_private** %15, align 8
  %32 = load %struct.cudbg_private*, %struct.cudbg_private** %15, align 8
  %33 = getelementptr inbounds %struct.cudbg_private, %struct.cudbg_private* %32, i32 0, i32 1
  store %struct.cudbg_init* %33, %struct.cudbg_init** %16, align 8
  %34 = load %struct.cudbg_private*, %struct.cudbg_private** %15, align 8
  %35 = getelementptr inbounds %struct.cudbg_private, %struct.cudbg_private* %34, i32 0, i32 0
  store %struct.cudbg_flash_sec_info* %35, %struct.cudbg_flash_sec_info** %17, align 8
  %36 = load %struct.cudbg_init*, %struct.cudbg_init** %16, align 8
  %37 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %36, i32 0, i32 1
  %38 = load %struct.adapter*, %struct.adapter** %37, align 8
  store %struct.adapter* %38, %struct.adapter** %18, align 8
  store %struct.cudbg_flash_hdr* null, %struct.cudbg_flash_hdr** %19, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = bitcast i8* %39 to %struct.cudbg_buffer*
  store %struct.cudbg_buffer* %40, %struct.cudbg_buffer** %20, align 8
  store i32 0, i32* %28, align 4
  %41 = load i32, i32* @CUDBG_MAX_ENTITY, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = add i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 16
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* @CUDBG_SF_SECTOR_SIZE, align 4
  %51 = load i32, i32* %22, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %25, align 4
  store i32 %53, i32* %26, align 4
  %54 = load %struct.cudbg_init*, %struct.cudbg_init** %16, align 8
  %55 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %54, i32 0, i32 0
  %56 = load i32 (i8*, i32)*, i32 (i8*, i32)** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 %56(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %20, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @update_headers(i8* %59, %struct.cudbg_buffer* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %7
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %20, align 8
  %74 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %68, %7
  %79 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %80 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %25, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.cudbg_flash_hdr*
  store %struct.cudbg_flash_hdr* %85, %struct.cudbg_flash_hdr** %19, align 8
  %86 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %19, align 8
  %87 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CUDBG_FLASH_SIZE, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* @CUDBG_STATUS_FLASH_FULL, align 4
  store i32 %92, i32* %28, align 4
  br label %198

93:                                               ; preds = %78
  %94 = load i64, i64* @CUDBG_FLASH_SIZE, align 8
  %95 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %19, align 8
  %96 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %27, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %27, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @CUDBG_STATUS_FLASH_FULL, align 4
  store i32 %104, i32* %28, align 4
  br label %198

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %187, %105
  %107 = load i32, i32* %13, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %197

109:                                              ; preds = %106
  %110 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %111 = call i32 @find_empty_sec(%struct.cudbg_flash_sec_info* %110)
  store i32 %111, i32* %29, align 4
  %112 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %113 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %118 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %24, align 4
  %120 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %121 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %122 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @set_sector_availability(%struct.cudbg_flash_sec_info* %120, i32 %123, i32 0)
  %125 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %126 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %128 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  br label %139

129:                                              ; preds = %109
  %130 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %131 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %135 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %19, align 8
  %138 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  store i32 0, i32* %24, align 4
  br label %139

139:                                              ; preds = %129, %116
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %24, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %26, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %24, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %23, align 4
  br label %159

149:                                              ; preds = %139
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %23, align 4
  %151 = load i32, i32* %29, align 4
  %152 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %153 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %24, align 4
  %156 = add nsw i32 %154, %155
  %157 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %158 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %149, %145
  %160 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %161 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = load i32, i32* %24, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %20, align 8
  %169 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i32, i32* %23, align 4
  %176 = call i32 @memcpy(i8* %167, i8* %174, i32 %175)
  %177 = load %struct.adapter*, %struct.adapter** %18, align 8
  %178 = load i32, i32* %29, align 4
  %179 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %180 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @CUDBG_SF_SECTOR_SIZE, align 4
  %183 = call i32 @write_flash(%struct.adapter* %177, i32 %178, i32 %181, i32 %182)
  store i32 %183, i32* %28, align 4
  %184 = load i32, i32* %28, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %159
  br label %198

187:                                              ; preds = %159
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* %13, align 4
  %190 = sub nsw i32 %189, %188
  store i32 %190, i32* %13, align 4
  %191 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %17, align 8
  %192 = load i32, i32* %29, align 4
  %193 = call i32 @set_sector_availability(%struct.cudbg_flash_sec_info* %191, i32 %192, i32 1)
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %11, align 4
  br label %106

197:                                              ; preds = %106
  br label %198

198:                                              ; preds = %197, %186, %103, %91
  %199 = load i32, i32* %28, align 4
  ret i32 %199
}

declare dso_local i32 @update_headers(i8*, %struct.cudbg_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @find_empty_sec(%struct.cudbg_flash_sec_info*) #1

declare dso_local i32 @set_sector_availability(%struct.cudbg_flash_sec_info*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @write_flash(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
