; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%union.bhnd_nvram_sprom_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*, i8*, i64*, i32)* @bhnd_nvram_sprom_getvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_getvar(%struct.bhnd_nvram_data* %0, i8* %1, i8* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_nvram_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.bhnd_nvram_sprom_storage, align 4
  %14 = alloca i32, align 4
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @bhnd_nvram_sprom_getvar_common(%struct.bhnd_nvram_data* %15, i8* %16, %union.bhnd_nvram_sprom_storage* %13, i32* %12)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %29

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @bhnd_nvram_val_encode(i32* %12, i8* %23, i64* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = call i32 @bhnd_nvram_val_release(i32* %12)
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @bhnd_nvram_sprom_getvar_common(%struct.bhnd_nvram_data*, i8*, %union.bhnd_nvram_sprom_storage*, i32*) #1

declare dso_local i32 @bhnd_nvram_val_encode(i32*, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
