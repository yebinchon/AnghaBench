; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_to_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_tlv = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"null cookiep\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error mapping offset %zu: %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid cookiep\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"cookiep > SIZE_MAX)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"cookiep > io_size)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bhnd_nvram_tlv*, i8*)* @bhnd_nvram_tlv_to_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bhnd_nvram_tlv_to_offset(%struct.bhnd_nvram_tlv* %0, i8* %1) #0 {
  %3 = alloca %struct.bhnd_nvram_tlv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bhnd_nvram_tlv* %0, %struct.bhnd_nvram_tlv** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BHND_NV_ASSERT(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %3, align 8
  %14 = getelementptr inbounds %struct.bhnd_nvram_tlv, %struct.bhnd_nvram_tlv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @bhnd_nvram_io_getsize(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.bhnd_nvram_tlv*, %struct.bhnd_nvram_tlv** %3, align 8
  %18 = getelementptr inbounds %struct.bhnd_nvram_tlv, %struct.bhnd_nvram_tlv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @bhnd_nvram_io_read_ptr(i32 %19, i32 0, i8** %5, i64 %20, i32* null)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i8*, i8** %4, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = ptrtoint i32* %30 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sge i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @BHND_NV_ASSERT(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @SIZE_MAX, align 8
  %43 = icmp ult i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BHND_NV_ASSERT(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ule i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BHND_NV_ASSERT(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i64 @bhnd_nvram_io_getsize(i32) #1

declare dso_local i32 @bhnd_nvram_io_read_ptr(i32, i32, i8**, i64, i32*) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
