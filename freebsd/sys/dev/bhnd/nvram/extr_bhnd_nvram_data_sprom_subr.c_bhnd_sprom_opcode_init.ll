; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, %struct.bhnd_sprom_layout* }
%struct.bhnd_sprom_layout = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error reading expected variable entry: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"error initializing index for entry: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"expected EOF parsing binding table: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bhnd_sprom_opcode_sort_idx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_sprom_opcode_init(%struct.TYPE_7__* %0, %struct.bhnd_sprom_layout* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.bhnd_sprom_layout*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.bhnd_sprom_layout* %1, %struct.bhnd_sprom_layout** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.bhnd_sprom_layout*, %struct.bhnd_sprom_layout** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store %struct.bhnd_sprom_layout* %10, %struct.bhnd_sprom_layout** %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @bhnd_sprom_opcode_reset(%struct.TYPE_7__* %17)
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.bhnd_sprom_layout*, %struct.bhnd_sprom_layout** %24, align 8
  %26 = getelementptr inbounds %struct.bhnd_sprom_layout, %struct.bhnd_sprom_layout* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32* @bhnd_nv_calloc(i64 %28, i32 4)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %99

34:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = call i32 @bhnd_sprom_opcode_next_var(%struct.TYPE_7__* %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @SPROM_OP_BAD(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @bhnd_nv_free(i32* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %99

50:                                               ; preds = %39
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call i32 @bhnd_sprom_opcode_init_entry(%struct.TYPE_7__* %51, i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @SPROM_OP_BAD(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @bhnd_nv_free(i32* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %99

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = call i32 @bhnd_sprom_opcode_next_var(%struct.TYPE_7__* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @bhnd_nv_free(i32* %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %3, align 4
  br label %99

80:                                               ; preds = %69
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = call i32 @bhnd_sprom_opcode_reset(%struct.TYPE_7__* %81)
  store i32 %82, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @bhnd_nv_free(i32* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %99

88:                                               ; preds = %80
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* @bhnd_sprom_opcode_sort_idx, align 4
  %92 = call i32 @qsort(i32* %89, i64 %90, i32 4, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store i32* %93, i32** %95, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %88, %84, %74, %58, %43, %32, %20
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @bhnd_sprom_opcode_reset(%struct.TYPE_7__*) #1

declare dso_local i32* @bhnd_nv_calloc(i64, i32) #1

declare dso_local i32 @bhnd_sprom_opcode_next_var(%struct.TYPE_7__*) #1

declare dso_local i32 @SPROM_OP_BAD(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @bhnd_nv_free(i32*) #1

declare dso_local i32 @bhnd_sprom_opcode_init_entry(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32) #1

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
