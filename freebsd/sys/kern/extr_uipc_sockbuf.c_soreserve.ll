; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_soreserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_soreserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.socket = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soreserve(%struct.socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %8, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = call i32 @SOCKBUF_LOCK(%struct.TYPE_5__* %11)
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %15 = call i32 @SOCKBUF_LOCK(%struct.TYPE_5__* %14)
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = load %struct.thread*, %struct.thread** %8, align 8
  %21 = call i64 @sbreserve_locked(%struct.TYPE_5__* %17, i32 %18, %struct.socket* %19, %struct.thread* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %87

24:                                               ; preds = %3
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = load %struct.thread*, %struct.thread** %8, align 8
  %30 = call i64 @sbreserve_locked(%struct.TYPE_5__* %26, i32 %27, %struct.socket* %28, %struct.thread* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %82

33:                                               ; preds = %24
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.socket*, %struct.socket** %5, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.socket*, %struct.socket** %5, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64, i64* @MCLBYTES, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.socket*, %struct.socket** %5, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load %struct.socket*, %struct.socket** %5, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %60, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %55
  %67 = load %struct.socket*, %struct.socket** %5, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.socket*, %struct.socket** %5, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %66, %55
  %76 = load %struct.socket*, %struct.socket** %5, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 1
  %78 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__* %77)
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  %81 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__* %80)
  store i32 0, i32* %4, align 4
  br label %95

82:                                               ; preds = %32
  %83 = load %struct.socket*, %struct.socket** %5, align 8
  %84 = getelementptr inbounds %struct.socket, %struct.socket* %83, i32 0, i32 0
  %85 = load %struct.socket*, %struct.socket** %5, align 8
  %86 = call i32 @sbrelease_locked(%struct.TYPE_5__* %84, %struct.socket* %85)
  br label %87

87:                                               ; preds = %82, %23
  %88 = load %struct.socket*, %struct.socket** %5, align 8
  %89 = getelementptr inbounds %struct.socket, %struct.socket* %88, i32 0, i32 1
  %90 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__* %89)
  %91 = load %struct.socket*, %struct.socket** %5, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 0
  %93 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__* %92)
  %94 = load i32, i32* @ENOBUFS, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %75
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_5__*) #1

declare dso_local i64 @sbreserve_locked(%struct.TYPE_5__*, i32, %struct.socket*, %struct.thread*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @sbrelease_locked(%struct.TYPE_5__*, %struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
