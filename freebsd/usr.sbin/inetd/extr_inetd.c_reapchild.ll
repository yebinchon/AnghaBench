; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_reapchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_reapchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32, i64*, i64, i32, %struct.servtab* }
%struct.rusage = type { i32 }

@WNOHANG = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"%d reaped, %s %u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@servtab = common dso_local global %struct.servtab* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s[%d]: exited, %s %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reapchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reapchild() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.servtab*, align 8
  br label %5

5:                                                ; preds = %131, %0
  %6 = load i32, i32* @WNOHANG, align 4
  %7 = call i64 @wait3(i32* %2, i32 %6, %struct.rusage* null)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %134

11:                                               ; preds = %5
  %12 = load i64, i64* @debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @WIFEXITED(i32 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @WIFEXITED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @WEXITSTATUS(i32 %25)
  br label %30

27:                                               ; preds = %14
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @WTERMSIG(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i64 [ %26, %24 ], [ %29, %27 ]
  %32 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %15, i8* %20, i64 %31)
  br label %33

33:                                               ; preds = %30, %11
  %34 = load %struct.servtab*, %struct.servtab** @servtab, align 8
  store %struct.servtab* %34, %struct.servtab** %4, align 8
  br label %35

35:                                               ; preds = %127, %33
  %36 = load %struct.servtab*, %struct.servtab** %4, align 8
  %37 = icmp ne %struct.servtab* %36, null
  br i1 %37, label %38, label %131

38:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %1, align 4
  %41 = load %struct.servtab*, %struct.servtab** %4, align 8
  %42 = getelementptr inbounds %struct.servtab, %struct.servtab* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.servtab*, %struct.servtab** %4, align 8
  %47 = getelementptr inbounds %struct.servtab, %struct.servtab* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %60

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %39

60:                                               ; preds = %55, %39
  %61 = load i32, i32* %1, align 4
  %62 = load %struct.servtab*, %struct.servtab** %4, align 8
  %63 = getelementptr inbounds %struct.servtab, %struct.servtab* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %127

67:                                               ; preds = %60
  %68 = load %struct.servtab*, %struct.servtab** %4, align 8
  %69 = getelementptr inbounds %struct.servtab, %struct.servtab* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.servtab*, %struct.servtab** %4, align 8
  %73 = getelementptr inbounds %struct.servtab, %struct.servtab* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.servtab*, %struct.servtab** %4, align 8
  %78 = call i32 @enable(%struct.servtab* %77)
  br label %79

79:                                               ; preds = %76, %67
  %80 = load %struct.servtab*, %struct.servtab** %4, align 8
  %81 = getelementptr inbounds %struct.servtab, %struct.servtab* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.servtab*, %struct.servtab** %4, align 8
  %84 = getelementptr inbounds %struct.servtab, %struct.servtab* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %82, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.servtab*, %struct.servtab** %4, align 8
  %91 = getelementptr inbounds %struct.servtab, %struct.servtab* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %89, i64* %95, align 8
  %96 = load i32, i32* %2, align 4
  %97 = call i64 @WIFSIGNALED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %79
  %100 = load i32, i32* %2, align 4
  %101 = call i64 @WEXITSTATUS(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %99, %79
  %104 = load i32, i32* @LOG_WARNING, align 4
  %105 = load %struct.servtab*, %struct.servtab** %4, align 8
  %106 = getelementptr inbounds %struct.servtab, %struct.servtab* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %3, align 8
  %109 = load i32, i32* %2, align 4
  %110 = call i64 @WIFEXITED(i32 %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %114 = load i32, i32* %2, align 4
  %115 = call i64 @WIFEXITED(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load i32, i32* %2, align 4
  %119 = call i64 @WEXITSTATUS(i32 %118)
  br label %123

120:                                              ; preds = %103
  %121 = load i32, i32* %2, align 4
  %122 = call i64 @WTERMSIG(i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi i64 [ %119, %117 ], [ %122, %120 ]
  %125 = call i32 @syslog(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %107, i64 %108, i8* %113, i64 %124)
  br label %126

126:                                              ; preds = %123, %99
  br label %131

127:                                              ; preds = %66
  %128 = load %struct.servtab*, %struct.servtab** %4, align 8
  %129 = getelementptr inbounds %struct.servtab, %struct.servtab* %128, i32 0, i32 4
  %130 = load %struct.servtab*, %struct.servtab** %129, align 8
  store %struct.servtab* %130, %struct.servtab** %4, align 8
  br label %35

131:                                              ; preds = %126, %35
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @reapchild_conn(i64 %132)
  br label %5

134:                                              ; preds = %10
  ret void
}

declare dso_local i64 @wait3(i32*, i32, %struct.rusage*) #1

declare dso_local i32 @warnx(i8*, i64, i8*, i64) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i32 @enable(%struct.servtab*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i64, i8*, i64) #1

declare dso_local i32 @reapchild_conn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
