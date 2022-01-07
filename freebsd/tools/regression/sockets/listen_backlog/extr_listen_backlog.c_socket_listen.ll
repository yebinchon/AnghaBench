; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_socket_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/listen_backlog/extr_listen_backlog.c_socket_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"%s: %s: socket_listen: socket(%s, %s)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"socket_listen\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: %s: socket_listen: create backlog is %d not %d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: %s: socket_listen: listen(, %d)\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: %s: socket_listen: listen backlog is %d not %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8*)* @socket_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_listen(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i8* %7, i8* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @socket(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %25, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %11
  %33 = load i8*, i8** %22, align 8
  %34 = load i8*, i8** %23, align 8
  %35 = load i8*, i8** %20, align 8
  %36 = load i8*, i8** %21, align 8
  %37 = call i32 (i8*, i8*, i8*, ...) @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34, i8* %35, i8* %36)
  %38 = load i32, i32* %25, align 4
  %39 = call i32 @close(i32 %38)
  store i32 -1, i32* %12, align 4
  br label %97

40:                                               ; preds = %11
  %41 = load i32, i32* %25, align 4
  %42 = load i8*, i8** %22, align 8
  %43 = load i8*, i8** %23, align 8
  %44 = call i64 @socket_get_backlog(i32 %41, i32* %24, i8* %42, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %25, align 4
  %48 = call i32 @close(i32 %47)
  store i32 -1, i32* %12, align 4
  br label %97

49:                                               ; preds = %40
  %50 = load i32, i32* %24, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %22, align 8
  %55 = load i8*, i8** %23, align 8
  %56 = load i32, i32* %24, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %25, align 4
  %60 = call i32 @close(i32 %59)
  store i32 -1, i32* %12, align 4
  br label %97

61:                                               ; preds = %49
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @listen(i32 %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8*, i8** %22, align 8
  %68 = load i8*, i8** %23, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 (i8*, i8*, i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* %25, align 4
  %72 = call i32 @close(i32 %71)
  store i32 -1, i32* %12, align 4
  br label %97

73:                                               ; preds = %61
  %74 = load i32, i32* %25, align 4
  %75 = load i8*, i8** %22, align 8
  %76 = load i8*, i8** %23, align 8
  %77 = call i64 @socket_get_backlog(i32 %74, i32* %24, i8* %75, i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %25, align 4
  %81 = call i32 @close(i32 %80)
  store i32 -1, i32* %12, align 4
  br label %97

82:                                               ; preds = %73
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i8*, i8** %22, align 8
  %88 = load i8*, i8** %23, align 8
  %89 = load i32, i32* %24, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %25, align 4
  %93 = call i32 @close(i32 %92)
  store i32 -1, i32* %12, align 4
  br label %97

94:                                               ; preds = %82
  %95 = load i32, i32* %25, align 4
  %96 = load i32*, i32** %19, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %86, %79, %66, %53, %46, %32
  %98 = load i32, i32* %12, align 4
  ret i32 %98
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @socket_get_backlog(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*, i32, i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
