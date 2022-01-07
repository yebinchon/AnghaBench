; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_nvram_iores = type { i32, i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unreachable!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64, i8*, i64)* @bhnd_nvram_iores_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_iores_write(%struct.bhnd_nvram_io* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_io*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bhnd_nvram_iores*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %15 = bitcast %struct.bhnd_nvram_io* %14 to %struct.bhnd_nvram_iores*
  store %struct.bhnd_nvram_iores* %15, %struct.bhnd_nvram_iores** %10, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @bhnd_nvram_iores_validate_req(%struct.bhnd_nvram_iores* %17, i64 %18, i64* %11)
  store i32 %19, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %67

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %5, align 4
  br label %67

29:                                               ; preds = %23
  %30 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %31 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %12, align 8
  %35 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %36 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %64 [
    i32 1, label %38
    i32 2, label %46
    i32 4, label %55
  ]

38:                                               ; preds = %29
  %39 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %40 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @bhnd_bus_write_region_stream_1(i32 %41, i64 %42, i8* %43, i64 %44)
  br label %66

46:                                               ; preds = %29
  %47 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %48 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = udiv i64 %52, 2
  %54 = call i32 @bhnd_bus_write_region_stream_2(i32 %49, i64 %50, i8* %51, i64 %53)
  br label %66

55:                                               ; preds = %29
  %56 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %57 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = udiv i64 %61, 4
  %63 = call i32 @bhnd_bus_write_region_stream_4(i32 %58, i64 %59, i8* %60, i64 %62)
  br label %66

64:                                               ; preds = %29
  %65 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %55, %46, %38
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %27, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @bhnd_nvram_iores_validate_req(%struct.bhnd_nvram_iores*, i64, i64*) #1

declare dso_local i32 @bhnd_bus_write_region_stream_1(i32, i64, i8*, i64) #1

declare dso_local i32 @bhnd_bus_write_region_stream_2(i32, i64, i8*, i64) #1

declare dso_local i32 @bhnd_bus_write_region_stream_4(i32, i64, i8*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
