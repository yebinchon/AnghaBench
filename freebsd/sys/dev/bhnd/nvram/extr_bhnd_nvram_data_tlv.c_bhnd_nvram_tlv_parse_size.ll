; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_parse_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_parse_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }

@NVRAM_TLV_TYPE_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"parse returned invalid EOF offset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64*)* @bhnd_nvram_tlv_parse_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_tlv_parse_size(%struct.bhnd_nvram_io* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_nvram_io*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i64*, i64** %5, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %18, %2
  %11 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %4, align 8
  %12 = call i32 @bhnd_nvram_tlv_next_record(%struct.bhnd_nvram_io* %11, i64* %6, i32* null, i64* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @NVRAM_TLV_TYPE_END, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %10, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %4, align 8
  %25 = call i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io* %24)
  %26 = icmp ule i64 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BHND_NV_ASSERT(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %6, align 8
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bhnd_nvram_tlv_next_record(%struct.bhnd_nvram_io*, i64*, i32*, i64*) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
