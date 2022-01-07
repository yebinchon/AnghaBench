; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/w/extr_w.c_pr_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/w/extr_w.c_pr_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.sbuf = type { i32 }

@use_ampm = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%l:%M%p\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%k:%M\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"{:time-of-day/%s} \00", align 1
@CLOCK_UPTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" up\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"{e:uptime/%lu}\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"{e:days/%d}{e:hours/%d}{e:minutes/%d}{e:seconds/%d}\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" %d day%s,\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" %2d:%02d,\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" %d hr%s,\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" %d min%s,\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c" %d sec%s,\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Could not generate output\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"{:uptime-human/%s}\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c" {:users/%d} {Np:user,users}\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c", no load average information available\0A\00", align 1
@pr_header.format = internal global [3 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str.17 = private unnamed_addr constant [24 x i8] c" {:load-average-1/%.2f}\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c" {:load-average-5/%.2f}\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c" {:load-average-15/%.2f}\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c", load averages:\00", align 1
@use_comma = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pr_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_header(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x double], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca %struct.sbuf*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %15, %struct.sbuf** %14, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %17 = load i64, i64* @use_ampm, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @localtime(i32* %21)
  %23 = call i64 @strftime(i8* %16, i32 256, i8* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %27 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @CLOCK_UPTIME, align 4
  %30 = call i32 @clock_gettime(i32 %29, %struct.timespec* %7)
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %128

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 60
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 30
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 86400
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = srem i32 %43, 86400
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %45, 3600
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = srem i32 %47, 3600
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sdiv i32 %49, 60
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = srem i32 %51, 60
  store i32 %52, i32* %12, align 4
  %53 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %40
  %66 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 1
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %72 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %67, i8* %71)
  br label %73

73:                                               ; preds = %65, %40
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %81, i32 %82)
  br label %116

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %90, 1
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %94 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %89, i8* %93)
  br label %115

95:                                               ; preds = %84
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %101, 1
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %105 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %100, i8* %104)
  br label %114

106:                                              ; preds = %95
  %107 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %109, 1
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %113 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %108, i8* %112)
  br label %114

114:                                              ; preds = %106, %98
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115, %79
  %117 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %118 = call i64 @sbuf_finish(%struct.sbuf* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %116
  %123 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %124 = call i32 @sbuf_data(%struct.sbuf* %123)
  %125 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %124)
  %126 = load %struct.sbuf*, %struct.sbuf** %14, align 8
  %127 = call i32 @sbuf_delete(%struct.sbuf* %126)
  br label %128

128:                                              ; preds = %122, %28
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %129)
  %131 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %132 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %133 = call i64 @nitems(double* %132)
  %134 = call i32 @getloadavg(double* %131, i64 %133)
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  br label %169

138:                                              ; preds = %128
  %139 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %164, %138
  %141 = load i32, i32* %10, align 4
  %142 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %143 = call i64 @nitems(double* %142)
  %144 = trunc i64 %143 to i32
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %140
  %147 = load i64, i64* @use_comma, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* %10, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %149, %146
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [3 x i8*], [3 x i8*]* @pr_header.format, i64 0, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %160
  %162 = load double, double* %161, align 8
  %163 = call i32 (i8*, ...) @xo_emit(i8* %158, double %162)
  br label %164

164:                                              ; preds = %154
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %140

167:                                              ; preds = %140
  %168 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %136
  ret void
}

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i64 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, ...) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @getloadavg(double*, i64) #1

declare dso_local i64 @nitems(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
