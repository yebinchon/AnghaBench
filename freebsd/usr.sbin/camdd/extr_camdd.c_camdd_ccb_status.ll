; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_ccb_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_ccb_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CAMDD_STATUS_NONE = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAMDD_STATUS_OK = common dso_local global i32 0, align 4
@CAMDD_STATUS_SHORT_IO = common dso_local global i32 0, align 4
@CAMDD_STATUS_EOF = common dso_local global i32 0, align 4
@CAMDD_STATUS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camdd_ccb_status(%union.ccb* %0, i32 %1) #0 {
  %3 = alloca %union.ccb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CAMDD_STATUS_NONE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %union.ccb*, %union.ccb** %3, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CAM_STATUS_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %62 [
    i32 137, label %15
    i32 138, label %55
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %52 [
    i32 140, label %17
    i32 139, label %41
  ]

17:                                               ; preds = %15
  %18 = load %union.ccb*, %union.ccb** %3, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @CAMDD_STATUS_OK, align 4
  store i32 %24, i32* %5, align 4
  br label %40

25:                                               ; preds = %17
  %26 = load %union.ccb*, %union.ccb** %3, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %union.ccb*, %union.ccb** %3, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @CAMDD_STATUS_SHORT_IO, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @CAMDD_STATUS_EOF, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %39, %23
  br label %54

41:                                               ; preds = %15
  %42 = load %union.ccb*, %union.ccb** %3, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %49 [
    i32 130, label %46
    i32 133, label %46
    i32 132, label %46
    i32 131, label %46
    i32 134, label %48
    i32 135, label %48
    i32 129, label %48
    i32 136, label %48
    i32 128, label %48
  ]

46:                                               ; preds = %41, %41, %41, %41
  %47 = load i32, i32* @CAMDD_STATUS_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %51

48:                                               ; preds = %41, %41, %41, %41, %41
  br label %49

49:                                               ; preds = %41, %48
  %50 = load i32, i32* @CAMDD_STATUS_ERROR, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %54

52:                                               ; preds = %15
  %53 = load i32, i32* @CAMDD_STATUS_ERROR, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %51, %40
  br label %64

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %59 [
    i32 140, label %57
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @CAMDD_STATUS_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @CAMDD_STATUS_ERROR, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %64

62:                                               ; preds = %2
  %63 = load i32, i32* @CAMDD_STATUS_ERROR, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %61, %54
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
