; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_nvram_iores = type { i32, i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unreachable!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64, i8*, i64)* @bhnd_nvram_iores_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_iores_read(%struct.bhnd_nvram_io* %0, i64 %1, i8* %2, i64 %3) #0 {
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
  store i64 %16, i64* %12, align 8
  %17 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @bhnd_nvram_iores_validate_req(%struct.bhnd_nvram_iores* %17, i64 %18, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %71

23:                                               ; preds = %4
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %71

33:                                               ; preds = %29
  %34 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %35 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %40 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %68 [
    i32 1, label %42
    i32 2, label %50
    i32 4, label %59
  ]

42:                                               ; preds = %33
  %43 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %44 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @bhnd_bus_read_region_stream_1(i32 %45, i64 %46, i8* %47, i64 %48)
  br label %70

50:                                               ; preds = %33
  %51 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %52 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = udiv i64 %56, 2
  %58 = call i32 @bhnd_bus_read_region_stream_2(i32 %53, i64 %54, i8* %55, i64 %57)
  br label %70

59:                                               ; preds = %33
  %60 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %61 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %11, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = udiv i64 %65, 4
  %67 = call i32 @bhnd_bus_read_region_stream_4(i32 %62, i64 %63, i8* %64, i64 %66)
  br label %70

68:                                               ; preds = %33
  %69 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %59, %50, %42
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %32, %27, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @bhnd_nvram_iores_validate_req(%struct.bhnd_nvram_iores*, i64, i64*) #1

declare dso_local i32 @bhnd_bus_read_region_stream_1(i32, i64, i8*, i64) #1

declare dso_local i32 @bhnd_bus_read_region_stream_2(i32, i64, i8*, i64) #1

declare dso_local i32 @bhnd_bus_read_region_stream_4(i32, i64, i8*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
