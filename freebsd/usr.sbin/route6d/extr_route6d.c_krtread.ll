; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_krtread.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_krtread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NET_RT_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sysctl estimate\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sysctl NET_RT_DUMP\00", align 1
@RT_DUMP_MAXRETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s (with %d retries, msize=%lu)\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"NET_RT_DUMP %d retires\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @krtread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krtread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [6 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rt_msghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %5, align 8
  %11 = load i32, i32* @CTL_NET, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = load i32, i32* @PF_ROUTE, align 4
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* @AF_INET6, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @NET_RT_DUMP, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %18, i32* %19, align 16
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %62, %1
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @sleep(i32 1)
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @free(i8* %32)
  store i8* null, i8** %5, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %37 = call i32 @nitems(i32* %36)
  %38 = call i64 @sysctl(i32* %35, i32 %37, i8* null, i64* %4, i32* null, i32 0)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %55

41:                                               ; preds = %34
  %42 = load i64, i64* %4, align 8
  %43 = call i8* @malloc(i64 %42)
  store i8* %43, i8** %5, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %55

46:                                               ; preds = %41
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %49 = call i32 @nitems(i32* %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @sysctl(i32* %47, i32 %49, i8* %50, i64* %4, i32* null, i32 0)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %53, %45, %40
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @RT_DUMP_MAXRETRY, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i1 [ false, %55 ], [ %61, %59 ]
  br i1 %63, label %21, label %64

64:                                               ; preds = %62
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* %4, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %68, i32 %69, i32 %71)
  br label %81

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 1, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @LOG_INFO, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @syslog(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %5, align 8
  store i8* %85, i8** %6, align 8
  br label %86

86:                                               ; preds = %96, %81
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ult i8* %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = bitcast i8* %91 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %92, %struct.rt_msghdr** %8, align 8
  %93 = load %struct.rt_msghdr*, %struct.rt_msghdr** %8, align 8
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @rt_entry(%struct.rt_msghdr* %93, i32 %94)
  br label %96

96:                                               ; preds = %90
  %97 = load %struct.rt_msghdr*, %struct.rt_msghdr** %8, align 8
  %98 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %6, align 8
  br label %86

103:                                              ; preds = %86
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @free(i8* %104)
  ret void
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fatal(i8*, i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @rt_entry(%struct.rt_msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
