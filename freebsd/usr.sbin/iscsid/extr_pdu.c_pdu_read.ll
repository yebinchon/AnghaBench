; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_pdu.c_pdu_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_pdu.c_pdu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Login Phase timeout\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"exiting due to timeout\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"connection lost\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"read: connection lost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i8*, i64)* @pdu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdu_read(%struct.connection* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %41, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @read(i32 %14, i8* %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = call i64 (...) @timed_out()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.connection*, %struct.connection** %4, align 8
  %25 = call i32 @fail(%struct.connection* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.connection*, %struct.connection** %4, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 @fail(%struct.connection* %28, i8* %30)
  %32 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %41

33:                                               ; preds = %11
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.connection*, %struct.connection** %4, align 8
  %38 = call i32 @fail(%struct.connection* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %5, align 8
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @timed_out(...) #1

declare dso_local i32 @fail(%struct.connection*, i8*) #1

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
