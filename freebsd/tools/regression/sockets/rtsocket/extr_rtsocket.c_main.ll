; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/rtsocket/extr_rtsocket.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/rtsocket/extr_rtsocket.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_ROUTE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"socket(PF_ROUTE, SOCK_STREAM, 0) returned %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EPROTOTYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"socket(PF_ROUTE, SOCK_STREAM, 0)\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"socket(PF_ROUTE, SOCK_DGRAM, 0) returned %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"socket(PF_ROUTE, SOCK_DGRAM, 0)\00", align 1
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"socket(PF_ROUTE, SOCK_RAW, 0)\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"socketpair(PF_ROUTE, SOCK_STREAM, 0, socks) success\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"socketpair(PF_ROUTE, SOCK_STREAM, 0, socks)\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"socketpair(PF_ROUTE, SOCK_DGRAM, 0, socks) success\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"socketpair(PF_ROUTE, SOCK_DGRAM, 0, socks)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @PF_ROUTE, align 4
  %5 = load i32, i32* @SOCK_STREAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @close(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %9, %0
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EPROTOTYPE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @err(i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* @PF_ROUTE, align 4
  %22 = load i32, i32* @SOCK_DGRAM, align 4
  %23 = call i32 @socket(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EPROTOTYPE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @err(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* @PF_ROUTE, align 4
  %39 = load i32, i32* @SOCK_RAW, align 4
  %40 = call i32 @socket(i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @err(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* @PF_ROUTE, align 4
  %49 = load i32, i32* @SOCK_STREAM, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %51 = call i64 @socketpair(i32 %48, i32 %49, i32 0, i32* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %53, %45
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EPROTOTYPE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @err(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* @PF_ROUTE, align 4
  %69 = load i32, i32* @SOCK_DGRAM, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %71 = call i64 @socketpair(i32 %68, i32 %69, i32 0, i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %81

81:                                               ; preds = %73, %67
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @EPROTOTYPE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @err(i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* @PF_ROUTE, align 4
  %89 = load i32, i32* @SOCK_RAW, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %91 = call i64 @socketpair(i32 %88, i32 %89, i32 0, i32* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @close(i32 %95)
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @close(i32 %98)
  %100 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %93, %87
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
