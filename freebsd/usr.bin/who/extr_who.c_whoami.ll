; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_whoami.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_whoami.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64, i32, i32, i32 }
%struct.passwd = type { i8* }

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tty??\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@USER_PROCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @whoami to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whoami() #0 {
  %1 = alloca %struct.utmpx, align 8
  %2 = alloca %struct.utmpx*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @STDIN_FILENO, align 4
  %7 = call i8* @ttyname(i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %19

10:                                               ; preds = %0
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @_PATH_DEV, align 4
  %13 = call i64 @strncmp(i8* %11, i32 %12, i32 3)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %9
  %20 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %1, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlcpy(i32 %21, i8* %22, i32 4)
  %24 = call %struct.utmpx* @getutxline(%struct.utmpx* %1)
  store %struct.utmpx* %24, %struct.utmpx** %2, align 8
  %25 = icmp ne %struct.utmpx* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %28 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USER_PROCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %34 = call i32 @row(%struct.utmpx* %33)
  br label %53

35:                                               ; preds = %26, %19
  %36 = call i32 @memset(%struct.utmpx* %1, i32 0, i32 24)
  %37 = call i32 (...) @getuid()
  %38 = call %struct.passwd* @getpwuid(i32 %37)
  store %struct.passwd* %38, %struct.passwd** %3, align 8
  %39 = icmp ne %struct.passwd* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.passwd*, %struct.passwd** %3, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %4, align 8
  br label %45

44:                                               ; preds = %35
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %1, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strlcpy(i32 %47, i8* %48, i32 4)
  %50 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %1, i32 0, i32 1
  %51 = call i32 @gettimeofday(i32* %50, i32* null)
  %52 = call i32 @row(%struct.utmpx* %1)
  br label %53

53:                                               ; preds = %45, %32
  ret void
}

declare dso_local i8* @ttyname(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.utmpx* @getutxline(%struct.utmpx*) #1

declare dso_local i32 @row(%struct.utmpx*) #1

declare dso_local i32 @memset(%struct.utmpx*, i32, i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
