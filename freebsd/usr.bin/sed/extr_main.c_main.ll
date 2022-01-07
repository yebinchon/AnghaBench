; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@inplace = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"EI:ae:f:i:lnru\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@rflags = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ispan = common dso_local global i32 0, align 4
@aflag = common dso_local global i32 0, align 4
@eflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CU_STRING = common dso_local global i32 0, align 4
@CU_FILE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"setting line buffered output failed\00", align 1
@nflag = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"setting unbuffered output failed\00", align 1
@optind = common dso_local global i64 0, align 8
@prog = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@rval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @LC_ALL, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i8* null, i8** @inplace, align 8
  br label %11

11:                                               ; preds = %66, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %67

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %63 [
    i32 114, label %18
    i32 69, label %18
    i32 73, label %20
    i32 97, label %22
    i32 101, label %23
    i32 102, label %40
    i32 105, label %44
    i32 108, label %46
    i32 110, label %54
    i32 117, label %55
    i32 63, label %64
  ]

18:                                               ; preds = %16, %16
  %19 = load i32, i32* @REG_EXTENDED, align 4
  store i32 %19, i32* @rflags, align 4
  br label %66

20:                                               ; preds = %16
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @inplace, align 8
  store i32 1, i32* @ispan, align 4
  br label %66

22:                                               ; preds = %16
  store i32 1, i32* @aflag, align 4
  br label %66

23:                                               ; preds = %16
  store i32 1, i32* @eflag, align 4
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 %25, 2
  %27 = call i8* @malloc(i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @strcpy(i8* %32, i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @CU_STRING, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @add_compunit(i32 %37, i8* %38)
  br label %66

40:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  %41 = load i32, i32* @CU_FILE, align 4
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i32 @add_compunit(i32 %41, i8* %42)
  br label %66

44:                                               ; preds = %16
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @inplace, align 8
  store i32 0, i32* @ispan, align 4
  br label %66

46:                                               ; preds = %16
  %47 = load i32, i32* @stdout, align 4
  %48 = load i32, i32* @_IOLBF, align 4
  %49 = call i32 @setvbuf(i32 %47, i32* null, i32 %48, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  br label %66

54:                                               ; preds = %16
  store i32 1, i32* @nflag, align 4
  br label %66

55:                                               ; preds = %16
  %56 = load i32, i32* @stdout, align 4
  %57 = load i32, i32* @_IONBF, align 4
  %58 = call i32 @setvbuf(i32 %56, i32* null, i32 %57, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  br label %66

63:                                               ; preds = %16
  br label %64

64:                                               ; preds = %16, %63
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %62, %54, %53, %44, %40, %31, %22, %20, %18
  br label %11

67:                                               ; preds = %11
  %68 = load i64, i64* @optind, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* @optind, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 %73
  store i8** %75, i8*** %5, align 8
  %76 = load i32, i32* @eflag, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* @CU_STRING, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @add_compunit(i32 %86, i8* %88)
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %5, align 8
  br label %92

92:                                               ; preds = %85, %81, %78, %67
  %93 = call i32 (...) @compile()
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %106, %97
  %99 = load i8**, i8*** %5, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @add_file(i8* %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %108, i8*** %5, align 8
  br label %98

109:                                              ; preds = %98
  br label %112

110:                                              ; preds = %92
  %111 = call i32 @add_file(i8* null)
  br label %112

112:                                              ; preds = %110, %109
  %113 = call i32 (...) @process()
  %114 = load i32, i32* @prog, align 4
  %115 = call i32 @cfclose(i32 %114, i32* null)
  %116 = load i32, i32* @stdout, align 4
  %117 = call i64 @fclose(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %112
  %122 = load i32, i32* @rval, align 4
  %123 = call i32 @exit(i32 %122) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @add_compunit(i32, i8*) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @compile(...) #1

declare dso_local i32 @add_file(i8*) #1

declare dso_local i32 @process(...) #1

declare dso_local i32 @cfclose(i32, i32*) #1

declare dso_local i64 @fclose(i32) #1

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
