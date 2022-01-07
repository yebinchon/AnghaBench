; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_next_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_next_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.kevent = type { i32, i32 }
%struct.timespec = type { i64, i64 }

@sleeping = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@JF_TIMEOUT = common dso_local global i32 0, align 4
@kq = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@WNOHANG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfjail* @next_proc(i32 %0) #0 {
  %2 = alloca %struct.cfjail*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kevent, align 4
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.cfjail*, align 8
  store i32 %0, i32* %3, align 4
  %8 = call i32 @TAILQ_EMPTY(i32* @sleeping)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %119, label %10

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %117, %87, %10
  store %struct.timespec* null, %struct.timespec** %6, align 8
  %12 = call %struct.cfjail* @TAILQ_FIRST(i32* @sleeping)
  store %struct.cfjail* %12, %struct.cfjail** %7, align 8
  %13 = icmp ne %struct.cfjail* %12, null
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %16 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %14
  %21 = load i32, i32* @CLOCK_REALTIME, align 4
  %22 = call i32 @clock_gettime(i32 %21, %struct.timespec* %5)
  %23 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %24 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %32 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %20
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1000000000
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %42, %20
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57, %49
  %62 = load i32, i32* @JF_TIMEOUT, align 4
  %63 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %64 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %68 = call i32 @clear_procs(%struct.cfjail* %67)
  %69 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  store %struct.cfjail* %69, %struct.cfjail** %2, align 8
  br label %120

70:                                               ; preds = %57, %53
  store %struct.timespec* %5, %struct.timespec** %6, align 8
  br label %71

71:                                               ; preds = %70, %14, %11
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i64 0, i64* %76, align 8
  store %struct.timespec* %5, %struct.timespec** %6, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @kq, align 4
  %79 = load %struct.timespec*, %struct.timespec** %6, align 8
  %80 = call i32 @kevent(i32 %78, i32* null, i32 0, %struct.kevent* %4, i32 1, %struct.timespec* %79)
  switch i32 %80, label %118 [
    i32 -1, label %81
    i32 0, label %88
    i32 1, label %102
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @errno, align 4
  %83 = load i32, i32* @EINTR, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  br label %11

88:                                               ; preds = %77
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = call %struct.cfjail* @TAILQ_FIRST(i32* @sleeping)
  store %struct.cfjail* %92, %struct.cfjail** %7, align 8
  %93 = load i32, i32* @JF_TIMEOUT, align 4
  %94 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %95 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %99 = call i32 @clear_procs(%struct.cfjail* %98)
  %100 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  store %struct.cfjail* %100, %struct.cfjail** %2, align 8
  br label %120

101:                                              ; preds = %88
  br label %118

102:                                              ; preds = %77
  %103 = getelementptr inbounds %struct.kevent, %struct.kevent* %4, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @WNOHANG, align 4
  %106 = call i32 @waitpid(i32 %104, i32* null, i32 %105)
  %107 = getelementptr inbounds %struct.kevent, %struct.kevent* %4, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.cfjail* @find_proc(i32 %108)
  store %struct.cfjail* %109, %struct.cfjail** %7, align 8
  %110 = icmp ne %struct.cfjail* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.kevent, %struct.kevent* %4, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %115 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  store %struct.cfjail* %116, %struct.cfjail** %2, align 8
  br label %120

117:                                              ; preds = %102
  br label %11

118:                                              ; preds = %77, %101
  br label %119

119:                                              ; preds = %118, %1
  store %struct.cfjail* null, %struct.cfjail** %2, align 8
  br label %120

120:                                              ; preds = %119, %111, %91, %61
  %121 = load %struct.cfjail*, %struct.cfjail** %2, align 8
  ret %struct.cfjail* %121
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cfjail* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @clear_procs(%struct.cfjail*) #1

declare dso_local i32 @kevent(i32, i32*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local %struct.cfjail* @find_proc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
