; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_set_nelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_set_nelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bhnd_nvram_vardefn = type { i32, i32 }

@SPROM_OPCODE_VAR_STATE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"array length set without open variable state\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown variable ID: %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid nelem: %hhu\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"nelem %hhu on non-array %zu\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"nelem %hhu exceeds %zu length %hhu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @bhnd_sprom_opcode_set_nelem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_sprom_opcode_set_nelem(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_vardefn*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPROM_OPCODE_VAR_STATE_OPEN, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32 %19)
  store %struct.bhnd_nvram_vardefn* %20, %struct.bhnd_nvram_vardefn** %6, align 8
  %21 = icmp eq %struct.bhnd_nvram_vardefn* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %76

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %29
  %38 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %6, align 8
  %39 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bhnd_nvram_is_array_type(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %3, align 4
  br label %76

54:                                               ; preds = %43, %37
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %6, align 8
  %57 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %6, align 8
  %67 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %65, i32 %68)
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %54
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %60, %46, %32, %22, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @SPROM_OP_BAD(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.bhnd_nvram_vardefn* @bhnd_nvram_get_vardefn(i32) #1

declare dso_local i32 @bhnd_nvram_is_array_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
