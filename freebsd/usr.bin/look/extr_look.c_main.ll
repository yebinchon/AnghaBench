; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_path_words = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"+adft:\00", align 1
@longopts = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@MB_LEN_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid termination character\00", align 1
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIZE_T_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @LC_CTYPE, align 4
  %16 = call i32 @setlocale(i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** @_path_words, align 8
  store i8* %17, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %42, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* @longopts, align 4
  %22 = call i32 @getopt_long(i32 %19, i8** %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32* null)
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %40 [
    i32 97, label %26
    i32 100, label %27
    i32 102, label %28
    i32 116, label %29
    i32 63, label %39
  ]

26:                                               ; preds = %24
  br label %42

27:                                               ; preds = %24
  store i32 1, i32* @dflag, align 4
  br label %42

28:                                               ; preds = %24
  store i32 1, i32* @fflag, align 4
  br label %42

29:                                               ; preds = %24
  %30 = load i32, i32* @optarg, align 4
  %31 = load i32, i32* @MB_LEN_MAX, align 4
  %32 = call i32 @mbrtowc(i32* %10, i32 %30, i32 %31, i32* null)
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %29
  br label %42

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %24, %39
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %38, %28, %27, %26
  br label %18

43:                                               ; preds = %18
  %44 = load i64, i64* @optind, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* @optind, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49
  store i8** %51, i8*** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %43
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* @fflag, align 4
  store i32 1, i32* @dflag, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %5, align 8
  %63 = load i8*, i8** %61, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @prepkey(i32 %64, i32 %65)
  store i32* %66, i32** %14, align 8
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 2
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %5, align 8
  %72 = load i8*, i8** %70, align 8
  store i8* %72, i8** %13, align 8
  br label %73

73:                                               ; preds = %69, %60
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %137, %73
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* @O_RDONLY, align 4
  %77 = call i32 @open(i8* %75, i32 %76, i32 0)
  store i32 %77, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @fstat(i32 %80, %struct.stat* %6)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %74
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SIZE_T_MAX, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* @EFBIG, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @close(i32 %101)
  br label %128

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @PROT_READ, align 4
  %107 = load i32, i32* @MAP_SHARED, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i8* @mmap(i32* null, i64 %105, i32 %106, i32 %107, i32 %108, i32 0)
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** @MAP_FAILED, align 8
  %111 = icmp eq i8* %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %103
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8* %119, i8** %11, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @look(i32* %120, i8* %121, i8* %122)
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @close(i32 %126)
  br label %128

128:                                              ; preds = %115, %100
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %4, align 4
  %131 = icmp sgt i32 %129, 2
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8**, i8*** %5, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %5, align 8
  %135 = load i8*, i8** %133, align 8
  store i8* %135, i8** %13, align 8
  %136 = icmp ne i8* %135, null
  br label %137

137:                                              ; preds = %132, %128
  %138 = phi i1 [ false, %128 ], [ %136, %132 ]
  br i1 %138, label %74, label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @exit(i32 %140) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @mbrtowc(i32*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @prepkey(i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @look(i32*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
