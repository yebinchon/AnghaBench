; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netblast/extr_netblast.c_blast_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netblast/extr_netblast.c_blast_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@SIGALRM = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"clock_getres\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@global_stop_flag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"start:             %zd.%09lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"finish:            %zd.%09lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"send calls:        %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"send errors:       %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"approx send rate:  %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"approx error rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*, i32)* @blast_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blast_loop(i32 %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.itimerval, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @SIGALRM, align 4
  %17 = load i32, i32* @signal_handler, align 4
  %18 = call i64 @signal(i32 %16, i32 %17)
  %19 = load i64, i64* @SIG_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %108

23:                                               ; preds = %4
  %24 = load i32, i32* @CLOCK_REALTIME, align 4
  %25 = call i32 @clock_getres(i32 %24, %struct.timespec* %11)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %108

29:                                               ; preds = %23
  %30 = load i32, i32* @CLOCK_REALTIME, align 4
  %31 = call i32 @clock_gettime(i32 %30, %struct.timespec* %10)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %108

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %12, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %12, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %12, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %12, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @ITIMER_REAL, align 4
  %46 = call i64 @setitimer(i32 %45, %struct.itimerval* %12, i32* null)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %108

50:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %13, align 8
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i64, i64* @global_stop_flag, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %55, 4
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @be32enc(i32* %58, i64 %59)
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @send(i32 %64, i32* %65, i32 %66, i32 0)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load i32, i32* @CLOCK_REALTIME, align 4
  %77 = call i32 @clock_gettime(i32 %76, %struct.timespec* %11)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %108

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %86)
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %7, align 8
  %102 = sdiv i64 %100, %101
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %102)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sdiv i32 %104, %105
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %81, %79, %48, %33, %27, %21
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @clock_getres(i32, %struct.timespec*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @be32enc(i32*, i64) #1

declare dso_local i64 @send(i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
