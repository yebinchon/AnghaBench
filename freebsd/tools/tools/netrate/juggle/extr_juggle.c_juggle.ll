; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_juggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_juggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"juggle: clock_gettime\00", align 1
@NUMCYCLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"message_send fd1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"message_recv fd2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"message_send fd2\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"message_recv fd1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @juggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @juggle(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @CLOCK_REALTIME, align 4
  %12 = call i64 @clock_gettime(i32 %11, %struct.timespec* %8)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @err(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %73, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NUMCYCLES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @message_send(i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %22

36:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @message_recv(i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @message_send(i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %37

57:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @message_recv(i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %58

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %17

76:                                               ; preds = %17
  %77 = load i32, i32* @CLOCK_REALTIME, align 4
  %78 = call i64 @clock_gettime(i32 %77, %struct.timespec* %4)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @err(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  %83 = call i32 @timespecsub(%struct.timespec* %4, %struct.timespec* %8, %struct.timespec* %4)
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  ret i32 %85
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @message_send(i32) #1

declare dso_local i64 @message_recv(i32) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
