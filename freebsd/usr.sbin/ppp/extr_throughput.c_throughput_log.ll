; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i32, i32, i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"%s%sConnect time: %d secs: %llu octets in, %llu octets out\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s%s%llu packets in, %llu packets out\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c" total %llu bytes/sec, peak %llu bytes/sec on %s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" total %llu bytes/sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throughput_log(%struct.pppThroughput* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pppThroughput*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pppThroughput* %0, %struct.pppThroughput** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %9 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %89

12:                                               ; preds = %3
  %13 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %14 = call i32 @throughput_uptime(%struct.pppThroughput* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %29 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %32 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @log_Printf(i32 %19, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %26, i32 %27, i32 %30, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %43 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %44 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %47 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @log_Printf(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %36, i8* %42, i32 %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %18
  %54 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %55 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %61 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %64 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load i32, i32* %7, align 4
  %68 = sdiv i32 %66, %67
  %69 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %70 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %73 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %72, i32 0, i32 2
  %74 = call i32 @ctime(i32* %73)
  %75 = call i32 (i32, i8*, ...) @log_Printf(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  br label %88

76:                                               ; preds = %53
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %79 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %82 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = load i32, i32* %7, align 4
  %86 = sdiv i32 %84, %85
  %87 = call i32 (i32, i8*, ...) @log_Printf(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %76, %58
  br label %89

89:                                               ; preds = %88, %3
  ret void
}

declare dso_local i32 @throughput_uptime(%struct.pppThroughput*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
