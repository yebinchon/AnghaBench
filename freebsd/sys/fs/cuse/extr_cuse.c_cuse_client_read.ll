; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cuse_client_command = type { i32 }
%struct.cuse_client = type { i32, %struct.cuse_client_command* }

@CUSE_CMD_READ = common dso_local global i64 0, align 8
@UIO_USERSPACE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_NOCOPY = common dso_local global i64 0, align 8
@CUSE_LENGTH_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @cuse_client_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_client_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cuse_client_command*, align 8
  %9 = alloca %struct.cuse_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 @cuse_client_get(%struct.cuse_client** %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %112

17:                                               ; preds = %3
  %18 = load %struct.cuse_client*, %struct.cuse_client** %9, align 8
  %19 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %18, i32 0, i32 1
  %20 = load %struct.cuse_client_command*, %struct.cuse_client_command** %19, align 8
  %21 = load i64, i64* @CUSE_CMD_READ, align 8
  %22 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %20, i64 %21
  store %struct.cuse_client_command* %22, %struct.cuse_client_command** %8, align 8
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UIO_USERSPACE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %112

30:                                               ; preds = %17
  %31 = load i64, i64* @UIO_NOCOPY, align 8
  %32 = load %struct.uio*, %struct.uio** %6, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %35 = call i32 @cuse_cmd_lock(%struct.cuse_client_command* %34)
  br label %36

36:                                               ; preds = %96, %30
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %97

41:                                               ; preds = %36
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CUSE_LENGTH_MAX, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %10, align 4
  br label %97

51:                                               ; preds = %41
  %52 = load %struct.uio*, %struct.uio** %6, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = call i32 (...) @cuse_lock()
  %58 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %59 = load %struct.uio*, %struct.uio** %6, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = load %struct.cuse_client*, %struct.cuse_client** %9, align 8
  %67 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @cuse_client_send_command_locked(%struct.cuse_client_command* %58, i64 %63, i64 %65, i32 %68, i32 %69)
  %71 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %72 = call i32 @cuse_client_receive_command_locked(%struct.cuse_client_command* %71, i32 0, i32 0)
  store i32 %72, i32* %10, align 4
  %73 = call i32 (...) @cuse_unlock()
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %51
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @cuse_convert_error(i32 %77)
  store i32 %78, i32* %10, align 4
  br label %97

79:                                               ; preds = %51
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.uio*, %struct.uio** %6, align 8
  %86 = call i32 @uiomove(i32* null, i32 %84, %struct.uio* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %97

90:                                               ; preds = %83
  br label %95

91:                                               ; preds = %79
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.uio*, %struct.uio** %6, align 8
  %94 = call i32 @uiomove(i32* null, i32 %92, %struct.uio* %93)
  store i32 %94, i32* %10, align 4
  br label %97

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95
  br label %36

97:                                               ; preds = %91, %89, %76, %49, %36
  %98 = load %struct.cuse_client_command*, %struct.cuse_client_command** %8, align 8
  %99 = call i32 @cuse_cmd_unlock(%struct.cuse_client_command* %98)
  %100 = load i64, i64* @UIO_USERSPACE, align 8
  %101 = load %struct.uio*, %struct.uio** %6, align 8
  %102 = getelementptr inbounds %struct.uio, %struct.uio* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @EWOULDBLOCK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load %struct.cdev*, %struct.cdev** %5, align 8
  %108 = load %struct.cuse_client*, %struct.cuse_client** %9, align 8
  %109 = call i32 @cuse_client_kqfilter_poll(%struct.cdev* %107, %struct.cuse_client* %108)
  br label %110

110:                                              ; preds = %106, %97
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %28, %15
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @cuse_client_get(%struct.cuse_client**) #1

declare dso_local i32 @cuse_cmd_lock(%struct.cuse_client_command*) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_client_send_command_locked(%struct.cuse_client_command*, i64, i64, i32, i32) #1

declare dso_local i32 @cuse_client_receive_command_locked(%struct.cuse_client_command*, i32, i32) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @cuse_convert_error(i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @cuse_cmd_unlock(%struct.cuse_client_command*) #1

declare dso_local i32 @cuse_client_kqfilter_poll(%struct.cdev*, %struct.cuse_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
