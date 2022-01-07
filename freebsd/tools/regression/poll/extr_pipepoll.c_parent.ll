; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipepoll.c_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipepoll.c_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = common dso_local global i32 0, align 4
@filetype = common dso_local global i64 0, align 8
@FT_FIFO = common dso_local global i64 0, align 8
@FIFONAME = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"open for write\00", align 1
@cpid = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"close for write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parent(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @usleep(i32 1)
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i32, i32* @state, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %4

8:                                                ; preds = %4
  %9 = load i64, i64* @filetype, align 8
  %10 = load i64, i64* @FT_FIFO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32, i32* @FIFONAME, align 4
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i32 %13, i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %12
  br label %23

23:                                               ; preds = %22, %8
  %24 = load i32, i32* @cpid, align 4
  %25 = load i32, i32* @SIGUSR1, align 4
  %26 = call i32 @kill(i32 %24, i32 %25)
  %27 = call i32 @usleep(i32 1)
  br label %28

28:                                               ; preds = %31, %23
  %29 = load i32, i32* @state, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %28

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @write(i32 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, i32* @cpid, align 4
  %40 = load i32, i32* @SIGUSR1, align 4
  %41 = call i32 @kill(i32 %39, i32 %40)
  %42 = call i32 @usleep(i32 1)
  br label %43

43:                                               ; preds = %46, %38
  %44 = load i32, i32* @state, align 4
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %43

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = call i64 @close(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* @cpid, align 4
  %55 = load i32, i32* @SIGUSR1, align 4
  %56 = call i32 @kill(i32 %54, i32 %55)
  %57 = call i32 @usleep(i32 1)
  br label %58

58:                                               ; preds = %61, %53
  %59 = load i32, i32* @state, align 4
  %60 = icmp ne i32 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %58

62:                                               ; preds = %58
  %63 = load i64, i64* @filetype, align 8
  %64 = load i64, i64* @FT_FIFO, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %116

67:                                               ; preds = %62
  %68 = load i32, i32* @FIFONAME, align 4
  %69 = load i32, i32* @O_WRONLY, align 4
  %70 = load i32, i32* @O_NONBLOCK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @open(i32 %68, i32 %71)
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %67
  %78 = load i32, i32* @cpid, align 4
  %79 = load i32, i32* @SIGUSR1, align 4
  %80 = call i32 @kill(i32 %78, i32 %79)
  %81 = call i32 @usleep(i32 1)
  br label %82

82:                                               ; preds = %85, %77
  %83 = load i32, i32* @state, align 4
  %84 = icmp ne i32 %83, 5
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %82

86:                                               ; preds = %82
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @write(i32 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* @cpid, align 4
  %94 = load i32, i32* @SIGUSR1, align 4
  %95 = call i32 @kill(i32 %93, i32 %94)
  %96 = call i32 @usleep(i32 1)
  br label %97

97:                                               ; preds = %100, %92
  %98 = load i32, i32* @state, align 4
  %99 = icmp ne i32 %98, 6
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %97

101:                                              ; preds = %97
  %102 = load i32, i32* %2, align 4
  %103 = call i64 @close(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* @cpid, align 4
  %109 = load i32, i32* @SIGUSR1, align 4
  %110 = call i32 @kill(i32 %108, i32 %109)
  %111 = call i32 @usleep(i32 1)
  br label %112

112:                                              ; preds = %115, %107
  %113 = load i32, i32* @state, align 4
  %114 = icmp ne i32 %113, 7
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %112

116:                                              ; preds = %66, %112
  ret void
}

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
