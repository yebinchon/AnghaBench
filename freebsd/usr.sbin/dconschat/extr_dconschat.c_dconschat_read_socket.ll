; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_read_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_read_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, i32, i32 }
%struct.dcons_port = type { i32, i32, i32, i32 }
%struct.kevent = type { i32 }

@MAX_XFER = common dso_local global i32 0, align 4
@F_READY = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"-> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"port%d: closed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"port%d: read\00", align 1
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*, %struct.dcons_port*)* @dconschat_read_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_read_socket(%struct.dcons_state* %0, %struct.dcons_port* %1) #0 {
  %3 = alloca %struct.dcons_state*, align 8
  %4 = alloca %struct.dcons_port*, align 8
  %5 = alloca %struct.kevent, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dcons_state* %0, %struct.dcons_state** %3, align 8
  store %struct.dcons_port* %1, %struct.dcons_port** %4, align 8
  %11 = load i32, i32* @MAX_XFER, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @MAX_XFER, align 4
  %16 = add nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %20 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = trunc i64 %12 to i32
  %23 = call i32 @read(i32 %21, i8* %14, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %26 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %27 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dconschat_read_filter(%struct.dcons_state* %26, %struct.dcons_port* %27, i8* %14, i32 %28, i8* %18, i32* %7)
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %25
  %33 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %34 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @F_READY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %41 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %42 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dconschat_write_dcons(%struct.dcons_state* %40, i32 %43, i8* %18, i32 %44)
  %46 = load i32, i32* @verbose, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %18, i64 %50
  store i8 0, i8* %51, align 1
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %62

53:                                               ; preds = %39
  %54 = load i32, i32* @verbose, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @fflush(i32 %59)
  br label %61

61:                                               ; preds = %56, %53
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %32, %25
  br label %122

64:                                               ; preds = %2
  %65 = load i32, i32* @verbose, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %72 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %80

75:                                               ; preds = %67
  %76 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %77 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %83 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EVFILT_READ, align 4
  %86 = load i32, i32* @EV_DELETE, align 4
  %87 = call i32 @EV_SET(%struct.kevent* %5, i32 %84, i32 %85, i32 %86, i32 0, i32 0, i8* null)
  %88 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %89 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %92 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %91, i32 0, i32 1
  %93 = call i32 @kevent(i32 %90, %struct.kevent* %5, i32 1, i32* null, i32 0, i32* %92)
  %94 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %95 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %99 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @close(i32 %100)
  %102 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %103 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EVFILT_READ, align 4
  %106 = load i32, i32* @EV_ADD, align 4
  %107 = load i32, i32* @EV_ONESHOT, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %110 = bitcast %struct.dcons_port* %109 to i8*
  %111 = call i32 @EV_SET(%struct.kevent* %5, i32 %104, i32 %105, i32 %108, i32 0, i32 0, i8* %110)
  %112 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %113 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %116 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %115, i32 0, i32 1
  %117 = call i32 @kevent(i32 %114, %struct.kevent* %5, i32 1, i32* null, i32 0, i32* %116)
  %118 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %119 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %118, i32 0, i32 1
  store i32 -1, i32* %119, align 4
  %120 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %121 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 4
  br label %122

122:                                              ; preds = %81, %63
  %123 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %123)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @dconschat_read_filter(%struct.dcons_state*, %struct.dcons_port*, i8*, i32, i8*, i32*) #2

declare dso_local i32 @dconschat_write_dcons(%struct.dcons_state*, i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @warnx(i8*, i32) #2

declare dso_local i32 @warn(i8*, i32) #2

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
