; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscdcli.c_safe_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscdcli.c_safe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nscd_connection_ = type { i32, i32 }
%struct.kevent = type { i64, i32, i64 }
%struct.timespec = type { i64, i32 }

@DEFAULT_NSCD_IO_TIMEOUT = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nscd_connection_*, i8*, i64)* @safe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_read(%struct.nscd_connection_* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nscd_connection_*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kevent, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 8
  %12 = alloca i32, align 4
  store %struct.nscd_connection_* %0, %struct.nscd_connection_** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load i32, i32* @DEFAULT_NSCD_IO_TIMEOUT, align 4
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %78, %16
  %21 = load %struct.nscd_connection_*, %struct.nscd_connection_** %5, align 8
  %22 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kevent(i32 %23, i32* null, i32 0, %struct.kevent* %8, i32 1, %struct.timespec* %11)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %76

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EVFILT_READ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %27
  %33 = load %struct.nscd_connection_*, %struct.nscd_connection_** %5, align 8
  %34 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %41, %42
  %44 = icmp ule i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  br label %52

48:                                               ; preds = %32
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i64 [ %47, %45 ], [ %51, %48 ]
  %54 = call i32 @read(i32 %35, i8* %38, i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %83

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @EV_EOF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 -1, i32 0
  store i32 %74, i32* %4, align 4
  br label %83

75:                                               ; preds = %63
  br label %77

76:                                               ; preds = %27, %20
  store i32 -1, i32* %4, align 4
  br label %83

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %20, label %82

82:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %76, %69, %57, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @kevent(i32, i32*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
