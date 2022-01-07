; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_scsi_find_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_scsi_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*** }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_MAX_DEVICES = common dso_local global i32 0, align 4
@PQI_MAX_MULTILUN = common dso_local global i32 0, align 4
@DEVICE_CHANGED = common dso_local global i32 0, align 4
@DEVICE_UNCHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__**)* @pqisrc_scsi_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_scsi_find_entry(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  %11 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %78, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PQI_MAX_DEVICES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %74, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @PQI_MAX_MULTILUN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__***, %struct.TYPE_9__**** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__**, %struct.TYPE_9__*** %24, i64 %26
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %74

35:                                               ; preds = %21
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__***, %struct.TYPE_9__**** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__**, %struct.TYPE_9__*** %38, i64 %40
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @pqisrc_scsi3addr_equal(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %35
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = call i64 @pqisrc_device_equal(%struct.TYPE_9__* %58, %struct.TYPE_9__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @DEVICE_CHANGED, align 4
  store i32 %68, i32* %4, align 4
  br label %84

69:                                               ; preds = %62
  %70 = load i32, i32* @DEVICE_UNCHANGED, align 4
  store i32 %70, i32* %4, align 4
  br label %84

71:                                               ; preds = %55
  %72 = load i32, i32* @DEVICE_CHANGED, align 4
  store i32 %72, i32* %4, align 4
  br label %84

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %34
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %17

77:                                               ; preds = %17
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %12

81:                                               ; preds = %12
  %82 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @DEVICE_NOT_FOUND, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %71, %69, %67
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i64 @pqisrc_scsi3addr_equal(i32, i32) #1

declare dso_local i64 @pqisrc_device_equal(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
