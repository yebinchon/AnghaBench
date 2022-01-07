; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_set_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@SPROM_OPCODE_VAR_STATE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"type set outside variable definition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unsupported variable-width type: %d\0A\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid type width %zu for type: %d\0A\00", align 1
@UINT8_MAX = common dso_local global i8* null, align 8
@UINT16_MAX = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"unsupported type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @bhnd_sprom_opcode_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_sprom_opcode_set_type(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SPROM_OPCODE_VAR_STATE_OPEN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @bhnd_nvram_type_width(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %70

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @UINT32_MAX, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %34, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %70

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @bhnd_nvram_base_type(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %51 [
    i32 128, label %43
    i32 132, label %43
    i32 135, label %43
    i32 130, label %45
    i32 134, label %45
    i32 129, label %47
    i32 133, label %47
    i32 131, label %50
  ]

43:                                               ; preds = %39, %39, %39
  %44 = load i8*, i8** @UINT8_MAX, align 8
  store i8* %44, i8** %8, align 8
  br label %56

45:                                               ; preds = %39, %39
  %46 = load i8*, i8** @UINT16_MAX, align 8
  store i8* %46, i8** %8, align 8
  br label %56

47:                                               ; preds = %39, %39
  %48 = load i64, i64* @UINT32_MAX, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %8, align 8
  br label %56

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %39, %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (%struct.TYPE_6__*, i8*, ...) @SPROM_OP_BAD(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %70

56:                                               ; preds = %47, %45, %43
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  %65 = load i64, i64* %7, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %56, %51, %32, %23, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @SPROM_OP_BAD(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i64 @bhnd_nvram_type_width(i32) #1

declare dso_local i32 @bhnd_nvram_base_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
