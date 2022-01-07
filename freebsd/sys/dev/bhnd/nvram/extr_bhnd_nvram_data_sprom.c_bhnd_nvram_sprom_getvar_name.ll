; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_getvar_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_vardefn = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"NULL variable cookiep\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid cookiep %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bhnd_nvram_data*, i8*)* @bhnd_nvram_sprom_getvar_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bhnd_nvram_sprom_getvar_name(%struct.bhnd_nvram_data* %0, i8* %1) #0 {
  %3 = alloca %struct.bhnd_nvram_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bhnd_nvram_vardefn*, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BHND_NV_ASSERT(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.bhnd_nvram_vardefn* @SPROM_COOKIE_TO_NVRAM_VAR(i8* %10)
  store %struct.bhnd_nvram_vardefn* %11, %struct.bhnd_nvram_vardefn** %5, align 8
  %12 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %5, align 8
  %13 = icmp ne %struct.bhnd_nvram_vardefn* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @BHND_NV_ASSERT(i32 %14, i8* %15)
  %17 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %5, align 8
  %18 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  ret i8* %19
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local %struct.bhnd_nvram_vardefn* @SPROM_COOKIE_TO_NVRAM_VAR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
