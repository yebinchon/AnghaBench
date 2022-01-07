; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_fifo.c_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_fifo.c_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.timespec = type { i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"sched_rr_get_interval\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"sched_setscheduler\00", align 1
@child = common dso_local global i64 0, align 8
@tidyup = common dso_local global i32 0, align 4
@ticked = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"SCHED_FIFO had erroneous context switches:\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d %g\0A\00", align 1
@SCHED_RR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Child never ran when it should have.\0A\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@MAX_RANAT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sched_param, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca [32 x %struct.timeval], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = call i32 @sched_rr_get_interval(i32 0, %struct.timespec* %11)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %10, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @PROT_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAP_ANON, align 4
  %26 = load i32, i32* @MAP_SHARED, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @mmap(i32 0, i32 8, i32 %24, i32 %27, i32 -1, i32 0)
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %7, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = icmp eq i64* %30, inttoptr (i64 -1 to i64*)
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @err(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %20
  %36 = load i64*, i64** %7, align 8
  store volatile i64 0, i64* %36, align 8
  %37 = load i32, i32* @SCHED_FIFO, align 4
  %38 = call i32 @sched_setscheduler(i64 0, i32 %37, %struct.sched_param* %10)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %146

42:                                               ; preds = %35
  %43 = call i64 (...) @getpid()
  store volatile i64 %43, i64* %8, align 8
  %44 = call i64 (...) @fork()
  store volatile i64 %44, i64* @child, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i64 (...) @getpid()
  store volatile i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %48
  %49 = load volatile i64, i64* %8, align 8
  %50 = load i64*, i64** %7, align 8
  store volatile i64 %49, i64* %50, align 8
  br label %48

51:                                               ; preds = %42
  %52 = load i32, i32* @tidyup, align 4
  %53 = call i32 @atexit(i32 %52)
  %54 = load volatile i64, i64* %8, align 8
  %55 = load i64*, i64** %7, align 8
  store volatile i64 %54, i64* %55, align 8
  store i64 0, i64* @ticked, align 8
  %56 = getelementptr inbounds [32 x %struct.timeval], [32 x %struct.timeval]* %12, i64 0, i64 0
  %57 = call i32 @gettimeofday(%struct.timeval* %56, i32 0)
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %80, %51
  %59 = load i64, i64* @ticked, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 32
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %81

66:                                               ; preds = %64
  %67 = load i64*, i64** %7, align 8
  %68 = load volatile i64, i64* %67, align 8
  %69 = load volatile i64, i64* @child, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = getelementptr inbounds [32 x %struct.timeval], [32 x %struct.timeval]* %12, i64 0, i64 0
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %72, i64 %74
  %76 = call i32 @gettimeofday(%struct.timeval* %75, i32 0)
  %77 = load i64*, i64** %7, align 8
  store volatile i64 0, i64* %77, align 8
  store i32 -1, i32* %6, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %71, %66
  br label %58

81:                                               ; preds = %64
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %105, %84
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* %13, align 4
  %94 = getelementptr inbounds [32 x %struct.timeval], [32 x %struct.timeval]* %12, i64 0, i64 0
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %94, i64 %96
  %98 = getelementptr inbounds [32 x %struct.timeval], [32 x %struct.timeval]* %12, i64 0, i64 0
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %98, i64 %100
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %101, i64 -1
  %103 = call double @tvsub(%struct.timeval* %97, %struct.timeval* %102)
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %93, double %103)
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %146

110:                                              ; preds = %81
  %111 = load volatile i64, i64* @child, align 8
  %112 = load i32, i32* @SCHED_RR, align 4
  %113 = call i32 @sched_setscheduler(i64 %111, i32 %112, %struct.sched_param* %10)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @SCHED_RR, align 4
  %117 = call i32 @sched_setscheduler(i64 0, i32 %116, %struct.sched_param* %10)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %110
  %120 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %146

121:                                              ; preds = %115
  store i32 -1, i32* %6, align 4
  store i64 0, i64* @ticked, align 8
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %133, %121
  %123 = load i64, i64* @ticked, align 8
  %124 = icmp ne i64 %123, 0
  %125 = xor i1 %124, true
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i64*, i64** %7, align 8
  %128 = load volatile i64, i64* %127, align 8
  %129 = load volatile i64, i64* @child, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  br label %136

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %122

136:                                              ; preds = %131, %122
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* @stderr, align 4
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @exit(i32 %144) #3
  unreachable

146:                                              ; preds = %119, %108, %40
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @sched_rr_get_interval(i32, %struct.timespec*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sched_setscheduler(i64, i32, %struct.sched_param*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local double @tvsub(%struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
