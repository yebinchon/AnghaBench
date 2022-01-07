; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_test_evfilt_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/kqueue/extr_kqueue.c_test_evfilt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.kevent = type { i32 }

@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"EVFILT_READ, EV_ADD\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"EVFILT_READ\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"empty socket unreadable\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"write one byte\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"write length\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"write one byte length\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"non-empty socket unreadable\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"read one byte\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"read length\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"read one byte length\00", align 1
@EV_DELETE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"EVFILT_READ, EV_DELETE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @test_evfilt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evfilt_read(i32 %0, i32* %1, i8* %2) #0 {
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
  %15 = load i32, i32* @EVFILT_READ, align 4
  %16 = load i32, i32* @EV_ADD, align 4
  %17 = call i32 @EV_SET(%struct.kevent* %8, i32 %14, i32 %15, i32 %16, i32 0, i32 0, i32* null)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @kevent(i32 %18, %struct.kevent* %8, i32 1, %struct.kevent* null, i32 0, %struct.timespec* null)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @errno, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @fail(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %3
  %26 = call i32 @OK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
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
  %34 = load i32, i32* @errno, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @fail(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %25
  %38 = call i32 @OK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @fail_assertion(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = call i32 @OK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i8 97, i8* %10, align 1
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @write(i32 %48, i8* %10, i32 1)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @errno, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @fail(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %54, i8* null)
  br label %56

56:                                               ; preds = %52, %44
  %57 = call i32 @OK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @fail_assertion(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %62, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  %65 = call i32 @OK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @kevent(i32 %68, %struct.kevent* null, i32 0, %struct.kevent* %8, i32 1, %struct.timespec* %7)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @errno, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @fail(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %64
  %77 = call i32 @OK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @fail_assertion(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  %84 = call i32 @OK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @read(i32 %87, i8* %10, i32 1)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @errno, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @fail(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %93, i8* null)
  br label %95

95:                                               ; preds = %91, %83
  %96 = call i32 @OK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @fail_assertion(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %101, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95
  %104 = call i32 @OK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @kevent(i32 %107, %struct.kevent* null, i32 0, %struct.kevent* %8, i32 1, %struct.timespec* %7)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* @errno, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @fail(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %103
  %116 = call i32 @OK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @fail_assertion(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %115
  %123 = call i32 @OK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @EVFILT_READ, align 4
  %128 = load i32, i32* @EV_DELETE, align 4
  %129 = call i32 @EV_SET(%struct.kevent* %8, i32 %126, i32 %127, i32 %128, i32 0, i32 0, i32* null)
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @kevent(i32 %130, %struct.kevent* %8, i32 1, %struct.kevent* null, i32 0, %struct.timespec* null)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load i32, i32* @errno, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @fail(i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %137

137:                                              ; preds = %133, %122
  %138 = call i32 @OK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @fail(i32, i8*, i8*, i8*) #1

declare dso_local i32 @OK(i8*) #1

declare dso_local i32 @fail_assertion(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
