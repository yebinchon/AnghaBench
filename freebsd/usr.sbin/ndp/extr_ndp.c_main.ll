; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndp/extr_ndp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pid = common dso_local global i32 0, align 4
@thiszone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acd:f:Ii:nprstA:HPR\00", align 1
@optarg = common dso_local global i8* null, align 8
@nflag = common dso_local global i32 0, align 4
@tflag = common dso_local global i32 0, align 4
@repeat = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"not supported yet\00", align 1

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
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = call i32 (...) @getpid()
  store i32 %9, i32* @pid, align 4
  %10 = call i32 @gmt2local(i32 0)
  store i32 %10, i32* @thiszone, align 4
  br label %11

11:                                               ; preds = %57, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %55 [
    i32 97, label %18
    i32 99, label %18
    i32 112, label %18
    i32 114, label %18
    i32 72, label %18
    i32 80, label %18
    i32 82, label %18
    i32 115, label %18
    i32 73, label %18
    i32 102, label %25
    i32 100, label %32
    i32 105, label %32
    i32 110, label %40
    i32 116, label %41
    i32 65, label %42
  ]

18:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  store i8* null, i8** %8, align 8
  br label %57

25:                                               ; preds = %16
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @file(i8* %26)
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %16, %16
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** %8, align 8
  br label %57

40:                                               ; preds = %16
  store i32 1, i32* @nflag, align 4
  br label %57

41:                                               ; preds = %16
  store i32 1, i32* @tflag, align 4
  br label %57

42:                                               ; preds = %16
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %42
  store i32 97, i32* %7, align 4
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @atoi(i8* %48)
  store i32 %49, i32* @repeat, align 4
  %50 = load i32, i32* @repeat, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %47
  br label %57

55:                                               ; preds = %16
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %54, %41, %40, %37, %23
  br label %11

58:                                               ; preds = %11
  %59 = load i64, i64* @optind, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = load i64, i64* @optind, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  store i8** %66, i8*** %5, align 8
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %154 [
    i32 97, label %68
    i32 99, label %68
    i32 100, label %78
    i32 73, label %86
    i32 112, label %88
    i32 105, label %95
    i32 114, label %100
    i32 115, label %107
    i32 72, label %123
    i32 80, label %130
    i32 82, label %137
    i32 0, label %144
  ]

68:                                               ; preds = %58, %58
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 99
  %76 = zext i1 %75 to i32
  %77 = call i32 @dump(i32 0, i32 %76)
  br label %154

78:                                               ; preds = %58
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (...) @usage()
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @delete(i8* %84)
  br label %154

86:                                               ; preds = %58
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %58, %86
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @usage()
  br label %93

93:                                               ; preds = %91, %88
  %94 = call i32 (...) @plist()
  br label %154

95:                                               ; preds = %58
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i8**, i8*** %5, align 8
  %99 = call i32 @ifinfo(i8* %96, i32 %97, i8** %98)
  br label %154

100:                                              ; preds = %58
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (...) @usage()
  br label %105

105:                                              ; preds = %103, %100
  %106 = call i32 (...) @rtrlist()
  br label %154

107:                                              ; preds = %58
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %4, align 4
  %112 = icmp sgt i32 %111, 4
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %107
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* %4, align 4
  %117 = load i8**, i8*** %5, align 8
  %118 = call i32 @set(i32 %116, i8** %117)
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  %122 = call i32 @exit(i32 %121) #3
  unreachable

123:                                              ; preds = %58
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (...) @usage()
  br label %128

128:                                              ; preds = %126, %123
  %129 = call i32 (...) @harmonize_rtr()
  br label %154

130:                                              ; preds = %58
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (...) @usage()
  br label %135

135:                                              ; preds = %133, %130
  %136 = call i32 (...) @pfx_flush()
  br label %154

137:                                              ; preds = %58
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (...) @usage()
  br label %142

142:                                              ; preds = %140, %137
  %143 = call i32 (...) @rtr_flush()
  br label %154

144:                                              ; preds = %58
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 1
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (...) @usage()
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i8**, i8*** %5, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @get(i8* %152)
  br label %154

154:                                              ; preds = %58, %149, %142, %135, %128, %105, %95, %93, %83, %73
  %155 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @gmt2local(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @file(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @dump(i32, i32) #1

declare dso_local i32 @delete(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @plist(...) #1

declare dso_local i32 @ifinfo(i8*, i32, i8**) #1

declare dso_local i32 @rtrlist(...) #1

declare dso_local i32 @set(i32, i8**) #1

declare dso_local i32 @harmonize_rtr(...) #1

declare dso_local i32 @pfx_flush(...) #1

declare dso_local i32 @rtr_flush(...) #1

declare dso_local i32 @get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
