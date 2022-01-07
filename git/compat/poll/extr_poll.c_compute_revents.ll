; ModuleID = '/home/carl/AnghaBench/git/compat/poll/extr_poll.c_compute_revents.c'
source_filename = "/home/carl/AnghaBench/git/compat/poll/extr_poll.c_compute_revents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_PEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@ENETRESET = common dso_local global i32 0, align 4
@ENOTSOCK = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@FIONREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*)* @compute_revents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_revents(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @FD_ISSET(i32 %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %22 = load i32, i32* @MSG_PEEK, align 4
  %23 = call i32 @recv(i32 %20, i8* %21, i32 64, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @errno, align 4
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @POLLHUP, align 4
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %91

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @ENOTCONN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @POLLIN, align 4
  %46 = load i32, i32* @POLLRDNORM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %90

52:                                               ; preds = %40
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @ESHUTDOWN, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @ECONNRESET, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @ECONNABORTED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @ENETRESET, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %60, %56, %52
  %69 = load i32, i32* @POLLHUP, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %89

72:                                               ; preds = %64
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @ENOTSOCK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* @POLLIN, align 4
  %78 = load i32, i32* @POLLRDNORM, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %88

84:                                               ; preds = %72
  %85 = load i32, i32* @POLLERR, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %76
  br label %89

89:                                               ; preds = %88, %68
  br label %90

90:                                               ; preds = %89, %44
  br label %91

91:                                               ; preds = %90, %33
  br label %92

92:                                               ; preds = %91, %5
  %93 = load i32, i32* %6, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i64 @FD_ISSET(i32 %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load i32, i32* @POLLOUT, align 4
  %99 = load i32, i32* @POLLWRNORM, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @POLLWRBAND, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %97, %92
  %108 = load i32, i32* %6, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = call i64 @FD_ISSET(i32 %108, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i32, i32* @POLLPRI, align 4
  %114 = load i32, i32* @POLLRDBAND, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %112, %107
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
