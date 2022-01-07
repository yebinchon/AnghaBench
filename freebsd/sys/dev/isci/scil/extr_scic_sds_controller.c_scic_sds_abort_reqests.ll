; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_abort_reqests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_abort_reqests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_MAX_IO_REQUESTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @scic_sds_abort_reqests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_abort_reqests(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %12 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @SCI_MAX_IO_REQUESTS, align 8
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %16
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %86, %30
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @SCI_MAX_IO_REQUESTS, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %11, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i1 [ false, %31 ], [ %37, %35 ]
  br i1 %39, label %40, label %89

40:                                               ; preds = %38
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %43, i64 %44
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = icmp eq %struct.TYPE_12__* %52, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = icmp eq %struct.TYPE_13__* %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = icmp eq %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = icmp eq %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %66, %55, %49
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = call i64 @scic_controller_terminate_request(%struct.TYPE_14__* %70, %struct.TYPE_12__* %73, %struct.TYPE_11__* %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @SCI_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i64, i64* %8, align 8
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %79, %69
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %81, %66, %63
  br label %85

85:                                               ; preds = %84, %40
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %31

89:                                               ; preds = %38
  %90 = load i64, i64* %7, align 8
  ret i64 %90
}

declare dso_local i64 @scic_controller_terminate_request(%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
