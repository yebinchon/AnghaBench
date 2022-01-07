; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.cuse_client_command = type { i32 }
%struct.cuse_client = type { i32, %struct.TYPE_2__*, %struct.cuse_client_command* }
%struct.TYPE_2__ = type { i32 }

@POLLPRI = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@CUSE_POLL_READ = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@CUSE_POLL_WRITE = common dso_local global i64 0, align 8
@POLLHUP = common dso_local global i32 0, align 4
@CUSE_POLL_ERROR = common dso_local global i64 0, align 8
@CUSE_CMD_POLL = common dso_local global i64 0, align 8
@IO_NDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @cuse_client_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_client_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.cuse_client_command*, align 8
  %9 = alloca %struct.cuse_client*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %13 = call i32 @cuse_client_get(%struct.cuse_client** %9)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %132

17:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @POLLPRI, align 4
  %20 = load i32, i32* @POLLIN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @POLLRDNORM, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i64, i64* @CUSE_POLL_READ, align 8
  %28 = load i64, i64* %10, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @POLLOUT, align 4
  %33 = load i32, i32* @POLLWRNORM, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* @CUSE_POLL_WRITE, align 8
  %39 = load i64, i64* %10, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @POLLHUP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* @CUSE_POLL_ERROR, align 8
  %48 = load i64, i64* %10, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.cuse_client*, %struct.cuse_client** %9, align 8
  %52 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %51, i32 0, i32 2
  %53 = load %struct.cuse_client_command*, %struct.cuse_client_command** %52, align 8
  %54 = load i64, i64* @CUSE_CMD_POLL, align 8
  %55 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %53, i64 %54
  store %struct.cuse_client_command* %55, %struct.cuse_client_command** %8, align 8
  %56 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %57 = call i32 @cuse_cmd_lock(%struct.cuse_client_command* %56)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load %struct.thread*, %struct.thread** %7, align 8
  %62 = icmp ne %struct.thread* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.thread*, %struct.thread** %7, align 8
  %65 = load %struct.cuse_client*, %struct.cuse_client** %9, align 8
  %66 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @selrecord(%struct.thread* %64, i32* %68)
  br label %70

70:                                               ; preds = %63, %60, %50
  %71 = call i32 (...) @cuse_lock()
  %72 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.cuse_client*, %struct.cuse_client** %9, align 8
  %75 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IO_NDELAY, align 4
  %78 = call i32 @cuse_client_send_command_locked(%struct.cuse_client_command* %72, i32 0, i64 %73, i32 %76, i32 %77)
  %79 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %80 = call i32 @cuse_client_receive_command_locked(%struct.cuse_client_command* %79, i32 0, i32 0)
  store i32 %80, i32* %11, align 4
  %81 = call i32 (...) @cuse_unlock()
  %82 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %83 = call i32 @cuse_cmd_unlock(%struct.cuse_client_command* %82)
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  br label %132

87:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @CUSE_POLL_READ, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @POLLPRI, align 4
  %96 = load i32, i32* @POLLIN, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @POLLRDNORM, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %94, %99
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %93, %87
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* @CUSE_POLL_WRITE, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @POLLOUT, align 4
  %112 = load i32, i32* @POLLWRNORM, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %109, %103
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @CUSE_POLL_ERROR, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @POLLHUP, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %123, %117
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %4, align 4
  br label %146

132:                                              ; preds = %86, %16
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @POLLHUP, align 4
  %135 = load i32, i32* @POLLPRI, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @POLLIN, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @POLLRDNORM, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @POLLOUT, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @POLLWRNORM, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %133, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %132, %130
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @cuse_client_get(%struct.cuse_client**) #1

declare dso_local i32 @cuse_cmd_lock(%struct.cuse_client_command*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_client_send_command_locked(%struct.cuse_client_command*, i32, i64, i32, i32) #1

declare dso_local i32 @cuse_client_receive_command_locked(%struct.cuse_client_command*, i32, i32) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @cuse_cmd_unlock(%struct.cuse_client_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
