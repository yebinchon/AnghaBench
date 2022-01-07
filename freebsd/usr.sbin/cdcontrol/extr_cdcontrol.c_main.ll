; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"svhf:\00", align 1
@verbose = common dso_local global i32 0, align 4
@optarg = common dso_local global i64 0, align 8
@cdname = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CDROM\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MUSIC_CD\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CD_DRIVE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DISC\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CDPLAY\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Compact Disc Control utility, version %s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Type `?' for command list\0A\0A\00", align 1
@fd = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %12

12:                                               ; preds = %19, %18, %17, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  switch i32 %15, label %22 [
    i32 -1, label %16
    i32 115, label %17
    i32 118, label %18
    i32 102, label %19
    i32 104, label %21
  ]

16:                                               ; preds = %12
  br label %24

17:                                               ; preds = %12
  store i32 0, i32* @verbose, align 4
  br label %12

18:                                               ; preds = %12
  store i32 2, i32* @verbose, align 4
  br label %12

19:                                               ; preds = %12
  %20 = load i64, i64* @optarg, align 8
  store i64 %20, i64* @cdname, align 8
  br label %12

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %12, %21
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22, %16
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %36, %25
  %44 = load i64, i64* @cdname, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i64 @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i64 %47, i64* @cdname, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i64, i64* @cdname, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = call i64 @use_cdrom_instead(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i64 %52, i64* @cdname, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i64, i64* @cdname, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i64 @use_cdrom_instead(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i64 %57, i64* @cdname, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i64, i64* @cdname, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call i64 @use_cdrom_instead(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i64 %62, i64* @cdname, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i64, i64* @cdname, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i64 @use_cdrom_instead(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i64 %67, i64* @cdname, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %4, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %126

71:                                               ; preds = %68
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %107, %71
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %4, align 4
  %76 = icmp sgt i32 %74, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %73
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %86 = getelementptr inbounds i8, i8* %85, i64 80
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  %88 = icmp uge i8* %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = call i32 (...) @usage()
  br label %91

91:                                               ; preds = %89, %77
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %94 = icmp ugt i8* %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  store i8 32, i8* %96, align 1
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i8*, i8** %9, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcpy(i8* %99, i8* %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %9, align 8
  br label %107

107:                                              ; preds = %98
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %109, i8*** %5, align 8
  br label %73

110:                                              ; preds = %73
  %111 = load i8*, i8** %9, align 8
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %113 = call i8* @parse(i8* %112, i32* %6)
  store i8* %113, i8** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @run(i32 %114, i8* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load i32, i32* @verbose, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @warn(i32* null)
  br label %124

124:                                              ; preds = %122, %119, %110
  %125 = load i32, i32* %11, align 4
  ret i32 %125

126:                                              ; preds = %68
  %127 = load i32, i32* @verbose, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @isatty(i32 0)
  store i32 %130, i32* @verbose, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, i32* @verbose, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i8*, i8** @VERSION, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %135)
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %138

138:                                              ; preds = %134, %131
  br label %139

139:                                              ; preds = %153, %138
  %140 = call i8* @input(i32* %6)
  store i8* %140, i8** %7, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @run(i32 %141, i8* %142)
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load i32, i32* @verbose, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @warn(i32* null)
  br label %150

150:                                              ; preds = %148, %145
  %151 = load i32, i32* @fd, align 4
  %152 = call i32 @close(i32 %151)
  store i32 -1, i32* @fd, align 4
  br label %153

153:                                              ; preds = %150, %139
  %154 = load i32, i32* @stdout, align 4
  %155 = call i32 @fflush(i32 %154)
  br label %139
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i64 @use_cdrom_instead(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @parse(i8*, i32*) #1

declare dso_local i32 @run(i32, i8*) #1

declare dso_local i32 @warn(i32*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @input(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
