; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"ackms:\00", align 1
@all_locales = common dso_local global i32 0, align 4
@prt_categories = common dso_local global i32 0, align 4
@prt_keywords = common dso_local global i32 0, align 4
@all_charmaps = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kwinfo = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %20 [
    i32 97, label %16
    i32 99, label %17
    i32 107, label %18
    i32 109, label %19
  ]

16:                                               ; preds = %14
  store i32 1, i32* @all_locales, align 4
  br label %22

17:                                               ; preds = %14
  store i32 1, i32* @prt_categories, align 4
  br label %22

18:                                               ; preds = %14
  store i32 1, i32* @prt_keywords, align 4
  br label %22

19:                                               ; preds = %14
  store i32 1, i32* @all_charmaps, align 4
  br label %22

20:                                               ; preds = %14
  %21 = call i32 (...) @usage()
  br label %22

22:                                               ; preds = %20, %19, %18, %17, %16
  br label %9

23:                                               ; preds = %9
  %24 = load i64, i64* @optind, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* @optind, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 %29
  store i8** %31, i8*** %5, align 8
  %32 = load i32, i32* @all_locales, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i32, i32* @all_charmaps, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %34, %23
  %40 = load i32, i32* @all_locales, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @all_charmaps, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (...) @usage()
  br label %50

50:                                               ; preds = %48, %45, %42
  %51 = load i32, i32* @all_locales, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @all_charmaps, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @prt_categories, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @prt_keywords, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @usage()
  br label %64

64:                                               ; preds = %62, %59, %53
  %65 = load i32, i32* @all_locales, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 (...) @list_locales()
  %69 = call i32 @exit(i32 0) #3
  unreachable

70:                                               ; preds = %64
  %71 = load i32, i32* @all_charmaps, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call i32 (...) @list_charmaps()
  %75 = call i32 @exit(i32 0) #3
  unreachable

76:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  %77 = load i32, i32* @prt_keywords, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcasecmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @showkeywordslist(i8* %101)
  %103 = call i32 @exit(i32 0) #3
  unreachable

104:                                              ; preds = %87
  br label %83

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %105, %79, %76
  %107 = load i32, i32* @prt_categories, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @prt_keywords, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %159

115:                                              ; preds = %112, %109, %106
  %116 = load i32, i32* @prt_keywords, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118, %115
  %122 = load i32, i32* @LC_ALL, align 4
  %123 = call i32 @setlocale(i32 %122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %4, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %131, %127
  %129 = load i32, i32* %4, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @showdetails(i8* %133)
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %5, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %4, align 4
  br label %128

139:                                              ; preds = %128
  br label %157

140:                                              ; preds = %124
  store i64 0, i64* %8, align 8
  br label %141

141:                                              ; preds = %153, %140
  %142 = load i64, i64* %8, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kwinfo, align 8
  %144 = call i64 @nitems(%struct.TYPE_3__* %143)
  %145 = icmp ult i64 %142, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kwinfo, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @showdetails(i8* %151)
  br label %153

153:                                              ; preds = %146
  %154 = load i64, i64* %8, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %8, align 8
  br label %141

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156, %139
  %158 = call i32 @exit(i32 0) #3
  unreachable

159:                                              ; preds = %112
  %160 = call i32 (...) @showlocale()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @list_locales(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @list_charmaps(...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @showkeywordslist(i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @showdetails(i8*) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @showlocale(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
