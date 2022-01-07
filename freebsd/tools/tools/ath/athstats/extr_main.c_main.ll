; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athstats/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athstats/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.athstatfoo = type { i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i8*)* }

@.str = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bi:lo:z\00", align 1
@optarg = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"usage: %s [-a] [-i ifname] [-l] [-o fmt] [-z] [interval]\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@catchalarm = common dso_local global i32 0, align 4
@signalled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.athstatfoo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %9, align 4
  %13 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @getfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = call %struct.athstatfoo* @athstats_new(i8* %19, i32 %20)
  store %struct.athstatfoo* %21, %struct.athstatfoo** %6, align 8
  br label %22

22:                                               ; preds = %63, %18
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %64

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %58 [
    i32 98, label %29
    i32 105, label %30
    i32 108, label %37
    i32 111, label %44
    i32 122, label %52
  ]

29:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %63

30:                                               ; preds = %27
  %31 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %32 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %31, i32 0, i32 10
  %33 = load i32 (%struct.athstatfoo*, i8*)*, i32 (%struct.athstatfoo*, i8*)** %32, align 8
  %34 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 %33(%struct.athstatfoo* %34, i8* %35)
  br label %63

37:                                               ; preds = %27
  %38 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %39 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %38, i32 0, i32 9
  %40 = load i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i32)** %39, align 8
  %41 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 %40(%struct.athstatfoo* %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %166

44:                                               ; preds = %27
  %45 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %46 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %45, i32 0, i32 8
  %47 = load i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i32)** %46, align 8
  %48 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 @getfmt(i8* %49)
  %51 = call i32 %47(%struct.athstatfoo* %48, i32 %50)
  br label %63

52:                                               ; preds = %27
  %53 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %54 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %53, i32 0, i32 7
  %55 = load i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*)** %54, align 8
  %56 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %57 = call i32 %55(%struct.athstatfoo* %56)
  br label %63

58:                                               ; preds = %27
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %58, %52, %44, %30, %29
  br label %22

64:                                               ; preds = %22
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
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %153

75:                                               ; preds = %64
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strtoul(i8* %78, i32* null, i32 0)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load i32, i32* @SIGALRM, align 4
  %85 = load i32, i32* @catchalarm, align 4
  %86 = call i32 @signal(i32 %84, i32 %85)
  store i64 0, i64* @signalled, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @alarm(i32 %87)
  br label %89

89:                                               ; preds = %151, %83
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %94 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %93, i32 0, i32 6
  %95 = load i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i32)** %94, align 8
  %96 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %97 = load i32, i32* @stdout, align 4
  %98 = call i32 %95(%struct.athstatfoo* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %89
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %152, %99
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %105 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %104, i32 0, i32 5
  %106 = load i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*)** %105, align 8
  %107 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %108 = call i32 %106(%struct.athstatfoo* %107)
  %109 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %110 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %109, i32 0, i32 4
  %111 = load i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i32)** %110, align 8
  %112 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %113 = load i32, i32* @stdout, align 4
  %114 = call i32 %111(%struct.athstatfoo* %112, i32 %113)
  %115 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %116 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %115, i32 0, i32 3
  %117 = load i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*)** %116, align 8
  %118 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %119 = call i32 %117(%struct.athstatfoo* %118)
  br label %132

120:                                              ; preds = %100
  %121 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %122 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %121, i32 0, i32 1
  %123 = load i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*)** %122, align 8
  %124 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %125 = call i32 %123(%struct.athstatfoo* %124)
  %126 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %127 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %126, i32 0, i32 2
  %128 = load i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i32)** %127, align 8
  %129 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %130 = load i32, i32* @stdout, align 4
  %131 = call i32 %128(%struct.athstatfoo* %129, i32 %130)
  br label %132

132:                                              ; preds = %120, %103
  %133 = load i32, i32* @stdout, align 4
  %134 = call i32 @fflush(i32 %133)
  %135 = load i32, i32* @SIGALRM, align 4
  %136 = call i32 @sigmask(i32 %135)
  %137 = call i32 @sigblock(i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i64, i64* @signalled, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %132
  %141 = call i32 @sigpause(i32 0)
  br label %142

142:                                              ; preds = %140, %132
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @sigsetmask(i32 %143)
  store i64 0, i64* @signalled, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @alarm(i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, 21
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %89

152:                                              ; preds = %142
  br label %100

153:                                              ; preds = %64
  %154 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %155 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %154, i32 0, i32 1
  %156 = load i32 (%struct.athstatfoo*)*, i32 (%struct.athstatfoo*)** %155, align 8
  %157 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %158 = call i32 %156(%struct.athstatfoo* %157)
  %159 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %160 = getelementptr inbounds %struct.athstatfoo, %struct.athstatfoo* %159, i32 0, i32 0
  %161 = load i32 (%struct.athstatfoo*, i32)*, i32 (%struct.athstatfoo*, i32)** %160, align 8
  %162 = load %struct.athstatfoo*, %struct.athstatfoo** %6, align 8
  %163 = load i32, i32* @stdout, align 4
  %164 = call i32 %161(%struct.athstatfoo* %162, i32 %163)
  br label %165

165:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %37
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.athstatfoo* @athstats_new(i8*, i32) #1

declare dso_local i32 @getfmt(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @sigpause(i32) #1

declare dso_local i32 @sigsetmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
