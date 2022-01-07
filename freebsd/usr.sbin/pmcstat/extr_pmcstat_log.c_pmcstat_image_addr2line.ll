; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_image_addr2line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat_log.c_pmcstat_image_addr2line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.pmcstat_image = type { i32*, i32 }

@pmcstat_image_addr2line.addr2line_warn = internal global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"/usr/lib/debug/%s%s.debug\00", align 1
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s%s.symbols\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"addr2line -Cfe \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"WARNING: addr2line is needed for source code information.\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"WARNING: addr2line pipe error\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"WARNING: addr2line function name read error\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"WARNING: addr2line source file read error\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"WARNING: addr2line source line separator missing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmcstat_image_addr2line(%struct.pmcstat_image* %0, i64 %1, i8* %2, i64 %3, i32* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmcstat_image*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.pmcstat_image* %0, %struct.pmcstat_image** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %30 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %31 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %90

34:                                               ; preds = %7
  %35 = trunc i64 %28 to i32
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %37 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %38 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pmcstat_string_unintern(i32 %39)
  %41 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %29, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %40)
  %42 = load i32, i32* @O_RDONLY, align 4
  %43 = call i32 @open(i8* %29, i32 %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %34
  %47 = trunc i64 %28 to i32
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %49 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %50 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pmcstat_string_unintern(i32 %51)
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %29, i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %52)
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = call i32 @open(i8* %29, i32 %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = trunc i64 %28 to i32
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %61 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %62 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pmcstat_string_unintern(i32 %63)
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %29, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %64)
  br label %66

66:                                               ; preds = %58, %46
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %21, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = trunc i64 %24 to i32
  %75 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %76 = call i32* @popen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %78 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %80 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load i32, i32* @pmcstat_image_addr2line.addr2line_warn, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  store i32 1, i32* @pmcstat_image_addr2line.addr2line_warn, align 4
  %87 = call i32 @warnx(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %161

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %7
  %91 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %92 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @feof(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %98 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @ferror(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96, %90
  %103 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %105 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @pclose(i32* %106)
  %108 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %109 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %161

110:                                              ; preds = %96
  %111 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %112 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @fprintf(i32* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %115)
  %117 = load i8*, i8** %14, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %120 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32* @fgets(i8* %117, i64 %118, i32* %121)
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %161

126:                                              ; preds = %110
  %127 = load i8*, i8** %14, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 10)
  store i8* %128, i8** %16, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i8*, i8** %16, align 8
  store i8 0, i8* %132, align 1
  br label %133

133:                                              ; preds = %131, %126
  %134 = load i8*, i8** %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.pmcstat_image*, %struct.pmcstat_image** %9, align 8
  %137 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32* @fgets(i8* %134, i64 %135, i32* %138)
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %161

143:                                              ; preds = %133
  %144 = load i8*, i8** %11, align 8
  %145 = call i8* @strchr(i8* %144, i8 signext 58)
  store i8* %145, i8** %16, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %161

150:                                              ; preds = %143
  %151 = load i8*, i8** %16, align 8
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = call i32 @atoi(i8* %153)
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %20, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %161

158:                                              ; preds = %150
  %159 = load i32, i32* %20, align 4
  %160 = load i32*, i32** %13, align 8
  store i32 %159, i32* %160, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %161

161:                                              ; preds = %158, %157, %148, %141, %124, %102, %88
  %162 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %8, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @pmcstat_string_unintern(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i64, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
