; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_convert_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_convert_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@BHND_NVRAM_VAL_BORROW_DATA = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_STATIC_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @bhnd_nvram_val_convert_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_convert_common(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2, %struct.TYPE_15__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = call i8* @bhnd_nvram_val_bytes(%struct.TYPE_15__* %20, i64* %16, i32* %14)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i64, i64* %16, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i64 @bhnd_nvram_val_fmt_filter(%struct.TYPE_14__** %9, i8* %22, i64 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %5
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %42 [
    i32 128, label %31
    i32 129, label %31
    i32 130, label %31
    i32 132, label %31
    i32 131, label %32
  ]

31:                                               ; preds = %27, %27, %27, %27
  br label %42

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @BHND_NVRAM_VAL_BORROW_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @BHND_NVRAM_VAL_STATIC_DATA, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %32
  br label %42

42:                                               ; preds = %27, %41, %31
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @bhnd_nvram_val_init_common(%struct.TYPE_15__* %43, i32 %44, %struct.TYPE_14__* %45, i8* %46, i64 %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %87

51:                                               ; preds = %5
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @BHND_NVRAM_VAL_INITIALIZER(%struct.TYPE_14__* %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = bitcast %struct.TYPE_15__* %55 to i8*
  %61 = bitcast %struct.TYPE_15__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @bhnd_nvram_val_encode(%struct.TYPE_15__* %62, i8* null, i64* %17, i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* %18, align 4
  store i32 %67, i32* %6, align 4
  br label %87

68:                                               ; preds = %51
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i8* @bhnd_nvram_val_alloc_bytes(%struct.TYPE_15__* %69, i64 %70, i32 %71, i32 %72)
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %6, align 4
  br label %87

78:                                               ; preds = %68
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @bhnd_nvram_val_encode(%struct.TYPE_15__* %79, i8* %80, i64* %17, i32 %81)
  store i32 %82, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %6, align 4
  br label %87

86:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %84, %76, %66, %42
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i8* @bhnd_nvram_val_bytes(%struct.TYPE_15__*, i64*, i32*) #1

declare dso_local i64 @bhnd_nvram_val_fmt_filter(%struct.TYPE_14__**, i8*, i64, i32) #1

declare dso_local i32 @bhnd_nvram_val_init_common(%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i8*, i64, i32, i32) #1

declare dso_local i32 @BHND_NVRAM_VAL_INITIALIZER(%struct.TYPE_14__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bhnd_nvram_val_encode(%struct.TYPE_15__*, i8*, i64*, i32) #1

declare dso_local i8* @bhnd_nvram_val_alloc_bytes(%struct.TYPE_15__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
