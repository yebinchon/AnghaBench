; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_cb_dumpdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_dumpsys_cb_dumpdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_pa = type { i64, i64 }
%struct.dumperinfo = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@MAXDUMPPGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"  chunk %d: %juMB (%ju pages)\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" %ju\00", align 1
@WD_LASTVAL = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c" (CTRL-C to abort) \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" ... %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ok\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dumpsys_cb_dumpdata(%struct.dump_pa* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dump_pa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dumperinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.dump_pa* %0, %struct.dump_pa** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.dumperinfo*
  store %struct.dumperinfo* %19, %struct.dumperinfo** %8, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %12, align 8
  store i8* null, i8** %10, align 8
  %20 = load %struct.dump_pa*, %struct.dump_pa** %5, align 8
  %21 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.dump_pa*, %struct.dump_pa** %5, align 8
  %26 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.dumperinfo*, %struct.dumperinfo** %8, align 8
  %29 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = udiv i64 %30, %31
  %33 = load i32, i32* @MAXDUMPPGS, align 4
  %34 = call i64 @min(i64 %32, i32 %33)
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i64 1, i64* %17, align 8
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @PG2MB(i64 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = load i64, i64* %11, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %42, i8* %44)
  %46 = call i32 (...) @dumpsys_wbinv_all()
  br label %47

47:                                               ; preds = %108, %38
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %47
  %51 = load i64, i64* %11, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %17, align 8
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = shl i64 %58, %59
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = lshr i64 %64, 24
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @PG2MB(i64 %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i64, i64* %12, align 8
  %73 = and i64 %72, 16777215
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %67, %57
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @dumpsys_map_chunk(i64 %75, i64 %76, i8** %10)
  %78 = load i32, i32* @WD_LASTVAL, align 4
  %79 = call i32 @wdog_kern_pat(i32 %78)
  %80 = load %struct.dumperinfo*, %struct.dumperinfo** %8, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @dump_append(%struct.dumperinfo* %80, i8* %81, i32 0, i64 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @dumpsys_unmap_chunk(i64 %84, i64 %85, i8* %86)
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  br label %109

91:                                               ; preds = %74
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %11, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %9, align 8
  %98 = call i32 (...) @cncheckc()
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* @ECANCELED, align 4
  store i32 %102, i32* %4, align 4
  br label %116

103:                                              ; preds = %91
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  br label %47

109:                                              ; preds = %90, %47
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %109, %101
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @PG2MB(i64) #1

declare dso_local i32 @dumpsys_wbinv_all(...) #1

declare dso_local i32 @dumpsys_map_chunk(i64, i64, i8**) #1

declare dso_local i32 @wdog_kern_pat(i32) #1

declare dso_local i32 @dump_append(%struct.dumperinfo*, i8*, i32, i64) #1

declare dso_local i32 @dumpsys_unmap_chunk(i64, i64, i8*) #1

declare dso_local i32 @cncheckc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
