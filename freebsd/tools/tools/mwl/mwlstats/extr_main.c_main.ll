; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/mwl/mwlstats/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/mwl/mwlstats/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwlstatfoo = type { i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*)*, i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*)*, i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*)*, i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)* }

@.str = private unnamed_addr constant [5 x i8] c"mwl0\00", align 1
@S_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"i:lo:\00", align 1
@optarg = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"usage: %s [-a] [-i ifname] [-l] [-o fmt] [interval]\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@catchalarm = common dso_local global i32 0, align 4
@signalled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mwlstatfoo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @S_DEFAULT, align 4
  %12 = call %struct.mwlstatfoo* @mwlstats_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.mwlstatfoo* %12, %struct.mwlstatfoo** %6, align 8
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %41 [
    i32 105, label %20
    i32 108, label %27
    i32 111, label %34
  ]

20:                                               ; preds = %18
  %21 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %22 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %21, i32 0, i32 9
  %23 = load i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)** %22, align 8
  %24 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %25 = load i32, i32* @optarg, align 4
  %26 = call i32 %23(%struct.mwlstatfoo* %24, i32 %25)
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %29 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %28, i32 0, i32 8
  %30 = load i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)** %29, align 8
  %31 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 %30(%struct.mwlstatfoo* %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %145

34:                                               ; preds = %18
  %35 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %36 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %35, i32 0, i32 7
  %37 = load i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)** %36, align 8
  %38 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %39 = load i32, i32* @optarg, align 4
  %40 = call i32 %37(%struct.mwlstatfoo* %38, i32 %39)
  br label %46

41:                                               ; preds = %18
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %41, %34, %20
  br label %13

47:                                               ; preds = %13
  %48 = load i64, i64* @optind, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load i64, i64* @optind, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53
  store i8** %55, i8*** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %132

58:                                               ; preds = %47
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strtoul(i8* %61, i32* null, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32, i32* @SIGALRM, align 4
  %68 = load i32, i32* @catchalarm, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  store i64 0, i64* @signalled, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @alarm(i32 %70)
  br label %72

72:                                               ; preds = %130, %66
  %73 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %74 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %73, i32 0, i32 6
  %75 = load i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)** %74, align 8
  %76 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %77 = load i32, i32* @stdout, align 4
  %78 = call i32 %75(%struct.mwlstatfoo* %76, i32 %77)
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %131, %72
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %84 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %83, i32 0, i32 5
  %85 = load i32 (%struct.mwlstatfoo*)*, i32 (%struct.mwlstatfoo*)** %84, align 8
  %86 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %87 = call i32 %85(%struct.mwlstatfoo* %86)
  %88 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %89 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %88, i32 0, i32 4
  %90 = load i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)** %89, align 8
  %91 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %92 = load i32, i32* @stdout, align 4
  %93 = call i32 %90(%struct.mwlstatfoo* %91, i32 %92)
  %94 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %95 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %94, i32 0, i32 3
  %96 = load i32 (%struct.mwlstatfoo*)*, i32 (%struct.mwlstatfoo*)** %95, align 8
  %97 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %98 = call i32 %96(%struct.mwlstatfoo* %97)
  br label %111

99:                                               ; preds = %79
  %100 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %101 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %100, i32 0, i32 1
  %102 = load i32 (%struct.mwlstatfoo*)*, i32 (%struct.mwlstatfoo*)** %101, align 8
  %103 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %104 = call i32 %102(%struct.mwlstatfoo* %103)
  %105 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %106 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %105, i32 0, i32 2
  %107 = load i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)** %106, align 8
  %108 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %109 = load i32, i32* @stdout, align 4
  %110 = call i32 %107(%struct.mwlstatfoo* %108, i32 %109)
  br label %111

111:                                              ; preds = %99, %82
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @fflush(i32 %112)
  %114 = load i32, i32* @SIGALRM, align 4
  %115 = call i32 @sigmask(i32 %114)
  %116 = call i32 @sigblock(i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i64, i64* @signalled, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %111
  %120 = call i32 @sigpause(i32 0)
  br label %121

121:                                              ; preds = %119, %111
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @sigsetmask(i32 %122)
  store i64 0, i64* @signalled, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @alarm(i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 21
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %72

131:                                              ; preds = %121
  br label %79

132:                                              ; preds = %47
  %133 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %134 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %133, i32 0, i32 1
  %135 = load i32 (%struct.mwlstatfoo*)*, i32 (%struct.mwlstatfoo*)** %134, align 8
  %136 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %137 = call i32 %135(%struct.mwlstatfoo* %136)
  %138 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %139 = getelementptr inbounds %struct.mwlstatfoo, %struct.mwlstatfoo* %138, i32 0, i32 0
  %140 = load i32 (%struct.mwlstatfoo*, i32)*, i32 (%struct.mwlstatfoo*, i32)** %139, align 8
  %141 = load %struct.mwlstatfoo*, %struct.mwlstatfoo** %6, align 8
  %142 = load i32, i32* @stdout, align 4
  %143 = call i32 %140(%struct.mwlstatfoo* %141, i32 %142)
  br label %144

144:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %27
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.mwlstatfoo* @mwlstats_new(i8*, i32) #1

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
