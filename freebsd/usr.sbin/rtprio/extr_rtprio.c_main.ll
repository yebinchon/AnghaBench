; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtprio/extr_rtprio.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtprio/extr_rtprio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtprio = type { i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"rtprio\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"idprio\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid progname\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@RTP_LOOKUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"RTP_LOOKUP\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"realtime priority %d\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"normal priority\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"idle priority %d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"invalid priority type %d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@RTP_SET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"RTP_SET\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"execvp: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rtprio, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = call i8* (...) @getprogname()
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 0
  store i32 128, i32* %14, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 0
  store i32 130, i32* %20, align 8
  br label %23

21:                                               ; preds = %15
  %22 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %59 [
    i32 2, label %26
    i32 1, label %33
  ]

26:                                               ; preds = %24
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @parseint(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @abs(i8* %31)
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %24, %26
  %34 = load i32, i32* @RTP_LOOKUP, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @rtprio(i32 %34, i8* %35, %struct.rtprio* %6)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %53 [
    i32 128, label %43
    i32 131, label %43
    i32 129, label %47
    i32 130, label %49
  ]

43:                                               ; preds = %40, %40
  %44 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  br label %57

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %57

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  br label %57

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %49, %47, %43
  %58 = call i32 @exit(i32 0) #3
  unreachable

59:                                               ; preds = %24
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @isdigit(i8 signext %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %67, %59
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 45
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 0
  store i32 129, i32* %90, align 8
  %91 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 1
  store i8* null, i8** %91, align 8
  br label %94

92:                                               ; preds = %83
  %93 = call i32 (...) @usage()
  br label %142

94:                                               ; preds = %89
  br label %101

95:                                               ; preds = %75
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @parseint(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %100 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %6, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  br label %101

101:                                              ; preds = %95, %94
  br label %104

102:                                              ; preds = %67
  %103 = call i32 (...) @usage()
  br label %142

104:                                              ; preds = %101
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 2
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 45
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @parseint(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %116, i8** %8, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = call i8* @abs(i8* %117)
  store i8* %118, i8** %8, align 8
  br label %119

119:                                              ; preds = %112, %104
  %120 = load i32, i32* @RTP_SET, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @rtprio(i32 %120, i8* %121, %struct.rtprio* %6)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119
  %127 = load i8*, i8** %8, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** %5, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 2
  %135 = call i32 @execvp(i8* %132, i8** %134)
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 2
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %129, %126
  %141 = call i32 @exit(i32 0) #3
  unreachable

142:                                              ; preds = %102, %92
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i8* @getprogname(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @parseint(i8*, i8*) #1

declare dso_local i8* @abs(i8*) #1

declare dso_local i32 @rtprio(i32, i8*, %struct.rtprio*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @warnx(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
