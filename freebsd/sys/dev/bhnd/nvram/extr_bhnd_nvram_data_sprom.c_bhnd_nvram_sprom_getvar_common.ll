; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%union.bhnd_nvram_sprom_storage = type { i32 }
%struct.bhnd_nvram_sprom = type { i32, i32 }
%struct.bhnd_nvram_vardefn = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"NULL variable cookiep\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid cookiep %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*, %union.bhnd_nvram_sprom_storage*, i32*)* @bhnd_nvram_sprom_getvar_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_getvar_common(%struct.bhnd_nvram_data* %0, i8* %1, %union.bhnd_nvram_sprom_storage* %2, i32* %3) #0 {
  %5 = alloca %struct.bhnd_nvram_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.bhnd_nvram_sprom_storage*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bhnd_nvram_sprom*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bhnd_nvram_vardefn*, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store %union.bhnd_nvram_sprom_storage* %2, %union.bhnd_nvram_sprom_storage** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @BHND_NV_ASSERT(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %5, align 8
  %17 = bitcast %struct.bhnd_nvram_data* %16 to %struct.bhnd_nvram_sprom*
  store %struct.bhnd_nvram_sprom* %17, %struct.bhnd_nvram_sprom** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.bhnd_nvram_vardefn* @SPROM_COOKIE_TO_NVRAM_VAR(i8* %20)
  store %struct.bhnd_nvram_vardefn* %21, %struct.bhnd_nvram_vardefn** %11, align 8
  %22 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %11, align 8
  %23 = icmp ne %struct.bhnd_nvram_vardefn* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @BHND_NV_ASSERT(i32 %24, i8* %25)
  %27 = load %struct.bhnd_nvram_sprom*, %struct.bhnd_nvram_sprom** %9, align 8
  %28 = getelementptr inbounds %struct.bhnd_nvram_sprom, %struct.bhnd_nvram_sprom* %27, i32 0, i32 1
  %29 = load i32*, i32** %10, align 8
  %30 = load %struct.bhnd_nvram_sprom*, %struct.bhnd_nvram_sprom** %9, align 8
  %31 = getelementptr inbounds %struct.bhnd_nvram_sprom, %struct.bhnd_nvram_sprom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %union.bhnd_nvram_sprom_storage*, %union.bhnd_nvram_sprom_storage** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @bhnd_nvram_sprom_read_var(i32* %28, i32* %29, i32 %32, %union.bhnd_nvram_sprom_storage* %33, i32* %34)
  ret i32 %35
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local %struct.bhnd_nvram_vardefn* @SPROM_COOKIE_TO_NVRAM_VAR(i8*) #1

declare dso_local i32 @bhnd_nvram_sprom_read_var(i32*, i32*, i32, %union.bhnd_nvram_sprom_storage*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
