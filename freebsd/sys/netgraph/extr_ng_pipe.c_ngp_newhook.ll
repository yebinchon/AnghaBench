; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_ngp_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_ngp_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.hookinfo = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@NG_PIPE_HOOK_UPPER = common dso_local global i32 0, align 4
@NG_PIPE_HOOK_LOWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ngp_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngp_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.hookinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @NG_PIPE_HOOK_UPPER, align 4
  %14 = call i64 @strcmp(i8* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = call i32 @bzero(%struct.TYPE_8__* %18, i32 8)
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = call i32 @NG_HOOK_SET_PRIVATE(i8* %24, %struct.TYPE_8__* %26)
  br label %48

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @NG_PIPE_HOOK_LOWER, align 4
  %31 = call i64 @strcmp(i8* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32 @bzero(%struct.TYPE_8__* %35, i32 8)
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @NG_HOOK_SET_PRIVATE(i8* %41, %struct.TYPE_8__* %43)
  br label %47

45:                                               ; preds = %28
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %66

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i8*, i8** %6, align 8
  %50 = call %struct.hookinfo* @NG_HOOK_PRIVATE(i8* %49)
  store %struct.hookinfo* %50, %struct.hookinfo** %9, align 8
  %51 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %52 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 50, i32* %53, align 4
  %54 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %55 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %58 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  %60 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %61 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %60, i32 0, i32 1
  %62 = call i32 @TAILQ_INIT(i32* %61)
  %63 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %64 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %63, i32 0, i32 0
  %65 = call i32 @TAILQ_INIT(i32* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %48, %45
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.TYPE_8__*) #1

declare dso_local %struct.hookinfo* @NG_HOOK_PRIVATE(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
