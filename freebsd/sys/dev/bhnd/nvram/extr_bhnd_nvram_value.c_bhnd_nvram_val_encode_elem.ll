; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_encode_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_encode_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_val_encode_elem(%struct.TYPE_7__* %0, i8* %1, i64 %2, i8* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32)**
  %19 = load i32 (%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32)*, i32 (%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32)* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32)**
  %27 = load i32 (%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32)*, i32 (%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32)** %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 %27(%struct.TYPE_7__* %28, i8* %29, i64 %30, i8* %31, i64* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %43

35:                                               ; preds = %6
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i64*, i64** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @bhnd_nvram_val_generic_encode_elem(%struct.TYPE_7__* %36, i8* %37, i64 %38, i8* %39, i64* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %21
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @bhnd_nvram_val_generic_encode_elem(%struct.TYPE_7__*, i8*, i64, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
