; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/netfibs/extr_reflect.c_reflect_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/netfibs/extr_reflect.c_reflect_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Input too long\00", align 1
@accepts = common dso_local global i64 0, align 8
@nostart = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"START \00", align 1
@EX_PROTOCOL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Not received START on first connect: %s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"START without test case name: %s\00", align 1
@testcase = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"START test case does not match '%s': '%s'\00", align 1
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"<< %s: %s\0A\00", align 1
@reflectfib = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"FIB %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c">> %s: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"ignored expected: sendto(%s, %zd)\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"write(%s, %zd)\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"short write(%s, %zd) %zd\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32, %struct.sockaddr*, i32)* @reflect_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reflect_conn(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @EX_OSERR, align 4
  %19 = call i32 (i32, i8*, ...) @err(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %6
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EX_NOINPUT, align 4
  %25 = call i32 (i32, i8*, ...) @errx(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %10, align 8
  %30 = sub i64 %29, 1
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EX_DATAERR, align 4
  %34 = call i32 (i32, i8*, ...) @errx(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i64, i64* @accepts, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %35
  %44 = load i64, i64* @nostart, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @EX_PROTOCOL, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i32, i8*, ...) @errx(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @EX_PROTOCOL, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 (i32, i8*, ...) @errx(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  %64 = load i8*, i8** @testcase, align 8
  %65 = call i64 @strcmp(i8* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* @EX_PROTOCOL, align 4
  %69 = load i8*, i8** @testcase, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = call i32 (i32, i8*, ...) @errx(i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %69, i8* %71)
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %43, %35
  %75 = load i64, i64* @debug, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** @testcase, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i64, i64* @reflectfib, align 8
  %84 = icmp ne i64 %83, -1
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @reflectfib, align 8
  %89 = call i32 @snprintf(i8* %86, i64 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %88)
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i64, i64* @debug, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8*, i8** @testcase, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %93, %90
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 10, i8* %108, align 1
  %109 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %110 = icmp ne %struct.sockaddr* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @sendto(i32 %112, i8* %113, i32 %114, i32 0, %struct.sockaddr* %115, i32 %116)
  store i32 %117, i32* %14, align 4
  br label %123

118:                                              ; preds = %103
  %119 = load i32, i32* %8, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @write(i32 %119, i8* %120, i32 %121)
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %118, %111
  %124 = load i32, i32* %14, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %128 = icmp ne %struct.sockaddr* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i64, i64* @errno, align 8
  %131 = load i64, i64* @EHOSTUNREACH, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %134, i32 %135)
  br label %164

137:                                              ; preds = %129, %126, %123
  %138 = load i32, i32* %14, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %142 = icmp eq %struct.sockaddr* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* @errno, align 8
  %145 = load i64, i64* @EHOSTUNREACH, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143, %140
  %148 = load i32, i32* @EX_OSERR, align 4
  %149 = load i8*, i8** %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 (i32, i8*, ...) @err(i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %149, i32 %150)
  br label %163

152:                                              ; preds = %143, %137
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* @EX_OSERR, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 (i32, i8*, ...) @err(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %156, %152
  br label %163

163:                                              ; preds = %162, %147
  br label %164

164:                                              ; preds = %163, %133
  %165 = load i64, i64* @accepts, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* @accepts, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = call i64 @strncmp(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 -2, i32* %7, align 4
  br label %172

171:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %171, %170
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
