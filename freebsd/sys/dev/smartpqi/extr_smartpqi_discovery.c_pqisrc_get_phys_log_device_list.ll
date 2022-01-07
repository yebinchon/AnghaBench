; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_phys_log_device_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_phys_log_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@SA_REPORT_PHYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"report physical LUNs failed\00", align 1
@SA_REPORT_LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"report logical LUNs failed\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__**, %struct.TYPE_10__**, i64*, i64*)* @pqisrc_get_phys_log_device_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_get_phys_log_device_list(i32* %0, %struct.TYPE_10__** %1, %struct.TYPE_10__** %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %19, i32* %12, align 4
  %20 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @SA_REPORT_PHYS, align 4
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = call i32 @pqisrc_get_physical_logical_luns(i32* %21, i32 %22, %struct.TYPE_10__** %23, i64* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = call i32 @DBG_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %109

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @SA_REPORT_LOG, align 4
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = call i32 @pqisrc_get_physical_logical_luns(i32* %32, i32 %33, %struct.TYPE_10__** %34, i64* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = call i32 @DBG_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %109

42:                                               ; preds = %31
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %17, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @BE_32(i64 %51)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %13, align 8
  br label %57

54:                                               ; preds = %42
  %55 = call i32 @memset(i32* %18, i32 0, i32 4)
  %56 = bitcast i32* %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %17, align 8
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i64, i64* %13, align 8
  %59 = add i64 4, %58
  store i64 %59, i64* %14, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %61, 4
  %63 = call %struct.TYPE_10__* @os_mem_alloc(i32* %60, i64 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %16, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %57
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %15, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = bitcast %struct.TYPE_10__* %71 to i8*
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @os_mem_free(i32* %69, i8* %72, i64 %73)
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %75, align 8
  %76 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %76, i32* %6, align 4
  br label %109

77:                                               ; preds = %57
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @memcpy(%struct.TYPE_10__* %78, %struct.TYPE_10__* %79, i64 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %83 = bitcast %struct.TYPE_10__* %82 to i32*
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = call i32 @memset(i32* %85, i32 0, i32 4)
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 4
  %89 = call i8* @BE_32(i64 %88)
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %15, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = bitcast %struct.TYPE_10__* %98 to i8*
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @os_mem_free(i32* %96, i8* %99, i64 %100)
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 4
  %104 = load i64*, i64** %11, align 8
  store i64 %103, i64* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %106, align 8
  %107 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %77, %66, %39, %28
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_get_physical_logical_luns(i32*, i32, %struct.TYPE_10__**, i64*) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i8* @BE_32(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @os_mem_alloc(i32*, i64) #1

declare dso_local i32 @os_mem_free(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
