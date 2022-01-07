; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/npe/npestats/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/npe/npestats/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npestatfoo = type { i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*)*, i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*)*, i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*)*, i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i8*)* }

@.str = private unnamed_addr constant [4 x i8] c"NPE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"npe0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bi:lo:z\00", align 1
@optarg = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"usage: %s [-a] [-i ifname] [-l] [-o fmt] [interval]\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@catchalarm = common dso_local global i32 0, align 4
@signalled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.npestatfoo*, align 8
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @getfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %20 = call %struct.npestatfoo* @npestats_new(i8* %18, i32 %19)
  store %struct.npestatfoo* %20, %struct.npestatfoo** %6, align 8
  br label %21

21:                                               ; preds = %56, %17
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %51 [
    i32 98, label %28
    i32 105, label %29
    i32 108, label %36
    i32 111, label %43
  ]

28:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %56

29:                                               ; preds = %26
  %30 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %31 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %30, i32 0, i32 9
  %32 = load i32 (%struct.npestatfoo*, i8*)*, i32 (%struct.npestatfoo*, i8*)** %31, align 8
  %33 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 %32(%struct.npestatfoo* %33, i8* %34)
  br label %56

36:                                               ; preds = %26
  %37 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %38 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %37, i32 0, i32 8
  %39 = load i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)** %38, align 8
  %40 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 %39(%struct.npestatfoo* %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %159

43:                                               ; preds = %26
  %44 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %45 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %44, i32 0, i32 7
  %46 = load i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)** %45, align 8
  %47 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @getfmt(i8* %48)
  %50 = call i32 %46(%struct.npestatfoo* %47, i32 %49)
  br label %56

51:                                               ; preds = %26
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %51, %43, %29, %28
  br label %21

57:                                               ; preds = %21
  %58 = load i64, i64* @optind, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i64, i64* @optind, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 %63
  store i8** %65, i8*** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %146

68:                                               ; preds = %57
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strtoul(i8* %71, i32* null, i32 0)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* @SIGALRM, align 4
  %78 = load i32, i32* @catchalarm, align 4
  %79 = call i32 @signal(i32 %77, i32 %78)
  store i64 0, i64* @signalled, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @alarm(i32 %80)
  br label %82

82:                                               ; preds = %144, %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %87 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %86, i32 0, i32 6
  %88 = load i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)** %87, align 8
  %89 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 %88(%struct.npestatfoo* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %82
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %145, %92
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %98 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %97, i32 0, i32 5
  %99 = load i32 (%struct.npestatfoo*)*, i32 (%struct.npestatfoo*)** %98, align 8
  %100 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %101 = call i32 %99(%struct.npestatfoo* %100)
  %102 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %103 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %102, i32 0, i32 4
  %104 = load i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)** %103, align 8
  %105 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %106 = load i32, i32* @stdout, align 4
  %107 = call i32 %104(%struct.npestatfoo* %105, i32 %106)
  %108 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %109 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %108, i32 0, i32 3
  %110 = load i32 (%struct.npestatfoo*)*, i32 (%struct.npestatfoo*)** %109, align 8
  %111 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %112 = call i32 %110(%struct.npestatfoo* %111)
  br label %125

113:                                              ; preds = %93
  %114 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %115 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %114, i32 0, i32 1
  %116 = load i32 (%struct.npestatfoo*)*, i32 (%struct.npestatfoo*)** %115, align 8
  %117 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %118 = call i32 %116(%struct.npestatfoo* %117)
  %119 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %120 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %119, i32 0, i32 2
  %121 = load i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)** %120, align 8
  %122 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %123 = load i32, i32* @stdout, align 4
  %124 = call i32 %121(%struct.npestatfoo* %122, i32 %123)
  br label %125

125:                                              ; preds = %113, %96
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 @fflush(i32 %126)
  %128 = load i32, i32* @SIGALRM, align 4
  %129 = call i32 @sigmask(i32 %128)
  %130 = call i32 @sigblock(i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i64, i64* @signalled, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = call i32 @sigpause(i32 0)
  br label %135

135:                                              ; preds = %133, %125
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @sigsetmask(i32 %136)
  store i64 0, i64* @signalled, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @alarm(i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, 21
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %82

145:                                              ; preds = %135
  br label %93

146:                                              ; preds = %57
  %147 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %148 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %147, i32 0, i32 1
  %149 = load i32 (%struct.npestatfoo*)*, i32 (%struct.npestatfoo*)** %148, align 8
  %150 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %151 = call i32 %149(%struct.npestatfoo* %150)
  %152 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %153 = getelementptr inbounds %struct.npestatfoo, %struct.npestatfoo* %152, i32 0, i32 0
  %154 = load i32 (%struct.npestatfoo*, i32)*, i32 (%struct.npestatfoo*, i32)** %153, align 8
  %155 = load %struct.npestatfoo*, %struct.npestatfoo** %6, align 8
  %156 = load i32, i32* @stdout, align 4
  %157 = call i32 %154(%struct.npestatfoo* %155, i32 %156)
  br label %158

158:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %36
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.npestatfoo* @npestats_new(i8*, i32) #1

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
