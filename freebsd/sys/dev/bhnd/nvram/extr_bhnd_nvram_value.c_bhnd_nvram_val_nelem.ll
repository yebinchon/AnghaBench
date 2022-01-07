; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_nelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_nelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}*, i32* }

@.str = private unnamed_addr constant [67 x i8] c"error calculating element count for type '%s' with length %zu: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bhnd_nvram_val_nelem(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i64 (%struct.TYPE_8__*)**
  %15 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %14, align 8
  %16 = icmp ne i64 (%struct.TYPE_8__*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i64 (%struct.TYPE_8__*)**
  %23 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = call i64 %23(%struct.TYPE_8__* %24)
  store i64 %25, i64* %2, align 8
  br label %60

26:                                               ; preds = %1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  store i8* null, i8** %9, align 8
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %39, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @bhnd_nvram_val_next(%struct.TYPE_8__* %35, i8* %36, i64* %7)
  store i8* %37, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %34

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %2, align 8
  br label %60

44:                                               ; preds = %26
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i8* @bhnd_nvram_val_bytes(%struct.TYPE_8__* %45, i64* %7, i32* %5)
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @bhnd_nvram_value_nelem(i8* %47, i64 %48, i32 %49, i64* %6)
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @bhnd_nvram_type_name(i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %58, %42, %17
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i8* @bhnd_nvram_val_next(%struct.TYPE_8__*, i8*, i64*) #1

declare dso_local i8* @bhnd_nvram_val_bytes(%struct.TYPE_8__*, i64*, i32*) #1

declare dso_local i32 @bhnd_nvram_value_nelem(i8*, i64, i32, i64*) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i32, i64, i32) #1

declare dso_local i32 @bhnd_nvram_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
