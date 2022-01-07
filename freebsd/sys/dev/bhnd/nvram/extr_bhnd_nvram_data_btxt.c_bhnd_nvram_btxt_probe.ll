; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%union.bhnd_nvram_btxt_ident = type { i8* }

@BCM_NVRAM_MAGIC = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_PROBE_MAYBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*)* @bhnd_nvram_btxt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_btxt_probe(%struct.bhnd_nvram_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_nvram_io*, align 8
  %4 = alloca %union.bhnd_nvram_btxt_ident, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %3, align 8
  %8 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  %9 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %8, i32 0, %union.bhnd_nvram_btxt_ident* %4, i32 8)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = bitcast %union.bhnd_nvram_btxt_ident* %4 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @le32toh(i32 %15)
  %17 = load i64, i64* @BCM_NVRAM_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %63

21:                                               ; preds = %13
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i64, i64* %7, align 8
  %24 = bitcast %union.bhnd_nvram_btxt_ident* %4 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @nitems(i8* %25)
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = bitcast %union.bhnd_nvram_btxt_ident* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %5, align 1
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @bhnd_nv_isprint(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %22

43:                                               ; preds = %22
  %44 = bitcast %union.bhnd_nvram_btxt_ident* %4 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %5, align 1
  %48 = load i8, i8* %5, align 1
  %49 = call i32 @bhnd_nv_isspace(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %43
  %52 = load i8, i8* %5, align 1
  %53 = call i32 @bhnd_nv_isalpha(i8 signext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %5, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 35
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %55, %51, %43
  %62 = load i32, i32* @BHND_NVRAM_DATA_PROBE_MAYBE, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %59, %37, %19, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io*, i32, %union.bhnd_nvram_btxt_ident*, i32) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i64 @nitems(i8*) #1

declare dso_local i32 @bhnd_nv_isprint(i8 signext) #1

declare dso_local i32 @bhnd_nv_isspace(i8 signext) #1

declare dso_local i32 @bhnd_nv_isalpha(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
