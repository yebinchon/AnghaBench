; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_parsetime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_parsetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@optind = common dso_local global i32 0, align 4
@scc = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"garbled time\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"trying to travel back in time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parsetime(i32 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca %struct.tm, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = call i64 @time(i32* null)
  store i64 %11, i64* %6, align 8
  %12 = call %struct.tm* @localtime(i64* %6)
  %13 = bitcast %struct.tm* %8 to i8*
  %14 = bitcast %struct.tm* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false)
  %15 = bitcast %struct.tm* %9 to i8*
  %16 = bitcast %struct.tm* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @optind, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @optind, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* @optind, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = call i32 @init_scanner(i32 %27, i8** %31)
  %33 = call i32 (...) @token()
  switch i32 %33, label %71 [
    i32 131, label %34
    i32 129, label %41
    i32 133, label %43
    i32 130, label %45
    i32 128, label %48
    i32 132, label %51
    i32 134, label %54
  ]

34:                                               ; preds = %24
  %35 = load i32, i32* @scc, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %90

39:                                               ; preds = %34
  %40 = call i32 @expect(i32 129)
  br label %41

41:                                               ; preds = %24, %39
  %42 = call i32 @plus(%struct.tm* %9)
  br label %73

43:                                               ; preds = %24
  %44 = call i32 @minus(%struct.tm* %9)
  br label %73

45:                                               ; preds = %24
  %46 = call i32 @tod(%struct.tm* %9)
  %47 = call i32 @month(%struct.tm* %9)
  br label %73

48:                                               ; preds = %24
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %24, %48
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 12
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %24, %51
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = call i32 (...) @token()
  br label %71

71:                                               ; preds = %24, %66
  %72 = call i32 @month(%struct.tm* %9)
  br label %73

73:                                               ; preds = %71, %45, %43, %41
  %74 = load i32, i32* @EOF, align 4
  %75 = call i32 @expect(i32 %74)
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = call i64 @mktime(%struct.tm* %9)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %73
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i64, i64* %7, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %37
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_scanner(i32, i8**) #1

declare dso_local i32 @token(...) #1

declare dso_local i32 @expect(i32) #1

declare dso_local i32 @plus(%struct.tm*) #1

declare dso_local i32 @minus(%struct.tm*) #1

declare dso_local i32 @tod(%struct.tm*) #1

declare dso_local i32 @month(%struct.tm*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
