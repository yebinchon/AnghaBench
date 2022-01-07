; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_next_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_next_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_tlv_env = type { i32 }
%struct.bhnd_nvram_tlv = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"unexpected error in next_record(): %d\0A\00", align 1
@NVRAM_TLV_TYPE_ENV = common dso_local global i64 0, align 8
@NVRAM_TLV_TYPE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhnd_nvram_tlv_env* (%struct.bhnd_nvram_tlv*, i64*, i8**)* @bhnd_nvram_tlv_next_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhnd_nvram_tlv_env* @bhnd_nvram_tlv_next_env(%struct.bhnd_nvram_tlv* %0, i64* %1, i8** %2) #0 {
  %4 = alloca %struct.bhnd_nvram_tlv_env*, align 8
  %5 = alloca %struct.bhnd_nvram_tlv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.bhnd_nvram_tlv* %0, %struct.bhnd_nvram_tlv** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  br label %12

12:                                               ; preds = %41, %3
  %13 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %5, align 8
  %14 = getelementptr inbounds %struct.bhnd_nvram_tlv, %struct.bhnd_nvram_tlv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = call i32 @bhnd_nvram_tlv_next_record(i32 %15, i64* %16, i64* %11, i64* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.bhnd_nvram_tlv_env* null, %struct.bhnd_nvram_tlv_env** %4, align 8
  br label %46

23:                                               ; preds = %12
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @NVRAM_TLV_TYPE_ENV, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %41

28:                                               ; preds = %23
  %29 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %5, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i8* @bhnd_nvram_tlv_to_cookie(%struct.bhnd_nvram_tlv* %29, i64 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %5, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call %struct.bhnd_nvram_tlv_env* @bhnd_nvram_tlv_get_env(%struct.bhnd_nvram_tlv* %38, i8* %39)
  store %struct.bhnd_nvram_tlv_env* %40, %struct.bhnd_nvram_tlv_env** %4, align 8
  br label %46

41:                                               ; preds = %27
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @NVRAM_TLV_TYPE_END, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %12, label %45

45:                                               ; preds = %41
  store %struct.bhnd_nvram_tlv_env* null, %struct.bhnd_nvram_tlv_env** %4, align 8
  br label %46

46:                                               ; preds = %45, %37, %20
  %47 = load %struct.bhnd_nvram_tlv_env*, %struct.bhnd_nvram_tlv_env** %4, align 8
  ret %struct.bhnd_nvram_tlv_env* %47
}

declare dso_local i32 @bhnd_nvram_tlv_next_record(i32, i64*, i64*, i64*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32) #1

declare dso_local i8* @bhnd_nvram_tlv_to_cookie(%struct.bhnd_nvram_tlv*, i64) #1

declare dso_local %struct.bhnd_nvram_tlv_env* @bhnd_nvram_tlv_get_env(%struct.bhnd_nvram_tlv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
