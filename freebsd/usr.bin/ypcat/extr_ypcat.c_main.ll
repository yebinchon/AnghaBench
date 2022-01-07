; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ypcat/extr_ypcat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ypcat/extr_ypcat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.ypall_callback = type { i32*, i32 }

@key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"xd:kt\00", align 1
@ypaliases = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Use \22%s\22 for \22%s\22\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@printit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"not running ypbind\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"no such map %s. Reason: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ypall_callback, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* @key, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %49, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %47 [
    i32 120, label %20
    i32 100, label %43
    i32 116, label %45
    i32 107, label %46
  ]

20:                                               ; preds = %18
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i64, i64* %12, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ypaliases, align 8
  %24 = call i64 @nitems(%struct.TYPE_3__* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ypaliases, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ypaliases, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %36)
  br label %38

38:                                               ; preds = %26
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %12, align 8
  br label %21

41:                                               ; preds = %21
  %42 = call i32 @exit(i32 0) #3
  unreachable

43:                                               ; preds = %18
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** %6, align 8
  br label %49

45:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %49

46:                                               ; preds = %18
  store i32 1, i32* @key, align 4
  br label %49

47:                                               ; preds = %18
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %46, %45, %43
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* @optind, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8*, i8** %6, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @yp_get_default_domain(i8** %6)
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* @optind, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %62
  store i64 0, i64* %12, align 8
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ypaliases, align 8
  %74 = call i64 @nitems(%struct.TYPE_3__* %73)
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ypaliases, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %77, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ypaliases, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %7, align 8
  br label %91

91:                                               ; preds = %85, %76
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %71

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95, %62
  %97 = load i32, i32* @printit, align 4
  %98 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %8, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %8, i32 0, i32 0
  store i32* null, i32** %99, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @yp_all(i8* %100, i8* %101, %struct.ypall_callback* %8)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  switch i32 %103, label %107 [
    i32 0, label %104
    i32 128, label %105
  ]

104:                                              ; preds = %96
  br label %112

105:                                              ; preds = %96
  %106 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %96, %105
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @yperr_string(i32 %109)
  %111 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %108, i32 %110)
  br label %112

112:                                              ; preds = %107, %104
  %113 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @yp_get_default_domain(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @yp_all(i8*, i8*, %struct.ypall_callback*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @yperr_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
