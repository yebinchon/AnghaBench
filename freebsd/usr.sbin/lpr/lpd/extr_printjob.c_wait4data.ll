; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_wait4data.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_wait4data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32 }
%struct.stat = type { i64 }

@local_host = common dso_local global i8* null, align 8
@MAXWAIT_ARRIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Waiting for data file from remote host\00", align 1
@MINWAIT_4DATA = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: wait4data() abandoned wait for %s\00", align 1
@MAXWAIT_4DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: %s disappeared during wait4data()\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: %s still changing after %lu secs in wait4data()\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*, i8*)* @wait4data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait4data(%struct.printer* %0, i8* %1) #0 {
  %3 = alloca %struct.printer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 8
  store %struct.printer* %0, %struct.printer** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** @local_host, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** @local_host, align 8
  %30 = call i64 @strcmp(i8* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %159

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %2
  store i64 0, i64* %10, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @stat(i8* %35, %struct.stat* %13)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %52, %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @MAXWAIT_ARRIVE, align 8
  %43 = icmp slt i64 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %61

46:                                               ; preds = %44
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.printer*, %struct.printer** %3, align 8
  %51 = call i32 @pstatus(%struct.printer* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* @MINWAIT_4DATA, align 8
  %54 = load i64, i64* @MINWAIT_4DATA, align 8
  %55 = call i64 @sleep(i64 %54)
  %56 = sub nsw i64 %53, %55
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %10, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @stat(i8* %59, %struct.stat* %13)
  store i32 %60, i32* %6, align 4
  br label %37

61:                                               ; preds = %44
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* @LOG_WARNING, align 4
  %66 = load %struct.printer*, %struct.printer** %3, align 8
  %67 = getelementptr inbounds %struct.printer, %struct.printer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 (i32, i8*, i32, ...) @syslog(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %69)
  br label %159

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  %74 = call i64 @time(i32* null)
  store i64 %74, i64* %11, align 8
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @MINWAIT_4DATA, align 8
  %79 = sub nsw i64 %77, %78
  %80 = icmp sge i64 %76, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i64, i64* @MINWAIT_4DATA, align 8
  store i64 %87, i64* %7, align 8
  br label %93

88:                                               ; preds = %81
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %89, %91
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %88, %86
  %94 = load i64, i64* %10, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.printer*, %struct.printer** %3, align 8
  %98 = call i32 @pstatus(%struct.printer* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @sleep(i64 %101)
  %103 = sub nsw i64 %100, %102
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %10, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @stat(i8* %106, %struct.stat* %13)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %99, %71
  %109 = load i64, i64* @MINWAIT_4DATA, align 8
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %125, %108
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @MAXWAIT_4DATA, align 8
  %116 = icmp slt i64 %114, %115
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  br i1 %118, label %119, label %136

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %136

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @sleep(i64 %129)
  %131 = sub nsw i64 %128, %130
  %132 = load i64, i64* %10, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %10, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @stat(i8* %134, %struct.stat* %13)
  store i32 %135, i32* %6, align 4
  br label %110

136:                                              ; preds = %124, %117
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, i32* @LOG_WARNING, align 4
  %141 = load %struct.printer*, %struct.printer** %3, align 8
  %142 = getelementptr inbounds %struct.printer, %struct.printer* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 (i32, i8*, i32, ...) @syslog(i32 %140, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %143, i8* %144)
  br label %159

146:                                              ; preds = %136
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* @MAXWAIT_4DATA, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load i32, i32* @LOG_WARNING, align 4
  %152 = load %struct.printer*, %struct.printer** %3, align 8
  %153 = getelementptr inbounds %struct.printer, %struct.printer* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %4, align 8
  %156 = load i64, i64* %10, align 8
  %157 = call i32 (i32, i8*, i32, ...) @syslog(i32 %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %154, i8* %155, i64 %156)
  br label %158

158:                                              ; preds = %150, %146
  br label %159

159:                                              ; preds = %32, %64, %158, %139
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @pstatus(%struct.printer*, i8*) #1

declare dso_local i64 @sleep(i64) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
