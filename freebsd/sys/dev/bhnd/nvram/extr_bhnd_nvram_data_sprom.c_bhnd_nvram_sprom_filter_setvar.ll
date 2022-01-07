; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_filter_setvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_filter_setvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_sprom = type { i32 }
%struct.bhnd_nvram_vardefn = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"missing variable definition\00", align 1
@BHND_NVRAM_VAL_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*, i32*, i32**)* @bhnd_nvram_sprom_filter_setvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_filter_setvar(%struct.bhnd_nvram_data* %0, i8* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.bhnd_nvram_sprom*, align 8
  %11 = alloca %struct.bhnd_nvram_vardefn*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %6, align 8
  %16 = bitcast %struct.bhnd_nvram_data* %15 to %struct.bhnd_nvram_sprom*
  store %struct.bhnd_nvram_sprom* %16, %struct.bhnd_nvram_sprom** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @bhnd_sprom_is_external_immutable(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.bhnd_nvram_sprom*, %struct.bhnd_nvram_sprom** %10, align 8
  %24 = getelementptr inbounds %struct.bhnd_nvram_sprom, %struct.bhnd_nvram_sprom* %23, i32 0, i32 0
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.TYPE_4__* @bhnd_sprom_opcode_index_find(i32* %24, i8* %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %12, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %5, align 4
  br label %64

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32 %33)
  store %struct.bhnd_nvram_vardefn* %34, %struct.bhnd_nvram_vardefn** %11, align 8
  %35 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %11, align 8
  %36 = icmp ne %struct.bhnd_nvram_vardefn* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @BHND_NV_ASSERT(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %11, align 8
  %40 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @BHND_NVRAM_VAL_DYNAMIC, align 4
  %44 = call i32 @bhnd_nvram_val_convert_new(i32** %13, i32 %41, i32* %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %64

49:                                               ; preds = %30
  %50 = load %struct.bhnd_nvram_sprom*, %struct.bhnd_nvram_sprom** %10, align 8
  %51 = getelementptr inbounds %struct.bhnd_nvram_sprom, %struct.bhnd_nvram_sprom* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @bhnd_nvram_sprom_write_var(i32* %51, %struct.TYPE_4__* %52, i32* %53, i32* null)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @bhnd_nvram_val_release(i32* %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %64

61:                                               ; preds = %49
  %62 = load i32*, i32** %13, align 8
  %63 = load i32**, i32*** %9, align 8
  store i32* %62, i32** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %57, %47, %28, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @bhnd_sprom_is_external_immutable(i8*) #1

declare dso_local %struct.TYPE_4__* @bhnd_sprom_opcode_index_find(i32*, i8*) #1

declare dso_local %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_val_convert_new(i32**, i32, i32*, i32) #1

declare dso_local i32 @bhnd_nvram_sprom_write_var(i32*, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
