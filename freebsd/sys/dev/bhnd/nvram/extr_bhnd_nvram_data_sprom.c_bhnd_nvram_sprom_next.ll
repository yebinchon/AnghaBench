; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_sprom = type { i32 }
%struct.bhnd_nvram_vardefn = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid cookiep %p\00", align 1
@BHND_NVRAM_VF_IGNALL1 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected error parsing variable: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bhnd_nvram_data*, i8**)* @bhnd_nvram_sprom_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bhnd_nvram_sprom_next(%struct.bhnd_nvram_data* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bhnd_nvram_data*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bhnd_nvram_sprom*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bhnd_nvram_vardefn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %4, align 8
  %12 = bitcast %struct.bhnd_nvram_data* %11 to %struct.bhnd_nvram_sprom*
  store %struct.bhnd_nvram_sprom* %12, %struct.bhnd_nvram_sprom** %6, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %49, %2
  %16 = load %struct.bhnd_nvram_sprom*, %struct.bhnd_nvram_sprom** %6, align 8
  %17 = getelementptr inbounds %struct.bhnd_nvram_sprom, %struct.bhnd_nvram_sprom* %16, i32 0, i32 0
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @bhnd_sprom_opcode_index_next(i32* %17, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct.bhnd_nvram_vardefn* @SPROM_COOKIE_TO_NVRAM_VAR(i8* %25)
  store %struct.bhnd_nvram_vardefn* %26, %struct.bhnd_nvram_vardefn** %8, align 8
  %27 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %8, align 8
  %28 = icmp ne %struct.bhnd_nvram_vardefn* %27, null
  %29 = zext i1 %28 to i32
  %30 = load i8**, i8*** %5, align 8
  %31 = bitcast i8** %30 to i8*
  %32 = call i32 @BHND_NV_ASSERT(i32 %29, i8* %31)
  %33 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %8, align 8
  %34 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BHND_NVRAM_VF_IGNALL1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %21
  %40 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %4, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %8, align 8
  %44 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bhnd_nvram_sprom_getvar(%struct.bhnd_nvram_data* %40, i8* %42, i32* null, i64* %10, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @BHND_NV_ASSERT(i32 %53, i8* %56)
  br label %15

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %21
  %60 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %8, align 8
  %61 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %3, align 8
  br label %64

63:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i8* @bhnd_sprom_opcode_index_next(i32*, i8*) #1

declare dso_local %struct.bhnd_nvram_vardefn* @SPROM_COOKIE_TO_NVRAM_VAR(i8*) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_sprom_getvar(%struct.bhnd_nvram_data*, i8*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
