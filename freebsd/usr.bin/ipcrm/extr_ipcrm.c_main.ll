; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ipcrm/extr_ipcrm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ipcrm/extr_ipcrm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"q:m:s:Q:M:S:vWy\00", align 1
@signaled = common dso_local global i64 0, align 8
@rmverbose = common dso_local global i32 0, align 4
@use_sysctl = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@errflg = common dso_local global i64 0, align 8
@SIGSYS = common dso_local global i32 0, align 4
@not_configured = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%sid(%d): \00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%ss are not configured in the running kernel\00", align 1
@IPC_PRIVATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't remove private %ss\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%ss(%ld): \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"option -%c requires an argument\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"unrecognized option: -%c\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"unknown argument: %s\0A\00", align 1

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
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  store i64 0, i64* @signaled, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %21 [
    i32 118, label %17
    i32 121, label %20
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @rmverbose, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @rmverbose, align 4
  br label %21

20:                                               ; preds = %15
  store i32 0, i32* @use_sysctl, align 4
  br label %21

21:                                               ; preds = %15, %20, %17
  br label %10

22:                                               ; preds = %10
  store i32 1, i32* @optind, align 4
  store i64 0, i64* @errflg, align 8
  %23 = load i32, i32* @SIGSYS, align 4
  %24 = load i32, i32* @not_configured, align 4
  %25 = call i32 @signal(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %132, %78, %22
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %133

31:                                               ; preds = %26
  store i64 0, i64* @signaled, align 8
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %132 [
    i32 113, label %33
    i32 109, label %33
    i32 115, label %33
    i32 81, label %72
    i32 77, label %72
    i32 83, label %72
    i32 118, label %117
    i32 121, label %117
    i32 87, label %118
    i32 58, label %122
    i32 63, label %127
  ]

33:                                               ; preds = %31, %31, %31
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @atoi(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 113
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @msgrm(i32 0, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 109
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @shmrm(i32 0, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @semrm(i32 0, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i64, i64* @errflg, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* @errflg, align 8
  %57 = load i64, i64* @signaled, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @toupper(i32 %60) #4
  %62 = call i32 @IPC_TO_STR(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @toupper(i32 %66) #4
  %68 = call i32 @IPC_TO_STRING(i32 %67)
  %69 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %51
  br label %132

72:                                               ; preds = %31, %31, %31
  %73 = load i32, i32* @optarg, align 4
  %74 = call i32 @atol(i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @IPC_PRIVATE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @IPC_TO_STRING(i32 %79)
  %81 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %26

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 81
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @msgrm(i32 %86, i32 0)
  store i32 %87, i32* %7, align 4
  br label %98

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 77
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @shmrm(i32 %92, i32 0)
  store i32 %93, i32* %7, align 4
  br label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @semrm(i32 %95, i32 0)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i64, i64* @errflg, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* @errflg, align 8
  %104 = load i64, i64* @signaled, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @IPC_TO_STR(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %109)
  br label %115

111:                                              ; preds = %101
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @IPC_TO_STRING(i32 %112)
  %114 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %106
  br label %116

116:                                              ; preds = %115, %98
  br label %132

117:                                              ; preds = %31, %31
  br label %132

118:                                              ; preds = %31
  %119 = call i32 @msgrm(i32 -1, i32 0)
  %120 = call i32 @shmrm(i32 -1, i32 0)
  %121 = call i32 @semrm(i32 -1, i32 0)
  br label %132

122:                                              ; preds = %31
  %123 = load i32, i32* @stderr, align 4
  %124 = load i32, i32* @optopt, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = call i32 (...) @usage()
  br label %127

127:                                              ; preds = %31, %122
  %128 = load i32, i32* @stderr, align 4
  %129 = load i32, i32* @optopt, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = call i32 (...) @usage()
  br label %132

132:                                              ; preds = %127, %31, %118, %117, %116, %71
  br label %26

133:                                              ; preds = %26
  %134 = load i32, i32* @optind, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i32, i32* @stderr, align 4
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* @optind, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  %145 = call i32 (...) @usage()
  br label %146

146:                                              ; preds = %137, %133
  %147 = load i64, i64* @errflg, align 8
  %148 = call i32 @exit(i64 %147) #5
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @msgrm(i32, i32) #1

declare dso_local i32 @shmrm(i32, i32) #1

declare dso_local i32 @semrm(i32, i32) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local i32 @IPC_TO_STR(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @IPC_TO_STRING(i32) #1

declare dso_local i32 @atol(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i64) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
