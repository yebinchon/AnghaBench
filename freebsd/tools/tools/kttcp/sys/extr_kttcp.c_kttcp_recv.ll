; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/kttcp/sys/extr_kttcp.c_kttcp_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/kttcp/sys/extr_kttcp.c_kttcp_recv.c"
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
@EPIPE = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.kttcp_io_args*)* @kttcp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kttcp_recv(%struct.thread* %0, %struct.kttcp_io_args* %1) #0 {
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
  br label %111

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
  br label %111

41:                                               ; preds = %29
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DTYPE_SOCKET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %41
  %48 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %49 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = call i32 @microtime(%struct.timeval* %8)
  br label %52

52:                                               ; preds = %81, %47
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
  %66 = call i32 @soreceive(%struct.socket* %65, i32* null, %struct.uio* %11, i32* null, i32* null, i32* null)
  store i32 %66, i32* %7, align 4
  %67 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %77, %74, %71
  %82 = phi i1 [ false, %74 ], [ false, %71 ], [ %80, %77 ]
  br i1 %82, label %52, label %83

83:                                               ; preds = %81
  %84 = call i32 @microtime(%struct.timeval* %9)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @EPIPE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %92

90:                                               ; preds = %41
  %91 = load i32, i32* @EFTYPE, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = load %struct.file*, %struct.file** %6, align 8
  %94 = load %struct.thread*, %struct.thread** %4, align 8
  %95 = call i32 @fdrop(%struct.file* %93, %struct.thread* %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %111

100:                                              ; preds = %92
  %101 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %102 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %101, i32 0, i32 2
  %103 = call i32 @timersub(%struct.timeval* %9, %struct.timeval* %8, i32* %102)
  %104 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %105 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = sub i64 %106, %107
  %109 = load %struct.kttcp_io_args*, %struct.kttcp_io_args** %5, align 8
  %110 = getelementptr inbounds %struct.kttcp_io_args, %struct.kttcp_io_args* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %100, %98, %36, %27
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @bzero(%struct.uio*, i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i8* @MIN(i64, i64) #1

declare dso_local i32 @soreceive(%struct.socket*, i32*, %struct.uio*, i32*, i32*, i32*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
