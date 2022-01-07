; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_getvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_getvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_data_getvar(%struct.bhnd_nvram_data* %0, i8* %1, i8* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.bhnd_nvram_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %6, align 8
  %12 = getelementptr inbounds %struct.bhnd_nvram_data, %struct.bhnd_nvram_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.bhnd_nvram_data*, i8*, i8*, i64*, i32)**
  %16 = load i32 (%struct.bhnd_nvram_data*, i8*, i8*, i64*, i32)*, i32 (%struct.bhnd_nvram_data*, i8*, i8*, i64*, i32)** %15, align 8
  %17 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 %16(%struct.bhnd_nvram_data* %17, i8* %18, i8* %19, i64* %20, i32 %21)
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
