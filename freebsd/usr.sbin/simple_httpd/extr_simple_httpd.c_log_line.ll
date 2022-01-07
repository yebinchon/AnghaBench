; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_log_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_log_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@source = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"REMOTE_ADDR=%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@AF_INET = common dso_local global i32 0, align 4
@hst = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"REMOTE_HOST=%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c")   \00", align 1
@daemonize = common dso_local global i64 0, align 8
@logfile = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @log_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca [80 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @source, i32 0, i32 0), align 4
  %11 = call i32 @inet_ntoa(i32 %10)
  %12 = call i32 @strcpy(i8* %9, i32 %11)
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %17 = call i64 @inet_addr(i8* %16)
  store i64 %17, i64* %7, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %19 = call i32 (...) @adate()
  %20 = call i32 @strcpy(i8* %18, i32 %19)
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %22 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = bitcast i64* %7 to i8*
  %24 = load i32, i32* @AF_INET, align 4
  %25 = call %struct.TYPE_5__* @gethostbyaddr(i8* %23, i32 4, i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** @hst, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hst, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hst, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcat(i8* %29, i8* %32)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hst, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %28, %1
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %41 = call i32 @strcat(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %44 = call i32 @strcat(i8* %42, i8* %43)
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %46 = call i32 @strcat(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @strcat(i8* %47, i8* %48)
  %50 = load i64, i64* @daemonize, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load i32, i32* @logfile, align 4
  %54 = call i32* @fopen(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %57 = call i32 @fprintf(i32* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %63

60:                                               ; preds = %39
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %62 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %65 = call i32 @putenv(i8* %64)
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %67 = call i32 @putenv(i8* %66)
  ret void
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local i32 @adate(...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @putenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
