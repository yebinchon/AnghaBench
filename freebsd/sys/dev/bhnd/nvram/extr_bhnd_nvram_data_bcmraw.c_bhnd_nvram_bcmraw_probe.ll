; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcmraw.c_bhnd_nvram_bcmraw_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcmraw.c_bhnd_nvram_bcmraw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_PROBE_MAYBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*)* @bhnd_nvram_bcmraw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_bcmraw_probe(%struct.bhnd_nvram_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_nvram_io*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %3, align 8
  %10 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  %11 = call i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @bhnd_nv_ummin(i32 16, i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %14, i64 0, i8* %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %97

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %97

36:                                               ; preds = %29
  %37 = load i32, i32* @BHND_NVRAM_DATA_PROBE_MAYBE, align 4
  store i32 %37, i32* %2, align 4
  br label %97

38:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %9, align 1
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %97

52:                                               ; preds = %43
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8, i8* %9, align 1
  %58 = call i32 @bhnd_nv_isprint(i8 signext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %62

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %39

65:                                               ; preds = %39
  store i64 2, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %97

71:                                               ; preds = %65
  %72 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = sub i64 %73, %74
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %72, i64 %75, i8* %76, i64 %77)
  store i32 %78, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %97

82:                                               ; preds = %71
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %84 = load i8, i8* %83, align 16
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %82
  %93 = load i32, i32* @ENXIO, align 4
  store i32 %93, i32* %2, align 4
  br label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @BHND_NVRAM_DATA_PROBE_MAYBE, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %92, %80, %69, %50, %36, %34, %24, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io*) #1

declare dso_local i64 @bhnd_nv_ummin(i32, i64) #1

declare dso_local i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io*, i64, i8*, i64) #1

declare dso_local i32 @bhnd_nv_isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
