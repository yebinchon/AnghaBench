; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppush/extr_yppush_main.c_yppush_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@svc_fdset = common dso_local global i32 0, align 4
@svc_maxfd = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"select failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"select() timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @yppush_svc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yppush_svc_run(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* @svc_fdset, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @svc_maxfd, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @select(i64 %12, i32* %4, i32* null, i32* null, %struct.timeval* %5)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %26 [
    i32 -1, label %15
    i32 0, label %24
  ]

15:                                               ; preds = %9
  %16 = load i32, i32* @errno, align 4
  %17 = load i32, i32* @EINTR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %9

20:                                               ; preds = %15
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %28

24:                                               ; preds = %9
  %25 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %28

26:                                               ; preds = %9
  %27 = call i32 @svc_getreqset(i32* %4)
  br label %28

28:                                               ; preds = %26, %24, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @yp_error(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @svc_getreqset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
