; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_wr_entity_to_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_wr_entity_to_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32 }
%struct.cudbg_private = type { %struct.cudbg_flash_sec_info, %struct.cudbg_init }
%struct.cudbg_flash_sec_info = type { i32 }
%struct.cudbg_init = type { i32 (i8*)*, i64 }

@CUDBG_MAX_ENTITY = common dso_local global i32 0, align 4
@FLASH_CUDBG_NSECS = common dso_local global i32 0, align 4
@CUDBG_FLASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Large entity skipping...\0A\00", align 1
@CUDBG_STATUS_FLASH_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\0A\09FLASH is full... can not write in flash more\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cudbg_buffer*, i32, i32, i32, i32)* @wr_entity_to_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wr_entity_to_flash(i8* %0, %struct.cudbg_buffer* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cudbg_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cudbg_private*, align 8
  %15 = alloca %struct.cudbg_init*, align 8
  %16 = alloca %struct.cudbg_flash_sec_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.cudbg_private*
  store %struct.cudbg_private* %24, %struct.cudbg_private** %14, align 8
  %25 = load %struct.cudbg_private*, %struct.cudbg_private** %14, align 8
  %26 = getelementptr inbounds %struct.cudbg_private, %struct.cudbg_private* %25, i32 0, i32 1
  store %struct.cudbg_init* %26, %struct.cudbg_init** %15, align 8
  %27 = load %struct.cudbg_private*, %struct.cudbg_private** %14, align 8
  %28 = getelementptr inbounds %struct.cudbg_private, %struct.cudbg_private* %27, i32 0, i32 0
  store %struct.cudbg_flash_sec_info* %28, %struct.cudbg_flash_sec_info** %16, align 8
  store i32 4, i32* %18, align 4
  store i32 -1, i32* %22, align 4
  %29 = load i32, i32* @CUDBG_MAX_ENTITY, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* @FLASH_CUDBG_NSECS, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %21, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 4, %37
  %39 = mul i64 %35, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %21, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add i64 %39, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* @CUDBG_FLASH_SIZE, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %6
  %50 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @update_skip_size(%struct.cudbg_flash_sec_info* %50, i32 %51)
  %53 = load %struct.cudbg_init*, %struct.cudbg_init** %15, align 8
  %54 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.cudbg_init*, %struct.cudbg_init** %15, align 8
  %59 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %58, i32 0, i32 0
  %60 = load i32 (i8*)*, i32 (i8*)** %59, align 8
  %61 = call i32 %60(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i32, i32* %22, align 4
  store i32 %63, i32* %7, align 4
  br label %118

64:                                               ; preds = %6
  %65 = load i32, i32* @CUDBG_FLASH_SIZE, align 4
  %66 = load i32, i32* %20, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %16, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @update_skip_size(%struct.cudbg_flash_sec_info* %72, i32 %73)
  %75 = load %struct.cudbg_init*, %struct.cudbg_init** %15, align 8
  %76 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.cudbg_init*, %struct.cudbg_init** %15, align 8
  %81 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %80, i32 0, i32 0
  %82 = load i32 (i8*)*, i32 (i8*)** %81, align 8
  %83 = call i32 %82(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %71
  br label %116

85:                                               ; preds = %64
  store i64 0, i64* %17, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @cudbg_write_flash(i8* %94, i64 %95, %struct.cudbg_buffer* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* @CUDBG_STATUS_FLASH_FULL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %85
  %106 = load %struct.cudbg_init*, %struct.cudbg_init** %15, align 8
  %107 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.cudbg_init*, %struct.cudbg_init** %15, align 8
  %112 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %111, i32 0, i32 0
  %113 = load i32 (i8*)*, i32 (i8*)** %112, align 8
  %114 = call i32 %113(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %110, %105, %85
  br label %116

116:                                              ; preds = %115, %84
  %117 = load i32, i32* %22, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %62
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @update_skip_size(%struct.cudbg_flash_sec_info*, i32) #1

declare dso_local i32 @cudbg_write_flash(i8*, i64, %struct.cudbg_buffer*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
