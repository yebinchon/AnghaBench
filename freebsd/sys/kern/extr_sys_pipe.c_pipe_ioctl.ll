; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.pipe* }
%struct.pipe = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@PIPE_ASYNC = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* @pipe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_ioctl(%struct.file* %0, i32 %1, i8* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.pipe*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.pipe*, %struct.pipe** %15, align 8
  store %struct.pipe* %16, %struct.pipe** %12, align 8
  %17 = load %struct.pipe*, %struct.pipe** %12, align 8
  %18 = call i32 @PIPE_LOCK(%struct.pipe* %17)
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %105 [
    i32 132, label %20
    i32 134, label %21
    i32 131, label %40
    i32 130, label %73
    i32 133, label %82
    i32 128, label %88
    i32 129, label %98
  ]

20:                                               ; preds = %5
  br label %107

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @PIPE_ASYNC, align 4
  %28 = load %struct.pipe*, %struct.pipe** %12, align 8
  %29 = getelementptr inbounds %struct.pipe, %struct.pipe* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load i32, i32* @PIPE_ASYNC, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.pipe*, %struct.pipe** %12, align 8
  %36 = getelementptr inbounds %struct.pipe, %struct.pipe* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %26
  br label %107

40:                                               ; preds = %5
  %41 = load %struct.file*, %struct.file** %7, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FREAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32*
  store i32 0, i32* %49, align 4
  %50 = load %struct.pipe*, %struct.pipe** %12, align 8
  %51 = call i32 @PIPE_UNLOCK(%struct.pipe* %50)
  store i32 0, i32* %6, align 4
  br label %112

52:                                               ; preds = %40
  %53 = load %struct.pipe*, %struct.pipe** %12, align 8
  %54 = getelementptr inbounds %struct.pipe, %struct.pipe* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.pipe*, %struct.pipe** %12, align 8
  %60 = getelementptr inbounds %struct.pipe, %struct.pipe* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = bitcast i8* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load %struct.pipe*, %struct.pipe** %12, align 8
  %67 = getelementptr inbounds %struct.pipe, %struct.pipe* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %58
  br label %107

73:                                               ; preds = %5
  %74 = load %struct.pipe*, %struct.pipe** %12, align 8
  %75 = call i32 @PIPE_UNLOCK(%struct.pipe* %74)
  %76 = load i8*, i8** %9, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pipe*, %struct.pipe** %12, align 8
  %80 = getelementptr inbounds %struct.pipe, %struct.pipe* %79, i32 0, i32 0
  %81 = call i32 @fsetown(i32 %78, i32* %80)
  store i32 %81, i32* %13, align 4
  br label %110

82:                                               ; preds = %5
  %83 = load %struct.pipe*, %struct.pipe** %12, align 8
  %84 = getelementptr inbounds %struct.pipe, %struct.pipe* %83, i32 0, i32 0
  %85 = call i32 @fgetown(i32* %84)
  %86 = load i8*, i8** %9, align 8
  %87 = bitcast i8* %86 to i32*
  store i32 %85, i32* %87, align 4
  br label %107

88:                                               ; preds = %5
  %89 = load %struct.pipe*, %struct.pipe** %12, align 8
  %90 = call i32 @PIPE_UNLOCK(%struct.pipe* %89)
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 0, %93
  %95 = load %struct.pipe*, %struct.pipe** %12, align 8
  %96 = getelementptr inbounds %struct.pipe, %struct.pipe* %95, i32 0, i32 0
  %97 = call i32 @fsetown(i32 %94, i32* %96)
  store i32 %97, i32* %13, align 4
  br label %110

98:                                               ; preds = %5
  %99 = load %struct.pipe*, %struct.pipe** %12, align 8
  %100 = getelementptr inbounds %struct.pipe, %struct.pipe* %99, i32 0, i32 0
  %101 = call i32 @fgetown(i32* %100)
  %102 = sub nsw i32 0, %101
  %103 = load i8*, i8** %9, align 8
  %104 = bitcast i8* %103 to i32*
  store i32 %102, i32* %104, align 4
  br label %107

105:                                              ; preds = %5
  %106 = load i32, i32* @ENOTTY, align 4
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %98, %82, %72, %39, %20
  %108 = load %struct.pipe*, %struct.pipe** %12, align 8
  %109 = call i32 @PIPE_UNLOCK(%struct.pipe* %108)
  br label %110

110:                                              ; preds = %107, %88, %73
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %47
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
