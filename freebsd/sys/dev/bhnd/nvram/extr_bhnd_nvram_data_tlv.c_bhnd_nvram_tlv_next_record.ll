; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_next_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_next_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }

@NVRAM_TLV_TYPE_END = common dso_local global i32 0, align 4
@NVRAM_TLV_TF_U8_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error reading TLV record size: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"error reading 16-bit TLV record size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"TLV record length %hu truncated by input size of %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64*, i64*, i32*)* @bhnd_nvram_tlv_next_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_tlv_next_record(%struct.bhnd_nvram_io* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_io*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %18 = call i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io* %17)
  store i64 %18, i64* %11, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = load i64*, i64** %8, align 8
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 (%struct.bhnd_nvram_io*, i64, ...) @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %25, i64 %26, i32* %27, i64 4)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %107

33:                                               ; preds = %24
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NVRAM_TLV_TYPE_END, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %5, align 4
  br label %107

43:                                               ; preds = %33
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NVRAM_TLV_TF_U8_LEN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 (%struct.bhnd_nvram_io*, i64, ...) @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %50, i64 %51, [2 x i32]* %13, i64 4)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %107

60:                                               ; preds = %49
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %87

66:                                               ; preds = %43
  %67 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 (%struct.bhnd_nvram_io*, i64, ...) @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %67, i64 %68, [2 x i32]* %13, i64 8)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %5, align 4
  br label %107

77:                                               ; preds = %66
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %80, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 2
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %77, %60
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = sub i64 %92, %93
  %95 = load i64, i64* %10, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91, %87
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %98, i64 %99)
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %5, align 4
  br label %107

102:                                              ; preds = %91
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %103, %104
  %106 = load i64*, i64** %7, align 8
  store i64 %105, i64* %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %102, %97, %72, %55, %40, %31
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io*) #1

declare dso_local i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io*, i64, ...) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
