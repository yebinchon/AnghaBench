; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_test_evfilt_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_test_evfilt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.kevent = type { i32 }

@EVFILT_WRITE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EVFILT_WRITE, EV_ADD\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"EVFILE_WRITE, EV_ADD\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"EVFILT_WRITE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"EVFILE_WRITE\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"empty socket unwritable\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"write length\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"full socket writable\00", align 1
@EV_DELETE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"EVFILT_WRITE, EV_DELETE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @test_evfilt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evfilt_write(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.kevent, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EVFILT_WRITE, align 4
  %16 = load i32, i32* @EV_ADD, align 4
  %17 = call i32 @EV_SET(%struct.kevent* %8, i32 %14, i32 %15, i32 %16, i32 0, i32 0, i32* null)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @kevent(i32 %18, %struct.kevent* %8, i32 1, %struct.kevent* null, i32 0, %struct.timespec* null)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i64, i64* @errno, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @fail(i64 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %3
  %26 = call i32 @OK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @kevent(i32 %29, %struct.kevent* null, i32 0, %struct.kevent* %8, i32 1, %struct.timespec* %7)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, i64* @errno, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @fail(i64 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %25
  %38 = call i32 @OK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @fail_assertion(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = call i32 @OK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i8 97, i8* %10, align 1
  br label %46

46:                                               ; preds = %53, %44
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @write(i32 %49, i8* %10, i32 1)
  store i32 %50, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %46

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EAGAIN, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @ENOBUFS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64, i64* @errno, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @fail(i64 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %67, i8* null)
  br label %69

69:                                               ; preds = %65, %61, %57, %54
  %70 = call i32 @OK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @fail_assertion(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %78, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73, %69
  %81 = call i32 @OK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @kevent(i32 %84, %struct.kevent* null, i32 0, %struct.kevent* %8, i32 1, %struct.timespec* %7)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i64, i64* @errno, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @fail(i64 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %80
  %93 = call i32 @OK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @fail_assertion(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %92
  %100 = call i32 @OK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @EVFILT_WRITE, align 4
  %105 = load i32, i32* @EV_DELETE, align 4
  %106 = call i32 @EV_SET(%struct.kevent* %8, i32 %103, i32 %104, i32 %105, i32 0, i32 0, i32* null)
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @kevent(i32 %107, %struct.kevent* %8, i32 1, %struct.kevent* null, i32 0, %struct.timespec* null)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  %111 = load i64, i64* @errno, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @fail(i64 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %99
  %115 = call i32 @OK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @fail(i64, i8*, i8*, i8*) #1

declare dso_local i32 @OK(i8*) #1

declare dso_local i32 @fail_assertion(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
