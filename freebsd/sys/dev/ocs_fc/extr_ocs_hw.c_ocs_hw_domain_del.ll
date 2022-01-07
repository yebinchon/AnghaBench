; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_domain_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_domain_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64*, i32, %struct.TYPE_9__, %struct.TYPE_11__** }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }

@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"bad parameter hw=%p domain=%p\0A\00", align 1
@SLI4_MAX_FCFI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"deleting domain %p @ %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"provided domain %p does not match stored domain %p\0A\00", align 1
@SLI4_MAX_FCF_INDEX = common dso_local global i64 0, align 8
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"indexed FCFI %#x doesn't match provided %#x @ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"FCF index %d out of range (max %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"FCFI %#x out of range (max %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @ocs_hw_domain_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_domain_del(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @UINT16_MAX, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %17, %struct.TYPE_11__* %18)
  %20 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %20, i32* %3, align 4
  br label %132

21:                                               ; preds = %13
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @SLI4_MAX_FCFI, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %123

28:                                               ; preds = %21
  %29 = load i64, i64* @UINT16_MAX, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @ocs_log_debug(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %33, i64 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %40
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp ne %struct.TYPE_11__* %36, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %28
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 %52
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %48, %struct.TYPE_11__* %54)
  %56 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %132

57:                                               ; preds = %28
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 %61
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %57
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i64 -1, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %57
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @SLI4_MAX_FCF_INDEX, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %78
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %100, i32* %6, align 4
  br label %114

101:                                              ; preds = %85
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %110, i64 %111, i64 %112)
  br label %114

114:                                              ; preds = %101, %94
  br label %122

115:                                              ; preds = %78
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* @SLI4_MAX_FCF_INDEX, align 8
  %121 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %114
  br label %130

123:                                              ; preds = %21
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @SLI4_MAX_FCFI, align 8
  %129 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %127, i64 %128)
  br label %130

130:                                              ; preds = %123, %122
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %44, %16
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @ocs_log_test(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
