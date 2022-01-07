; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32* }
%struct.nmreq_opt_csb = type { i32 }
%struct.timespec = type { i32 }

@THRET_FAILURE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"sem_init() failed: %s\0A\00", align 1
@sync_kloop_worker = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pthread_create(kloop1): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pthread_create(kloop2): %s\0A\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"sem_timedwait() failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"pthread_join(kloop1): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"pthread_join(kloop2): %s %d\0A\00", align 1
@THRET_SUCCESS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @sync_kloop_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_kloop_conflict(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_opt_csb, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %13 = load i8*, i8** @THRET_FAILURE, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** @THRET_FAILURE, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %16 = call i32 @push_csb_option(%struct.TestContext* %15, %struct.nmreq_opt_csb* %4)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %2, align 4
  br label %142

21:                                               ; preds = %1
  %22 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %23 = call i32 @port_register_hwall(%struct.TestContext* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %2, align 4
  br label %142

28:                                               ; preds = %21
  %29 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %30 = call i32 @clear_options(%struct.TestContext* %29)
  %31 = call i32 @sem_init(i32* %10, i32 0, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = call i8* @strerror(i32 %35)
  %37 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %2, align 4
  br label %142

39:                                               ; preds = %28
  %40 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %41 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %40, i32 0, i32 0
  store i32* %10, i32** %41, align 8
  %42 = load i32, i32* @sync_kloop_worker, align 4
  %43 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %44 = call i32 @pthread_create(i32* %5, i32* null, i32 %42, %struct.TestContext* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* %12, align 4
  %52 = call i8* @strerror(i32 %51)
  %53 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i32, i32* @sync_kloop_worker, align 4
  %56 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %57 = call i32 @pthread_create(i32* %6, i32* null, i32 %55, %struct.TestContext* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  %65 = call i8* @strerror(i32 %64)
  %66 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load i32, i32* @CLOCK_REALTIME, align 4
  %69 = call i32 @clock_gettime(i32 %68, %struct.timespec* %9)
  %70 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %70, align 4
  %73 = call i32 @sem_timedwait(i32* %10, %struct.timespec* %9)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load i32, i32* @errno, align 4
  %81 = call i8* @strerror(i32 %80)
  %82 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %67
  %84 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %85 = call i32 @sync_kloop_stop(%struct.TestContext* %84)
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @pthread_join(i32 %88, i8** %7)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load i32, i32* %12, align 4
  %97 = call i8* @strerror(i32 %96)
  %98 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %83
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @pthread_join(i32 %100, i8** %8)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load i32, i32* %12, align 4
  %109 = call i8* @strerror(i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %99
  %113 = call i32 @sem_destroy(i32* %10)
  %114 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %115 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %2, align 4
  br label %142

120:                                              ; preds = %112
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** @THRET_SUCCESS, align 8
  %123 = icmp eq i8* %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** @THRET_FAILURE, align 8
  %127 = icmp eq i8* %125, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %124, %120
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** @THRET_FAILURE, align 8
  %131 = icmp eq i8* %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** @THRET_SUCCESS, align 8
  %135 = icmp eq i8* %133, %134
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i1 [ false, %128 ], [ %135, %132 ]
  br label %138

138:                                              ; preds = %136, %124
  %139 = phi i1 [ true, %124 ], [ %137, %136 ]
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 0, i32 -1
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %118, %34, %26, %19
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @push_csb_option(%struct.TestContext*, %struct.nmreq_opt_csb*) #1

declare dso_local i32 @port_register_hwall(%struct.TestContext*) #1

declare dso_local i32 @clear_options(%struct.TestContext*) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TestContext*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @sem_timedwait(i32*, %struct.timespec*) #1

declare dso_local i32 @sync_kloop_stop(%struct.TestContext*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @sem_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
