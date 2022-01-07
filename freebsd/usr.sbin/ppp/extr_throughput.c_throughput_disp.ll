; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_disp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i32, i32, i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.prompt = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Connect time: %d:%02d:%02d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" - down at %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%llu octets in, %llu octets out\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%llu packets in, %llu packets out\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"  overall   %6llu bytes/sec\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"  %s %6llu bytes/sec in, %6llu bytes/sec out (over the last %d secs)\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"average  \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"currently\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"  peak      %6llu bytes/sec on %s\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Overall %llu bytes/sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throughput_disp(%struct.pppThroughput* %0, %struct.prompt* %1) #0 {
  %3 = alloca %struct.pppThroughput*, align 8
  %4 = alloca %struct.prompt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pppThroughput* %0, %struct.pppThroughput** %3, align 8
  store %struct.prompt* %1, %struct.prompt** %4, align 8
  %7 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %8 = call i32 @throughput_uptime(%struct.pppThroughput* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.prompt*, %struct.prompt** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 3600
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 60
  %14 = srem i32 %13, 60
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 60
  %17 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %16)
  %18 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %19 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.prompt*, %struct.prompt** %4, align 8
  %24 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %25 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %24, i32 0, i32 7
  %26 = call i32 @ctime(i64* %25)
  %27 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.prompt*, %struct.prompt** %4, align 8
  %30 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 1, %36 ]
  store i32 %38, i32* %6, align 4
  %39 = load %struct.prompt*, %struct.prompt** %4, align 8
  %40 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %41 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %44 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.prompt*, %struct.prompt** %4, align 8
  %48 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %49 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %52 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %56 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %37
  %60 = load %struct.prompt*, %struct.prompt** %4, align 8
  %61 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %62 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %65 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %67, %68
  %70 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load %struct.prompt*, %struct.prompt** %4, align 8
  %72 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %73 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %78 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %79 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %83 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %88 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %59
  %92 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %93 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  br label %97

95:                                               ; preds = %59
  %96 = load i32, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i32 [ %94, %91 ], [ %96, %95 ]
  %99 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %71, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i8* %77, i32 %81, i32 %85, i32 %98)
  %100 = load %struct.prompt*, %struct.prompt** %4, align 8
  %101 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %102 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %105 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %104, i32 0, i32 3
  %106 = call i32 @ctime(i64* %105)
  %107 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %103, i32 %106)
  br label %120

108:                                              ; preds = %37
  %109 = load %struct.prompt*, %struct.prompt** %4, align 8
  %110 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %111 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %114 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = load i32, i32* %6, align 4
  %118 = sdiv i32 %116, %117
  %119 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %108, %97
  ret void
}

declare dso_local i32 @throughput_uptime(%struct.pppThroughput*) #1

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

declare dso_local i32 @ctime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
