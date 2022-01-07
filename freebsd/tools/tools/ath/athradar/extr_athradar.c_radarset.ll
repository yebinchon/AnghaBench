; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_radarset.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_radarset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radarhandler = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HAL_PHYERR_PARAM_NOVAL = common dso_local global i8* null, align 8
@DFS_SET_THRESH = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@SIOCGATHPHYERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radarset(%struct.radarhandler* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.radarhandler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store %struct.radarhandler* %0, %struct.radarhandler** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 13
  store i8* %8, i8** %9, align 8
  %10 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 12
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 11
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 10
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 9
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 14
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 8
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 7
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** @HAL_PHYERR_PARAM_NOVAL, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %84 [
    i32 141, label %39
    i32 139, label %42
    i32 129, label %45
    i32 138, label %48
    i32 134, label %51
    i32 137, label %54
    i32 133, label %57
    i32 131, label %60
    i32 136, label %63
    i32 128, label %66
    i32 142, label %69
    i32 135, label %72
    i32 140, label %75
    i32 132, label %78
    i32 130, label %81
  ]

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 14
  store i8* %40, i8** %41, align 8
  br label %84

42:                                               ; preds = %3
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 13
  store i8* %43, i8** %44, align 8
  br label %84

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 12
  store i8* %46, i8** %47, align 8
  br label %84

48:                                               ; preds = %3
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 11
  store i8* %49, i8** %50, align 8
  br label %84

51:                                               ; preds = %3
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 10
  store i8* %52, i8** %53, align 8
  br label %84

54:                                               ; preds = %3
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 9
  store i8* %55, i8** %56, align 8
  br label %84

57:                                               ; preds = %3
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 8
  store i8* %58, i8** %59, align 8
  br label %84

60:                                               ; preds = %3
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 7
  store i8* %61, i8** %62, align 8
  br label %84

63:                                               ; preds = %3
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  store i8* %64, i8** %65, align 8
  br label %84

66:                                               ; preds = %3
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i8* %67, i8** %68, align 8
  br label %84

69:                                               ; preds = %3
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i8* %70, i8** %71, align 8
  br label %84

72:                                               ; preds = %3
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  br label %84

75:                                               ; preds = %3
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  br label %84

78:                                               ; preds = %3
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  br label %84

81:                                               ; preds = %3
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %3, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39
  %85 = load i32, i32* @DFS_SET_THRESH, align 4
  %86 = load i32, i32* @ATH_DIAG_IN, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %89 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %92 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  store i32* null, i32** %93, align 8
  %94 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %95 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = ptrtoint %struct.TYPE_3__* %7 to i64
  %98 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %99 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i64 %97, i64* %100, align 8
  %101 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %102 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 120, i32* %103, align 4
  %104 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %105 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SIOCGATHPHYERR, align 4
  %108 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %109 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %108, i32 0, i32 0
  %110 = call i64 @ioctl(i32 %106, i32 %107, %struct.TYPE_4__* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %84
  %113 = load %struct.radarhandler*, %struct.radarhandler** %4, align 8
  %114 = getelementptr inbounds %struct.radarhandler, %struct.radarhandler* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @err(i32 1, i32 %116)
  br label %118

118:                                              ; preds = %112, %84
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
