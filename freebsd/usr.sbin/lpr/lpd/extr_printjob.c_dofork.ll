; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_dofork.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_dofork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32, i32 }
%struct.passwd = type { i32, i32 }

@daemon_uname = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: Can't lookup default daemon uid (%ld) in password file\00", align 1
@daemon_defgid = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: initgroups(%s,%u): %m\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: setgid(%u): %m\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: setuid(%ld): %m\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: dofork(): aborting child process...\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: dofork(): failure in fork\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"bad action (%d) to dofork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer*, i32)* @dofork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dofork(%struct.printer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.passwd*, align 8
  store %struct.printer* %0, %struct.printer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %10 = load i32*, i32** @daemon_uname, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.printer*, %struct.printer** %4, align 8
  %14 = getelementptr inbounds %struct.printer, %struct.printer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.passwd* @getpwuid(i32 %15)
  store %struct.passwd* %16, %struct.passwd** %9, align 8
  %17 = load %struct.passwd*, %struct.passwd** %9, align 8
  %18 = icmp eq %struct.passwd* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = load %struct.printer*, %struct.printer** %4, align 8
  %22 = getelementptr inbounds %struct.printer, %struct.printer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.printer*, %struct.printer** %4, align 8
  %25 = getelementptr inbounds %struct.printer, %struct.printer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, ...) @syslog(i32 %20, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %101

28:                                               ; preds = %12
  %29 = load %struct.passwd*, %struct.passwd** %9, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @strdup(i32 %31)
  store i32* %32, i32** @daemon_uname, align 8
  %33 = load %struct.passwd*, %struct.passwd** %9, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @daemon_defgid, align 4
  br label %36

36:                                               ; preds = %28, %2
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %97, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 20
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  %41 = call i32 (...) @fork()
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 @sleep(i32 %47)
  br label %97

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %53 = load i32*, i32** @daemon_uname, align 8
  %54 = load i32, i32* @daemon_defgid, align 4
  %55 = call i32 @initgroups(i32* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = load %struct.printer*, %struct.printer** %4, align 8
  %61 = getelementptr inbounds %struct.printer, %struct.printer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @daemon_uname, align 8
  %64 = load i32, i32* @daemon_defgid, align 4
  %65 = call i32 (i32, i8*, i32, ...) @syslog(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32* %63, i32 %64)
  br label %100

66:                                               ; preds = %52
  %67 = load i32, i32* @daemon_defgid, align 4
  %68 = call i32 @setgid(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @LOG_ERR, align 4
  %73 = load %struct.printer*, %struct.printer** %4, align 8
  %74 = getelementptr inbounds %struct.printer, %struct.printer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @daemon_defgid, align 4
  %77 = call i32 (i32, i8*, i32, ...) @syslog(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  br label %100

78:                                               ; preds = %66
  %79 = load %struct.printer*, %struct.printer** %4, align 8
  %80 = getelementptr inbounds %struct.printer, %struct.printer* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @setuid(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load i32, i32* @LOG_ERR, align 4
  %87 = load %struct.printer*, %struct.printer** %4, align 8
  %88 = getelementptr inbounds %struct.printer, %struct.printer* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.printer*, %struct.printer** %4, align 8
  %91 = getelementptr inbounds %struct.printer, %struct.printer* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, i32, ...) @syslog(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %92)
  br label %100

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %49
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %126

97:                                               ; preds = %44
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %37

100:                                              ; preds = %85, %71, %58, %37
  br label %101

101:                                              ; preds = %100, %19
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* @LOG_ERR, align 4
  %106 = load %struct.printer*, %struct.printer** %4, align 8
  %107 = getelementptr inbounds %struct.printer, %struct.printer* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, i32, ...) @syslog(i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = call i32 @exit(i32 1) #3
  unreachable

111:                                              ; preds = %101
  %112 = load i32, i32* @LOG_ERR, align 4
  %113 = load %struct.printer*, %struct.printer** %4, align 8
  %114 = getelementptr inbounds %struct.printer, %struct.printer* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, ...) @syslog(i32 %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = call i32 @sleep(i32 1)
  %118 = load i32, i32* %5, align 4
  switch i32 %118, label %120 [
    i32 128, label %119
    i32 129, label %124
  ]

119:                                              ; preds = %111
  store i32 -1, i32* %3, align 4
  br label %126

120:                                              ; preds = %111
  %121 = load i32, i32* @LOG_ERR, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 (i32, i8*, i32, ...) @syslog(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %111, %120
  %125 = call i32 @exit(i32 1) #3
  unreachable

126:                                              ; preds = %119, %95
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @initgroups(i32*, i32) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @setuid(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
