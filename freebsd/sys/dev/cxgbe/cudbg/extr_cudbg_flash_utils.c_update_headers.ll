; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_update_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_update_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i64 }
%struct.cudbg_private = type { %struct.cudbg_flash_sec_info }
%struct.cudbg_flash_sec_info = type { i32, i8* }
%struct.cudbg_hdr = type { i32 }
%struct.cudbg_flash_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cudbg_entity_hdr = type { i32 }

@CUDBG_MAX_ENTITY = common dso_local global i32 0, align 4
@CUDBG_SF_SECTOR_SIZE = common dso_local global i32 0, align 4
@CUDBG_FL_SIGNATURE = common dso_local global i32 0, align 4
@CUDBG_FL_MAJOR_VERSION = common dso_local global i32 0, align 4
@CUDBG_FL_MINOR_VERSION = common dso_local global i32 0, align 4
@CUDBG_FL_BUILD_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cudbg_buffer*, i32, i32, i32, i32)* @update_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_headers(i8* %0, %struct.cudbg_buffer* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cudbg_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cudbg_private*, align 8
  %14 = alloca %struct.cudbg_flash_sec_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.cudbg_hdr*, align 8
  %17 = alloca %struct.cudbg_flash_hdr*, align 8
  %18 = alloca %struct.cudbg_entity_hdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.cudbg_private*
  store %struct.cudbg_private* %24, %struct.cudbg_private** %13, align 8
  %25 = load %struct.cudbg_private*, %struct.cudbg_private** %13, align 8
  %26 = getelementptr inbounds %struct.cudbg_private, %struct.cudbg_private* %25, i32 0, i32 0
  store %struct.cudbg_flash_sec_info* %26, %struct.cudbg_flash_sec_info** %14, align 8
  %27 = load i32, i32* @CUDBG_MAX_ENTITY, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 28
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* @CUDBG_SF_SECTOR_SIZE, align 4
  %37 = load i32, i32* %21, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %22, align 4
  %39 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %14, align 8
  %40 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %22, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = bitcast i8* %45 to %struct.cudbg_flash_hdr*
  store %struct.cudbg_flash_hdr* %46, %struct.cudbg_flash_hdr** %17, align 8
  %47 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.cudbg_hdr*
  store %struct.cudbg_hdr* %50, %struct.cudbg_hdr** %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %14, align 8
  %53 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  %56 = load i32, i32* %20, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %6
  %59 = load i32, i32* @CUDBG_FL_SIGNATURE, align 4
  %60 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %61 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @CUDBG_FL_MAJOR_VERSION, align 4
  %63 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %64 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @CUDBG_FL_MINOR_VERSION, align 4
  %66 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %67 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @CUDBG_FL_BUILD_VERSION, align 4
  %69 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %70 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %72 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %71, i32 0, i32 0
  store i32 28, i32* %72, align 4
  store i32 28, i32* %19, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %78 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* %20, align 4
  %82 = call i32 @memcpy(i8* %76, i8* %80, i32 %81)
  br label %97

83:                                               ; preds = %6
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 28
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %90 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = call i32 @memcpy(i8* %88, i8* %95, i32 4)
  br label %97

97:                                               ; preds = %83, %58
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 28
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %19, align 4
  %102 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %16, align 8
  %103 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %14, align 8
  %106 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %104, %107
  %109 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %110 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %113 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 28
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = bitcast i8* %118 to %struct.cudbg_entity_hdr*
  store %struct.cudbg_entity_hdr* %119, %struct.cudbg_entity_hdr** %18, align 8
  %120 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %14, align 8
  %121 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %18, align 8
  %124 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 28
  %129 = bitcast i8* %128 to %struct.cudbg_hdr*
  store %struct.cudbg_hdr* %129, %struct.cudbg_hdr** %16, align 8
  %130 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %131 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %16, align 8
  %134 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.cudbg_flash_hdr*, %struct.cudbg_flash_hdr** %17, align 8
  %137 = getelementptr inbounds %struct.cudbg_flash_hdr, %struct.cudbg_flash_hdr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
