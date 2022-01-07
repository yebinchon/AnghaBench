; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.cuse_client_command = type { i32 }
%struct.cuse_client = type { i64, i32, %struct.cuse_client_command* }

@CUSE_BUFFER_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CUSE_CMD_IOCTL = common dso_local global i64 0, align 8
@IOC_IN = common dso_local global i64 0, align 8
@IOC_VOID = common dso_local global i64 0, align 8
@CUSE_BUF_MIN_PTR = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@IOC_OUT = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cuse_client_ioctl(%struct.cdev* %0, i64 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.cuse_client_command*, align 8
  %13 = alloca %struct.cuse_client*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = call i32 @cuse_client_get(%struct.cuse_client** %13)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %6, align 4
  br label %112

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @IOCPARM_LEN(i64 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @CUSE_BUFFER_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %6, align 4
  br label %112

29:                                               ; preds = %21
  %30 = load %struct.cuse_client*, %struct.cuse_client** %13, align 8
  %31 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %30, i32 0, i32 2
  %32 = load %struct.cuse_client_command*, %struct.cuse_client_command** %31, align 8
  %33 = load i64, i64* @CUSE_CMD_IOCTL, align 8
  %34 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %32, i64 %33
  store %struct.cuse_client_command* %34, %struct.cuse_client_command** %12, align 8
  %35 = load %struct.cuse_client_command*, %struct.cuse_client_command** %12, align 8
  %36 = call i32 @cuse_cmd_lock(%struct.cuse_client_command* %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @IOC_IN, align 8
  %39 = load i64, i64* @IOC_VOID, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %37, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load %struct.cuse_client*, %struct.cuse_client** %13, align 8
  %45 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @memcpy(i64 %46, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %29
  %51 = call i32 (...) @cuse_lock()
  %52 = load %struct.cuse_client_command*, %struct.cuse_client_command** %12, align 8
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  %57 = inttoptr i64 %56 to i64*
  %58 = load i64, i64* %57, align 8
  br label %61

59:                                               ; preds = %50
  %60 = load i64, i64* @CUSE_BUF_MIN_PTR, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i64 [ %58, %55 ], [ %60, %59 ]
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.cuse_client*, %struct.cuse_client** %13, align 8
  %65 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @O_NONBLOCK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @IO_NDELAY, align 4
  br label %74

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = call i32 @cuse_client_send_command_locked(%struct.cuse_client_command* %52, i64 %62, i64 %63, i32 %66, i32 %75)
  %77 = load %struct.cuse_client_command*, %struct.cuse_client_command** %12, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @cuse_client_receive_command_locked(%struct.cuse_client_command* %77, i64 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = call i32 (...) @cuse_unlock()
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @cuse_convert_error(i32 %85)
  store i32 %86, i32* %14, align 4
  br label %88

87:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @IOC_OUT, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.cuse_client*, %struct.cuse_client** %13, align 8
  %96 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @memcpy(i64 %94, i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.cuse_client_command*, %struct.cuse_client_command** %12, align 8
  %102 = call i32 @cuse_cmd_unlock(%struct.cuse_client_command* %101)
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @EWOULDBLOCK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.cdev*, %struct.cdev** %7, align 8
  %108 = load %struct.cuse_client*, %struct.cuse_client** %13, align 8
  %109 = call i32 @cuse_client_kqfilter_poll(%struct.cdev* %107, %struct.cuse_client* %108)
  br label %110

110:                                              ; preds = %106, %100
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %27, %19
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @cuse_client_get(%struct.cuse_client**) #1

declare dso_local i32 @IOCPARM_LEN(i64) #1

declare dso_local i32 @cuse_cmd_lock(%struct.cuse_client_command*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_client_send_command_locked(%struct.cuse_client_command*, i64, i64, i32, i32) #1

declare dso_local i32 @cuse_client_receive_command_locked(%struct.cuse_client_command*, i64, i32) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @cuse_convert_error(i32) #1

declare dso_local i32 @cuse_cmd_unlock(%struct.cuse_client_command*) #1

declare dso_local i32 @cuse_client_kqfilter_poll(%struct.cdev*, %struct.cuse_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
