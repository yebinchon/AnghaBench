; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_socket/extr_unix_socket.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_socket/extr_unix_socket.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"socket(PF_LOCAL, SOCK_STREAM, 0)\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"socket(PF_LOCAL, SOCK_DGRAM, 0)\00", align 1
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"socket(PF_LOCAL, SOCK_RAW, 0) returned %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EPROTOTYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"socket(PF_LOCAL, SOCK_RAW, 0)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"socketpair(PF_LOCAL, SOCK_STREAM, 0, socks)\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"socketpair(PF_LOCAL, SOCK_STREAM, 0, socks) [0] < 0\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"socketpair(PF_LOCAL, SOCK_STREAM, 0, socks) [1] < 1\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"socketpair(PF_LOCAL, SOCK_DGRAM, 0, socks)\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"socketpair(PF_LOCAL, SOCK_DGRAM, 0, socks) [0] < 0\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"socketpair(PF_LOCAL, SOCK_DGRAM, 0, socks) [1] < 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @PF_LOCAL, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @close(i32 %12)
  %14 = load i32, i32* @PF_LOCAL, align 4
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @err(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i32, i32* @PF_LOCAL, align 4
  %25 = load i32, i32* @SOCK_RAW, align 4
  %26 = call i32 @socket(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EPROTOTYPE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @err(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* @PF_LOCAL, align 4
  %42 = load i32, i32* @SOCK_STREAM, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %44 = call i64 @socketpair(i32 %41, i32 %42, i32 0, i32* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @err(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* @PF_LOCAL, align 4
  %68 = load i32, i32* @SOCK_DGRAM, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %70 = call i64 @socketpair(i32 %67, i32 %68, i32 0, i32* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = call i32 @err(i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %60
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @close(i32 %88)
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @close(i32 %91)
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
