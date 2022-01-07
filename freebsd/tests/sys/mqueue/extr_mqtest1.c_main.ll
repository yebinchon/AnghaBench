; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/mqueue/extr_mqtest1.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/mqueue/extr_mqtest1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mq_attr = type { i32, i32 }
%struct.sigevent = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"mqueuefs\00", align 1
@MQNAME = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mq_open\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mq_unlink\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mq_getattr\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"mq_maxmsg changed\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"mq_msgsize changed\00", align 1
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"mq_notify\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"mq_notify 2\00", align 1
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"mq_notify 3\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"mq_notify 4\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"mq_close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mq_attr, align 4
  %3 = alloca %struct.mq_attr, align 4
  %4 = alloca %struct.sigevent, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 @PLAIN_REQUIRE_KERNEL_MODULE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %2, i32 0, i32 0
  store i32 2, i32* %8, align 4
  %9 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %2, i32 0, i32 1
  store i32 100, i32* %9, align 4
  %10 = load i32, i32* @MQNAME, align 4
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_EXCL, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @mq_open(i32 %10, i32 %15, i32 438, %struct.mq_attr* %2)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %0
  %22 = load i32, i32* @MQNAME, align 4
  %23 = call i32 @mq_unlink(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @mq_getattr(i64 %29, %struct.mq_attr* %3)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  %44 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %2, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %3, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* @SIGEV_SIGNAL, align 4
  %53 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %4, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @SIGRTMIN, align 4
  %55 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %4, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @mq_notify(i64 %56, %struct.sigevent* %4)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @mq_notify(i64 %63, %struct.sigevent* %4)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %76

69:                                               ; preds = %62
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EBUSY, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %75, %67
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @mq_notify(i64 %77, %struct.sigevent* null)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @mq_close(i64 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  ret i32 0
}

declare dso_local i32 @PLAIN_REQUIRE_KERNEL_MODULE(i8*, i32) #1

declare dso_local i64 @mq_open(i32, i32, i32, %struct.mq_attr*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @mq_unlink(i32) #1

declare dso_local i32 @mq_getattr(i64, %struct.mq_attr*) #1

declare dso_local i32 @mq_notify(i64, %struct.sigevent*) #1

declare dso_local i32 @mq_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
