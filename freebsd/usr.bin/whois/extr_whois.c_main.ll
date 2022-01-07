; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/whois/extr_whois.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/whois/extr_whois.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"aAbc:fgh:iIklmp:PQrRS\00", align 1
@ANICHOST = common dso_local global i8* null, align 8
@PNICHOST = common dso_local global i8* null, align 8
@ABUSEHOST = common dso_local global i8* null, align 8
@optarg = common dso_local global i8* null, align 8
@FNICHOST = common dso_local global i8* null, align 8
@GNICHOST = common dso_local global i8* null, align 8
@INICHOST = common dso_local global i8* null, align 8
@IANAHOST = common dso_local global i8* null, align 8
@KNICHOST = common dso_local global i8* null, align 8
@LNICHOST = common dso_local global i8* null, align 8
@MNICHOST = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@PDBHOST = common dso_local global i8* null, align 8
@WHOIS_QUICK = common dso_local global i32 0, align 4
@RNICHOST = common dso_local global i8* null, align 8
@WHOIS_RECURSE = common dso_local global i32 0, align 4
@WHOIS_SPAM_ME = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"WHOIS_SERVER\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"RA_SERVER\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@QNICHOST_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %63, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %64

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %61 [
    i32 97, label %18
    i32 65, label %20
    i32 98, label %22
    i32 99, label %24
    i32 102, label %26
    i32 103, label %28
    i32 104, label %30
    i32 105, label %32
    i32 73, label %34
    i32 107, label %36
    i32 108, label %38
    i32 109, label %40
    i32 112, label %42
    i32 80, label %44
    i32 81, label %46
    i32 114, label %50
    i32 82, label %52
    i32 83, label %56
    i32 63, label %60
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @ANICHOST, align 8
  store i8* %19, i8** %7, align 8
  br label %63

20:                                               ; preds = %16
  %21 = load i8*, i8** @PNICHOST, align 8
  store i8* %21, i8** %7, align 8
  br label %63

22:                                               ; preds = %16
  %23 = load i8*, i8** @ABUSEHOST, align 8
  store i8* %23, i8** %7, align 8
  br label %63

24:                                               ; preds = %16
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** %6, align 8
  br label %63

26:                                               ; preds = %16
  %27 = load i8*, i8** @FNICHOST, align 8
  store i8* %27, i8** %7, align 8
  br label %63

28:                                               ; preds = %16
  %29 = load i8*, i8** @GNICHOST, align 8
  store i8* %29, i8** %7, align 8
  br label %63

30:                                               ; preds = %16
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %7, align 8
  br label %63

32:                                               ; preds = %16
  %33 = load i8*, i8** @INICHOST, align 8
  store i8* %33, i8** %7, align 8
  br label %63

34:                                               ; preds = %16
  %35 = load i8*, i8** @IANAHOST, align 8
  store i8* %35, i8** %7, align 8
  br label %63

36:                                               ; preds = %16
  %37 = load i8*, i8** @KNICHOST, align 8
  store i8* %37, i8** %7, align 8
  br label %63

38:                                               ; preds = %16
  %39 = load i8*, i8** @LNICHOST, align 8
  store i8* %39, i8** %7, align 8
  br label %63

40:                                               ; preds = %16
  %41 = load i8*, i8** @MNICHOST, align 8
  store i8* %41, i8** %7, align 8
  br label %63

42:                                               ; preds = %16
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** @port, align 8
  br label %63

44:                                               ; preds = %16
  %45 = load i8*, i8** @PDBHOST, align 8
  store i8* %45, i8** %7, align 8
  br label %63

46:                                               ; preds = %16
  %47 = load i32, i32* @WHOIS_QUICK, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %63

50:                                               ; preds = %16
  %51 = load i8*, i8** @RNICHOST, align 8
  store i8* %51, i8** %7, align 8
  br label %63

52:                                               ; preds = %16
  %53 = load i32, i32* @WHOIS_RECURSE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %63

56:                                               ; preds = %16
  %57 = load i32, i32* @WHOIS_SPAM_ME, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %63

60:                                               ; preds = %16
  br label %61

61:                                               ; preds = %16, %60
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %56, %52, %50, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18
  br label %11

64:                                               ; preds = %11
  %65 = load i64, i64* @optind, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  %70 = load i64, i64* @optind, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 %70
  store i8** %72, i8*** %5, align 8
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i8*, i8** %7, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78, %64
  %82 = call i32 (...) @usage()
  br label %83

83:                                               ; preds = %81, %78, %75
  %84 = load i8*, i8** %7, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load i8*, i8** %6, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %90, i8** %7, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %93, i8** %7, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @WHOIS_QUICK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @WHOIS_RECURSE, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %95
  br label %105

105:                                              ; preds = %104, %92, %89
  br label %106

106:                                              ; preds = %105, %86, %83
  br label %107

107:                                              ; preds = %140, %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %4, align 4
  %110 = icmp sgt i32 %108, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* @QNICHOST_TAIL, align 4
  %117 = call i32 @s_asprintf(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %115, i32 %116)
  %118 = load i8**, i8*** %5, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @whois(i8* %119, i8* %120, i32 %121)
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @free(i8* %123)
  br label %140

125:                                              ; preds = %111
  %126 = load i8**, i8*** %5, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i8*, i8** %7, align 8
  br label %136

132:                                              ; preds = %125
  %133 = load i8**, i8*** %5, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @choose_server(i8* %134)
  br label %136

136:                                              ; preds = %132, %130
  %137 = phi i8* [ %131, %130 ], [ %135, %132 ]
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @whois(i8* %127, i8* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %114
  %141 = call i32 (...) @reset_rir()
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %143, i8*** %5, align 8
  br label %107

144:                                              ; preds = %107
  %145 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @s_asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @whois(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @choose_server(i8*) #1

declare dso_local i32 @reset_rir(...) #1

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
