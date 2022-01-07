; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/kttcp/sys/extr_kttcp.c_kttcp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/kttcp/sys/extr_kttcp.c_kttcp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kttcp_io_args = type { i64, i64, i32, i32 }
%struct.file = type { i32, i64, i64 }
%struct.timeval = type { i32 }
%struct.uio = type { i64, i8*, i8*, i32, %struct.uio* }
%struct.iovec = type { i64, i8*, i8*, i32, %struct.iovec* }
%struct.socket = type { i32 }

@UIO_NOCOPY = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@nbyte = common dso_local global i8* null, align 8
@EFTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.kttcp_io_args*)* @kttcp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kttcp_send(%struct.thread* %0, %struct.kttcp_io_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kttcp_io_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.uio, align 8
  %12 = alloca %struct.iovec, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kttcp_io_args* %1, %struct.kttcp_io_args** %5, align 8
  store i64 0, i64* %10, align 8
  %13 = bitcast %struct.iovec* %12 to %struct.uio*
  %14 = call i32 @bzero(%struct.uio* %13, i32 40)
  %15 = call i32 @bzero(%struct.uio* %11, i32 40)
  %16 = bitcast %struct.iovec* %12 to %struct.uio*
  %17 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 4
  store %struct.uio* %16, %struct.uio** %17, align 8
  %18 = load i32, i32* @UIO_NOCOPY, align 4
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %22 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fget(%struct.thread* %20, i32 %23, %struct.file** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %103

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FWRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.file*, %struct.file** %6, align 8
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = call i32 @fdrop(%struct.file* %37, %struct.thread* %38)
  %40 = load i32, i32* @EBADF, align 4
  store i32 %40, i32* %3, align 4
  br label %103

41:                                               ; preds = %29
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DTYPE_SOCKET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %41
  %48 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %49 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = call i32 @microtime(%struct.timeval* %8)
  br label %52

52:                                               ; preds = %78, %47
  %53 = load i64, i64* %10, align 8
  %54 = load i8*, i8** @nbyte, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = call i8* @MIN(i64 %53, i64 %55)
  store i8* %56, i8** @nbyte, align 8
  %57 = load i8*, i8** @nbyte, align 8
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** @nbyte, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.socket*
  %66 = load %struct.thread*, %struct.thread** %4, align 8
  %67 = call i32 @sosend(%struct.socket* %65, i32* null, %struct.uio* %11, i32* null, i32* null, i32 0, %struct.thread* %66)
  store i32 %67, i32* %7, align 4
  %68 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %52, label %80

80:                                               ; preds = %78
  %81 = call i32 @microtime(%struct.timeval* %9)
  br label %84

82:                                               ; preds = %41
  %83 = load i32, i32* @EFTYPE, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = load %struct.file*, %struct.file** %6, align 8
  %86 = load %struct.thread*, %struct.thread** %4, align 8
  %87 = call i32 @fdrop(%struct.file* %85, %struct.thread* %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %84
  %93 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %94 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %93, i32 0, i32 2
  %95 = call i32 @timersub(%struct.timeval* %9, %struct.timeval* %8, i32* %94)
  %96 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %97 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = sub i64 %98, %99
  %101 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %102 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %92, %90, %36, %27
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @bzero(%struct.uio*, i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i8* @MIN(i64, i64) #1

declare dso_local i32 @sosend(%struct.socket*, i32*, %struct.uio*, i32*, i32*, i32, %struct.thread*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
