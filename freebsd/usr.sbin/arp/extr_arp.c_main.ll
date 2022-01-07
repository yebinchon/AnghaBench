; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"andfsSi:\00", align 1
@nflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i64 0, align 8
@rifname = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"-i not applicable to this operation\00", align 1
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"interface %s does not exist\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"if_nametoindex(%s)\00", align 1
@ARP_XO_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"arp\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"arp-cache\00", align 1
@print_entry = common dso_local global i32 0, align 4
@nuke_entry = common dso_local global i32 0, align 4
@ifnameindex = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @xo_parse_args(i32 %10, i8** %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %38 [
    i32 97, label %25
    i32 100, label %26
    i32 110, label %28
    i32 83, label %29
    i32 115, label %31
    i32 102, label %33
    i32 105, label %35
    i32 63, label %37
  ]

25:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %40

26:                                               ; preds = %23
  %27 = call i32 @SETFUNC(i32 132)
  br label %40

28:                                               ; preds = %23
  store i32 1, i32* @nflag, align 4
  br label %40

29:                                               ; preds = %23
  %30 = call i32 @SETFUNC(i32 129)
  br label %40

31:                                               ; preds = %23
  %32 = call i32 @SETFUNC(i32 128)
  br label %40

33:                                               ; preds = %23
  %34 = call i32 @SETFUNC(i32 131)
  br label %40

35:                                               ; preds = %23
  %36 = load i64, i64* @optarg, align 8
  store i64 %36, i64* @rifname, align 8
  br label %40

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %23, %37
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %35, %33, %31, %29, %28, %26, %25
  br label %18

41:                                               ; preds = %18
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  store i32 130, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i64, i64* @rifname, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 130
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 132
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62, %59
  %66 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62, %56
  %68 = load i64, i64* @rifname, align 8
  %69 = call i64 @if_nametoindex(i64 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @ENXIO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* @rifname, align 8
  %77 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %81

78:                                               ; preds = %71
  %79 = load i64, i64* @rifname, align 8
  %80 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i32, i32* %7, align 4
  switch i32 %84, label %169 [
    i32 130, label %85
    i32 128, label %114
    i32 129, label %114
    i32 132, label %137
    i32 131, label %159
  ]

85:                                               ; preds = %83
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @usage()
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* @ARP_XO_VERSION, align 4
  %95 = call i32 @xo_set_version(i32 %94)
  %96 = call i32 @xo_open_container(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @xo_open_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @print_entry, align 4
  %99 = call i32 @search(i32 0, i32 %98)
  %100 = call i32 @xo_close_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %101 = call i32 @xo_close_container(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %102 = call i32 (...) @xo_finish()
  br label %113

103:                                              ; preds = %85
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 (...) @usage()
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @get(i8* %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %108, %93
  br label %169

114:                                              ; preds = %83, %83
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %4, align 4
  %119 = icmp sgt i32 %118, 6
  br i1 %119, label %120, label %122

120:                                              ; preds = %117, %114
  %121 = call i32 (...) @usage()
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 129
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @delete(i8* %128)
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %4, align 4
  %132 = load i8**, i8*** %5, align 8
  %133 = call i32 @set(i32 %131, i8** %132)
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  store i32 %136, i32* %8, align 4
  br label %169

137:                                              ; preds = %83
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32 (...) @usage()
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32, i32* @nuke_entry, align 4
  %147 = call i32 @search(i32 0, i32 %146)
  br label %158

148:                                              ; preds = %137
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 1
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 (...) @usage()
  br label %153

153:                                              ; preds = %151, %148
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @delete(i8* %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %153, %145
  br label %169

159:                                              ; preds = %83
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = call i32 (...) @usage()
  br label %164

164:                                              ; preds = %162, %159
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @file(i8* %167)
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %83, %164, %158, %130, %113
  %170 = load i32*, i32** @ifnameindex, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32*, i32** @ifnameindex, align 8
  %174 = call i32 @if_freenameindex(i32* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %8, align 4
  ret i32 %176
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @SETFUNC(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @xo_errx(i32, i8*, ...) #1

declare dso_local i64 @if_nametoindex(i64) #1

declare dso_local i32 @xo_err(i32, i8*, i64) #1

declare dso_local i32 @xo_set_version(i32) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @search(i32, i32) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_finish(...) #1

declare dso_local i32 @get(i8*) #1

declare dso_local i32 @delete(i8*) #1

declare dso_local i32 @set(i32, i8**) #1

declare dso_local i32 @file(i8*) #1

declare dso_local i32 @if_freenameindex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
