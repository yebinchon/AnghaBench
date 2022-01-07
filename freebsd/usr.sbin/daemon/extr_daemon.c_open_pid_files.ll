; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_open_pid_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_open_pid_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }

@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"process already running, pid: %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pidfile ``%s''\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ppidfile ``%s''\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.pidfh**, %struct.pidfh**)* @open_pid_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_pid_files(i8* %0, i8* %1, %struct.pidfh** %2, %struct.pidfh** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pidfh**, align 8
  %8 = alloca %struct.pidfh**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pidfh** %2, %struct.pidfh*** %7, align 8
  store %struct.pidfh** %3, %struct.pidfh*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.pidfh* @pidfile_open(i8* %14, i32 384, i32* %9)
  %16 = load %struct.pidfh**, %struct.pidfh*** %7, align 8
  store %struct.pidfh* %15, %struct.pidfh** %16, align 8
  %17 = load %struct.pidfh**, %struct.pidfh*** %7, align 8
  %18 = load %struct.pidfh*, %struct.pidfh** %17, align 8
  %19 = icmp eq %struct.pidfh* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i32, i32* @errno, align 4
  %22 = load i32, i32* @EEXIST, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @errx(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @err(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %13
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = call %struct.pidfh* @pidfile_open(i8* %35, i32 384, i32* %9)
  %37 = load %struct.pidfh**, %struct.pidfh*** %8, align 8
  store %struct.pidfh* %36, %struct.pidfh** %37, align 8
  %38 = load %struct.pidfh**, %struct.pidfh*** %8, align 8
  %39 = load %struct.pidfh*, %struct.pidfh** %38, align 8
  %40 = icmp eq %struct.pidfh* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.pidfh**, %struct.pidfh*** %7, align 8
  %44 = load %struct.pidfh*, %struct.pidfh** %43, align 8
  %45 = call i32 @pidfile_remove(%struct.pidfh* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* @errno, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EEXIST, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @errx(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @err(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %34
  br label %57

57:                                               ; preds = %56, %31
  ret void
}

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
