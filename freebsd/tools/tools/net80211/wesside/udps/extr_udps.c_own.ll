; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/udps/extr_udps.c_own.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/udps/extr_udps.c_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.timeval = type { double }
%struct.timespec = type { i32, i64 }
%struct.sockaddr = type { i32 }

@pps = common dso_local global double 0.000000e+00, align 8
@poll_rate = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"messed up a bit\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nanosleep()\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Sent %.03f p/s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @own(i32 %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %4, align 8
  store i32 10, i32* %6, align 4
  store i32 10000, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %13, align 4
  %15 = load double, double* @pps, align 8
  %16 = fdiv double 1.000000e+00, %15
  %17 = fmul double %16, 1.000000e+03
  %18 = fmul double %17, 1.000000e+03
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 5000
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  store i32 10, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double 9.000000e-01, %27
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %22, %2
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %14, align 4
  %32 = load double, double* @poll_rate, align 8
  %33 = load double, double* @pps, align 8
  %34 = fmul double %32, %33
  %35 = fptosi double %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %54 = bitcast %struct.sockaddr_in* %53 to %struct.sockaddr*
  %55 = call i32 @sendto(i32 %51, i8* %52, i32 6, i32 0, %struct.sockaddr* %54, i32 4)
  %56 = icmp ne i32 %55, 6
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %94

59:                                               ; preds = %50
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  %65 = call i32 @nanosleep(%struct.timespec* %12, i32* null)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %59
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %46

78:                                               ; preds = %46
  %79 = call i32 @gettimeofday(%struct.timeval* %11, i32* null)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = uitofp i32 %85 to double
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fsub double %88, %90
  %92 = fdiv double %86, %91
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), double %92)
  br label %94

94:                                               ; preds = %84, %57
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
