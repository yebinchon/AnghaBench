; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32 }
%struct.socket = type { i32 }
%struct.file = type { i32 }

@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i32 0, align 4
@socketops = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_socket(%struct.thread* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @AUDIT_ARG_SOCKET(i32 %16, i32 %17, i32 %18)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SOCK_CLOEXEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load i32, i32* @SOCK_CLOEXEC, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @O_CLOEXEC, align 4
  %30 = load i32, i32* %14, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %24, %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SOCK_NONBLOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @SOCK_NONBLOCK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @FNONBLOCK, align 4
  %43 = load i32, i32* %15, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @falloc(%struct.thread* %46, %struct.file** %11, i32* %12, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %102

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.thread*, %struct.thread** %6, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.thread*, %struct.thread** %6, align 8
  %61 = call i32 @socreate(i32 %54, %struct.socket** %10, i32 %55, i32 %56, i32 %59, %struct.thread* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.thread*, %struct.thread** %6, align 8
  %66 = load %struct.file*, %struct.file** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @fdclose(%struct.thread* %65, %struct.file* %66, i32 %67)
  br label %97

69:                                               ; preds = %53
  %70 = load %struct.file*, %struct.file** %11, align 8
  %71 = load i32, i32* @FREAD, align 4
  %72 = load i32, i32* @FWRITE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %15, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @DTYPE_SOCKET, align 4
  %77 = load %struct.socket*, %struct.socket** %10, align 8
  %78 = call i32 @finit(%struct.file* %70, i32 %75, i32 %76, %struct.socket* %77, i32* @socketops)
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @FNONBLOCK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %69
  %84 = load %struct.file*, %struct.file** %11, align 8
  %85 = load i32, i32* @FIONBIO, align 4
  %86 = load %struct.thread*, %struct.thread** %6, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.thread*, %struct.thread** %6, align 8
  %90 = call i32 @fo_ioctl(%struct.file* %84, i32 %85, i32* %15, i32 %88, %struct.thread* %89)
  br label %91

91:                                               ; preds = %83, %69
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.thread*, %struct.thread** %6, align 8
  %94 = getelementptr inbounds %struct.thread, %struct.thread* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %64
  %98 = load %struct.file*, %struct.file** %11, align 8
  %99 = load %struct.thread*, %struct.thread** %6, align 8
  %100 = call i32 @fdrop(%struct.file* %98, %struct.thread* %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %51
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @AUDIT_ARG_SOCKET(i32, i32, i32) #1

declare dso_local i32 @falloc(%struct.thread*, %struct.file**, i32*, i32) #1

declare dso_local i32 @socreate(i32, %struct.socket**, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.socket*, i32*) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32*, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
