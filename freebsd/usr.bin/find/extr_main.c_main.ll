; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@now = common dso_local global i32 0, align 4
@FTS_NOSTAT = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@ftsoptions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"EHLPXdf:sx\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@regexp_flags = common dso_local global i32 0, align 4
@isxargs = common dso_local global i32 0, align 4
@isdepth = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@issort = common dso_local global i32 0, align 4
@FTS_XDEV = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@FTS_LOGICAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@dotfd = common dso_local global i32 0, align 4
@FTS_NOCHDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @LC_ALL, align 4
  %12 = call i32 @setlocale(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @time(i32* @now)
  %14 = load i8**, i8*** %5, align 8
  store i8** %14, i8*** %7, align 8
  store i8** %14, i8*** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @FTS_NOSTAT, align 4
  %16 = load i32, i32* @FTS_PHYSICAL, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* @ftsoptions, align 4
  br label %18

18:                                               ; preds = %48, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %46 [
    i32 69, label %25
    i32 72, label %29
    i32 76, label %30
    i32 80, label %31
    i32 88, label %32
    i32 100, label %33
    i32 102, label %34
    i32 115, label %40
    i32 120, label %41
    i32 63, label %45
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @REG_EXTENDED, align 4
  %27 = load i32, i32* @regexp_flags, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @regexp_flags, align 4
  br label %48

29:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %48

30:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %48

31:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %48

32:                                               ; preds = %23
  store i32 1, i32* @isxargs, align 4
  br label %48

33:                                               ; preds = %23
  store i32 1, i32* @isdepth, align 4
  br label %48

34:                                               ; preds = %23
  %35 = load i32, i32* @optarg, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %6, align 8
  store i8* %37, i8** %38, align 8
  br label %48

40:                                               ; preds = %23
  store i32 1, i32* @issort, align 4
  br label %48

41:                                               ; preds = %23
  %42 = load i32, i32* @FTS_XDEV, align 4
  %43 = load i32, i32* @ftsoptions, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @ftsoptions, align 4
  br label %48

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %23, %45
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %41, %40, %34, %33, %32, %31, %30, %29, %25
  br label %18

49:                                               ; preds = %18
  %50 = load i64, i64* @optind, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i64, i64* @optind, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 %55
  store i8** %57, i8*** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @FTS_COMFOLLOW, align 4
  %62 = load i32, i32* @ftsoptions, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @ftsoptions, align 4
  br label %64

64:                                               ; preds = %60, %49
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @FTS_PHYSICAL, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* @ftsoptions, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* @ftsoptions, align 4
  %72 = load i32, i32* @FTS_LOGICAL, align 4
  %73 = load i32, i32* @ftsoptions, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @ftsoptions, align 4
  br label %75

75:                                               ; preds = %67, %64
  br label %76

76:                                               ; preds = %115, %75
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %121

80:                                               ; preds = %76
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %121

89:                                               ; preds = %80
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 33
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 40
  br i1 %104, label %105, label %114

105:                                              ; preds = %97, %89
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %121

114:                                              ; preds = %105, %97
  br label %115

115:                                              ; preds = %114
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %5, align 8
  %118 = load i8*, i8** %116, align 8
  %119 = load i8**, i8*** %6, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %6, align 8
  store i8* %118, i8** %119, align 8
  br label %76

121:                                              ; preds = %113, %88, %76
  %122 = load i8**, i8*** %6, align 8
  %123 = load i8**, i8*** %7, align 8
  %124 = icmp eq i8** %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 (...) @usage()
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i8**, i8*** %6, align 8
  store i8* null, i8** %128, align 8
  %129 = load i32, i32* @O_RDONLY, align 4
  %130 = load i32, i32* @O_CLOEXEC, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 0)
  store i32 %132, i32* @dotfd, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @FTS_NOCHDIR, align 4
  %136 = load i32, i32* @ftsoptions, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* @ftsoptions, align 4
  br label %138

138:                                              ; preds = %134, %127
  %139 = load i8**, i8*** %5, align 8
  %140 = call i32 @find_formplan(i8** %139)
  %141 = load i8**, i8*** %7, align 8
  %142 = call i32 @find_execute(i32 %140, i8** %141)
  %143 = call i32 @exit(i32 %142) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @find_execute(i32, i8**) #1

declare dso_local i32 @find_formplan(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
