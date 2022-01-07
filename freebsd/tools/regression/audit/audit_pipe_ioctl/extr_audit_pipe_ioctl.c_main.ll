; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/audit/audit_pipe_ioctl/extr_audit_pipe_ioctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/audit/audit_pipe_ioctl/extr_audit_pipe_ioctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"/dev/auditpipe\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@AUDITPIPE_GET_QLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"AUDITPIPE_GET_QLEN\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"AUDITPIPE_GET_QLEN: unchanged\00", align 1
@AUDITPIPE_GET_QLIMIT_MIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"AUDITPIPE_GET_QLIMIT_MIN\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"AUDITPIPE_GET_QLIMIT_MIN: unchanged\00", align 1
@AUDITPIPE_GET_QLIMIT_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"AUDITPIPE_GET_QLIMIT_MAX\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"AUDITPIPE_GET_QLIMIT_MAX: unchanged\00", align 1
@AUDITPIPE_GET_QLIMIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"AUDITPIPE_GET_QLIMIT\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"AUDITPIPE_GET_QLIMIT: unchanged\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"queue length < minlen\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"queue length > maxlen\00", align 1
@AUDITPIPE_SET_QLIMIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"AUDITPIPE_SET_QLIMIT(min)\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"set to minlen didn't work\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"AUDITPIPE_SET_QLIMIT(max)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"AUDITPIPE_GETQLIMIT\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"set to maxlen didn't work\00", align 1
@AUDITPIPE_GET_INSERTS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"AUDITPIPE_GET_INSERTS\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"AUDITPIPE_GET_INSERTS: unchanged\00", align 1
@AUDITPIPE_GET_READS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"AUDITPIPE_GET_READS\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"AUDITPIPE_GET_READS: unchanged\00", align 1
@AUDITPIPE_GET_DROPS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"AUDITPIPE_GET_DROPS\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"AUDITPIPE_GET_DROPS: unchanged\00", align 1
@AUDITPIPE_GET_TRUNCATES = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [24 x i8] c"AUDITPIPE_GET_TRUNCATES\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"AUDITPIPE_GET_TRUNCATES: unchanged\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  store i64 -1, i64* %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @AUDITPIPE_GET_QLEN, align 4
  %20 = call i64 @ioctl(i32 %18, i32 %19, i64* %6)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @err(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  store i64 -1, i64* %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @AUDITPIPE_GET_QLIMIT_MIN, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, i64* %7)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @err(i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  store i64 -1, i64* %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @AUDITPIPE_GET_QLIMIT_MAX, align 4
  %44 = call i64 @ioctl(i32 %42, i32 %43, i64* %8)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @err(i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  store i64 -1, i64* %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @AUDITPIPE_GET_QLIMIT, align 4
  %56 = call i64 @ioctl(i32 %54, i32 %55, i64* %6)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @AUDITPIPE_SET_QLIMIT, align 4
  %81 = call i64 @ioctl(i32 %79, i32 %80, i64* %6)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @err(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %77
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @AUDITPIPE_GET_QLIMIT, align 4
  %88 = call i64 @ioctl(i32 %86, i32 %87, i64* %6)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @AUDITPIPE_SET_QLIMIT, align 4
  %102 = call i64 @ioctl(i32 %100, i32 %101, i64* %6)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @err(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @AUDITPIPE_GET_QLIMIT, align 4
  %109 = call i64 @ioctl(i32 %107, i32 %108, i64* %6)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 @err(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %106
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %113
  store i64 -1, i64* %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @AUDITPIPE_GET_INSERTS, align 4
  %122 = call i64 @ioctl(i32 %120, i32 %121, i64* %9)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 @err(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119
  %127 = load i64, i64* %9, align 8
  %128 = icmp eq i64 %127, -1
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %126
  store i64 -1, i64* %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @AUDITPIPE_GET_READS, align 4
  %134 = call i64 @ioctl(i32 %132, i32 %133, i64* %9)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 @err(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i64, i64* %9, align 8
  %140 = icmp eq i64 %139, -1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %138
  store i64 -1, i64* %9, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @AUDITPIPE_GET_DROPS, align 4
  %146 = call i64 @ioctl(i32 %144, i32 %145, i64* %9)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @err(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  %151 = load i64, i64* %9, align 8
  %152 = icmp eq i64 %151, -1
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %150
  store i64 -1, i64* %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @AUDITPIPE_GET_TRUNCATES, align 4
  %158 = call i64 @ioctl(i32 %156, i32 %157, i64* %9)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @err(i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %155
  %163 = load i64, i64* %9, align 8
  %164 = icmp eq i64 %163, -1
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %162
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i64*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
