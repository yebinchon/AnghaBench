; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dsshow2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dsshow2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.statinfo = type { x86_fp80, %struct.TYPE_5__*, [8 x i8] }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@dev_select = common dso_local global %struct.TYPE_7__* null, align 8
@DSM_KB_PER_TRANSFER = common dso_local global i32 0, align 4
@DSM_TRANSFERS_PER_SECOND = common dso_local global i32 0, align 4
@DSM_MB_PER_SECOND = common dso_local global i32 0, align 4
@DSM_BUSY_PCT = common dso_local global i32 0, align 4
@DSM_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.statinfo*, %struct.statinfo*)* @dsshow2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsshow2(i32 %0, i32 %1, i32 %2, i32 %3, %struct.statinfo* %4, %struct.statinfo* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.statinfo*, align 8
  %12 = alloca %struct.statinfo*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.statinfo* %4, %struct.statinfo** %11, align 8
  store %struct.statinfo* %5, %struct.statinfo** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_select, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load %struct.statinfo*, %struct.statinfo** %12, align 8
  %26 = icmp ne %struct.statinfo* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load %struct.statinfo*, %struct.statinfo** %11, align 8
  %29 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %28, i32 0, i32 0
  %30 = load x86_fp80, x86_fp80* %29, align 16
  %31 = load %struct.statinfo*, %struct.statinfo** %12, align 8
  %32 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %31, i32 0, i32 0
  %33 = load x86_fp80, x86_fp80* %32, align 16
  %34 = fsub x86_fp80 %30, %33
  store x86_fp80 %34, x86_fp80* %16, align 16
  br label %50

35:                                               ; preds = %6
  %36 = load %struct.statinfo*, %struct.statinfo** %11, align 8
  %37 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %36, i32 0, i32 0
  %38 = load x86_fp80, x86_fp80* %37, align 16
  %39 = load %struct.statinfo*, %struct.statinfo** %11, align 8
  %40 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 16
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call x86_fp80 @devstat_compute_etime(i32* %47, i32* null)
  %49 = fsub x86_fp80 %38, %48
  store x86_fp80 %49, x86_fp80* %16, align 16
  br label %50

50:                                               ; preds = %35, %27
  %51 = load %struct.statinfo*, %struct.statinfo** %11, align 8
  %52 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 16
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = load %struct.statinfo*, %struct.statinfo** %12, align 8
  %60 = icmp ne %struct.statinfo* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load %struct.statinfo*, %struct.statinfo** %12, align 8
  %63 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 16
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  br label %71

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %61
  %72 = phi %struct.TYPE_6__* [ %69, %61 ], [ null, %70 ]
  %73 = load x86_fp80, x86_fp80* %16, align 16
  %74 = load i32, i32* @DSM_KB_PER_TRANSFER, align 4
  %75 = load i32, i32* @DSM_TRANSFERS_PER_SECOND, align 4
  %76 = load i32, i32* @DSM_MB_PER_SECOND, align 4
  %77 = load i32, i32* @DSM_BUSY_PCT, align 4
  %78 = load i32, i32* @DSM_NONE, align 4
  %79 = call i64 @devstat_compute_statistics(%struct.TYPE_6__* %58, %struct.TYPE_6__* %72, x86_fp80 %73, i32 %74, x86_fp80* %14, i32 %75, x86_fp80* %13, i32 %76, x86_fp80* %15, i32 %77, x86_fp80* %17, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @devstat_errbuf, align 4
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %71
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %86, 6
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %10, align 4
  %89 = load x86_fp80, x86_fp80* %14, align 16
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @putlongdouble(x86_fp80 %89, i32 %91, i32 %92, i32 5, i32 2, i32 0)
  %94 = load x86_fp80, x86_fp80* %13, align 16
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 2
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @putlongdouble(x86_fp80 %94, i32 %96, i32 %97, i32 5, i32 0, i32 0)
  %99 = load x86_fp80, x86_fp80* %15, align 16
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 3
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @putlongdouble(x86_fp80 %99, i32 %101, i32 %102, i32 5, i32 2, i32 0)
  %104 = load x86_fp80, x86_fp80* %17, align 16
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @putlongdouble(x86_fp80 %104, i32 %106, i32 %107, i32 5, i32 0, i32 0)
  ret void
}

declare dso_local x86_fp80 @devstat_compute_etime(i32*, i32*) #1

declare dso_local i64 @devstat_compute_statistics(%struct.TYPE_6__*, %struct.TYPE_6__*, x86_fp80, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @putlongdouble(x86_fp80, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
