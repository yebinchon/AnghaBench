; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_physical_logical_luns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_physical_logical_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed return code: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to allocate memory for lun_data\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"list_len is 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_10__**, i64*)* @pqisrc_get_physical_logical_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_get_physical_logical_luns(i32* %0, i32 %1, %struct.TYPE_10__** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pqisrc_report_luns(i32* %17, i32 %18, %struct.TYPE_10__* %15, i64 8)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %89

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @BE_32(i32 %28)
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %69, %26
  %31 = load i64, i64* %11, align 8
  %32 = add i64 8, %31
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call %struct.TYPE_10__* @os_mem_alloc(i32* %35, i64 %36)
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %14, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %42, i32* %5, align 4
  br label %89

43:                                               ; preds = %30
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i32 @DBG_DISC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %49 = call i32 @memcpy(%struct.TYPE_10__* %48, %struct.TYPE_10__* %15, i32 8)
  br label %77

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @pqisrc_report_luns(i32* %51, i32 %52, %struct.TYPE_10__* %53, i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %81

60:                                               ; preds = %50
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @BE_32(i32 %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %11, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %73 = bitcast %struct.TYPE_10__* %72 to i8*
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @os_mem_free(i32* %71, i8* %73, i64 %74)
  br label %30

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %79, align 8
  %80 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %89

81:                                               ; preds = %58
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %84 = bitcast %struct.TYPE_10__* %83 to i8*
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @os_mem_free(i32* %82, i8* %84, i64 %85)
  %87 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %81, %77, %40, %22
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_report_luns(i32*, i32, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i64 @BE_32(i32) #1

declare dso_local %struct.TYPE_10__* @os_mem_alloc(i32*, i64) #1

declare dso_local i32 @DBG_DISC(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @os_mem_free(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
