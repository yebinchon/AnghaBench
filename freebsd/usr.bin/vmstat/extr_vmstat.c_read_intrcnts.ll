; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_read_intrcnts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_read_intrcnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kd = common dso_local global i32* null, align 8
@X_SINTRCNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@namelist = common dso_local global %struct.TYPE_2__* null, align 8
@X_NINTRCNT = common dso_local global i64 0, align 8
@X_INTRCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"reallocf()\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"hw.intrcnt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**)* @read_intrcnts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_intrcnts(i64** %0) #0 {
  %2 = alloca i64**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64** %0, i64*** %2, align 8
  %5 = load i32*, i32** @kd, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = load i32, i32* @X_SINTRCNT, align 4
  %9 = call i32 (i32, ...) @kread(i32 %8, i64* %3, i64 8)
  %10 = load i64, i64* %3, align 8
  %11 = call i64* @malloc(i64 %10)
  %12 = load i64**, i64*** %2, align 8
  store i64* %11, i64** %12, align 8
  %13 = icmp eq i64* %11, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %7
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @namelist, align 8
  %18 = load i64, i64* @X_NINTRCNT, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* @X_INTRCNT, align 4
  %25 = load i64**, i64*** %2, align 8
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i32 (i32, ...) @kread(i32 %24, i64* %26, i64 %27)
  br label %37

29:                                               ; preds = %16
  %30 = load i32, i32* @X_INTRCNT, align 4
  %31 = call i32 (i32, ...) @kread(i32 %30, i64* %4, i64 8)
  %32 = load i64, i64* %4, align 8
  %33 = load i64**, i64*** %2, align 8
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @kreadptr(i64 %32, i64* %34, i64 %35)
  br label %37

37:                                               ; preds = %29, %23
  br label %62

38:                                               ; preds = %1
  %39 = load i64**, i64*** %2, align 8
  store i64* null, i64** %39, align 8
  store i64 1024, i64* %3, align 8
  br label %40

40:                                               ; preds = %58, %38
  %41 = load i64**, i64*** %2, align 8
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i64* @reallocf(i64* %42, i64 %43)
  %45 = load i64**, i64*** %2, align 8
  store i64* %44, i64** %45, align 8
  %46 = load i64**, i64*** %2, align 8
  %47 = load i64*, i64** %46, align 8
  %48 = icmp eq i64* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i64**, i64*** %2, align 8
  %53 = load i64*, i64** %52, align 8
  %54 = call i64 @mysysctl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %53, i64* %3)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8
  %60 = mul i64 %59, 2
  store i64 %60, i64* %3, align 8
  br label %40

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i64, i64* %3, align 8
  %64 = udiv i64 %63, 8
  %65 = trunc i64 %64 to i32
  ret i32 %65
}

declare dso_local i32 @kread(i32, ...) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @kreadptr(i64, i64*, i64) #1

declare dso_local i64* @reallocf(i64*, i64) #1

declare dso_local i64 @mysysctl(i8*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
