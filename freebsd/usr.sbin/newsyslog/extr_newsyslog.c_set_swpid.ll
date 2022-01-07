; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_set_swpid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_set_swpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigwork_entry = type { i32, i64, i8* }
%struct.conf_entry = type { i32, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@MIN_PID = common dso_local global i64 0, align 8
@MAX_PID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@CE_SIGNALGROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"process-group\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@enforcepid = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"pid file doesn't exist: %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"can't open pid file: %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"pid/cmd file is empty: %s\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"can't read from pid file: %s\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"pid file does not start with a valid number: %s\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"bad value '%ld' for process number in %s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"\09(expecting value between %ld and %ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sigwork_entry*, %struct.conf_entry*)* @set_swpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_swpid(%struct.sigwork_entry* %0, %struct.conf_entry* %1) #0 {
  %3 = alloca %struct.sigwork_entry*, align 8
  %4 = alloca %struct.conf_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sigwork_entry* %0, %struct.sigwork_entry** %3, align 8
  store %struct.conf_entry* %1, %struct.conf_entry** %4, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i64, i64* @MIN_PID, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @MAX_PID, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %21 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %23 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %25 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %24, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %27 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CE_SIGNALGROUP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i64, i64* @MAX_PID, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* @MIN_PID, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %7, align 8
  %37 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %38 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %37, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %41 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32* @fopen(i64 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @ENOENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i64, i64* @enforcepid, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %55 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %57 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  br label %65

60:                                               ; preds = %50, %46
  %61 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %62 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %60, %53
  store i32 1, i32* %13, align 4
  br label %150

66:                                               ; preds = %39
  %67 = load i32, i32* @BUFSIZ, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32* @fgets(i8* %17, i32 %67, i32* %68)
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @feof(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i64, i64* @enforcepid, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %80 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %82 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %83)
  br label %90

85:                                               ; preds = %75, %71
  %86 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %87 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @fclose(i32* %91)
  store i32 1, i32* %13, align 4
  br label %150

93:                                               ; preds = %66
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @fclose(i32* %94)
  store i64 0, i64* @errno, align 8
  store i8* %17, i8** %10, align 8
  br label %96

96:                                               ; preds = %101, %93
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  br label %96

104:                                              ; preds = %96
  %105 = load i8*, i8** %10, align 8
  %106 = call i64 @strtol(i8* %105, i8** %9, i32 10)
  store i64 %106, i64* %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load i8*, i8** %9, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @isspacech(i8 signext %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %118 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 %119)
  br label %149

121:                                              ; preds = %111, %104
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %6, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125, %121
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %132 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %130, i64 %133)
  %135 = load i64, i64* @verbose, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %137, %129
  br label %148

142:                                              ; preds = %125
  %143 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %144 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %147 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %142, %141
  br label %149

149:                                              ; preds = %148, %116
  store i32 1, i32* %13, align 4
  br label %150

150:                                              ; preds = %149, %90, %65
  %151 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %151)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i64, i8*) #2

declare dso_local i32 @warnx(i8*, i64, ...) #2

declare dso_local i32 @warn(i8*, i64) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @isspacech(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
