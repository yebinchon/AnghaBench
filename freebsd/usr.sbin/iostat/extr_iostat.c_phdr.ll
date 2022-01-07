; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iostat/extr_iostat.c_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iostat/extr_iostat.c_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@xflag = common dso_local global i64 0, align 8
@Tflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"       tty\00", align 1
@num_devices = common dso_local global i32 0, align 4
@maxshowdevs = common dso_local global i32 0, align 4
@dev_select = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@cur = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@oflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%13.6s \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%16.6s \00", align 1
@Cflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"            cpu\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" tin  tout\00", align 1
@Iflag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c" sps tps msps \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" blk xfr msps \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c" KB/t  tps  MB/s \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c" KB/t xfrs    MB \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c" us ni sy in id\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phdr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load i64, i64* @xflag, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %154

8:                                                ; preds = %0
  %9 = load i64, i64* @Tflag, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %78, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @num_devices, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @maxshowdevs, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %81

24:                                               ; preds = %22
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_select, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_select, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @maxshowdevs, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_select, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cur, i32 0, i32 0), align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cur, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @snprintf(i8* %48, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %64)
  %66 = load i64, i64* @oflag, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %41
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %74

71:                                               ; preds = %41
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %32, %24
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %14

81:                                               ; preds = %22
  %82 = load i64, i64* @Cflag, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i64, i64* @Tflag, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %144, %93
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @num_devices, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @maxshowdevs, align 4
  %101 = icmp slt i32 %99, %100
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i1 [ false, %94 ], [ %101, %98 ]
  br i1 %103, label %104, label %147

104:                                              ; preds = %102
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_select, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %104
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_select, align 8
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @maxshowdevs, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %112
  %122 = load i64, i64* @oflag, align 8
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load i64, i64* @Iflag, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %131

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %127
  br label %140

132:                                              ; preds = %121
  %133 = load i64, i64* @Iflag, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %139

137:                                              ; preds = %132
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %135
  br label %140

140:                                              ; preds = %139, %131
  %141 = load i32, i32* %2, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %112, %104
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %1, align 4
  br label %94

147:                                              ; preds = %102
  %148 = load i64, i64* @Cflag, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %154

152:                                              ; preds = %147
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %154

154:                                              ; preds = %7, %152, %150
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
