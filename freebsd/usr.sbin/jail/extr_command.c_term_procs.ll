; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_term_procs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_term_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i64, i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.kinfo_proc = type { i64, i32 }

@term_procs.kd = internal global i32* null, align 8
@IP_STOP_TIMEOUT = common dso_local global i64 0, align 8
@DEFAULT_STOP_TIMEOUT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@KERN_PROC_PROC = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"sent SIGTERM to:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfjail*)* @term_procs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @term_procs(%struct.cfjail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfjail*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfjail* %0, %struct.cfjail** %3, align 8
  %9 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %10 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @IP_STOP_TIMEOUT, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @int_param(i32 %14, i32* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @DEFAULT_STOP_TIMEOUT, align 4
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %119

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32*, i32** @term_procs.kd, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = call i32* @kvm_open(i32* null, i32* null, i32* null, i32 %28, i32* null)
  store i32* %29, i32** @term_procs.kd, align 8
  %30 = load i32*, i32** @term_procs.kd, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %119

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32*, i32** @term_procs.kd, align 8
  %36 = load i32, i32* @KERN_PROC_PROC, align 4
  %37 = call %struct.kinfo_proc* @kvm_getprocs(i32* %35, i32 %36, i32 0, i32* %7)
  store %struct.kinfo_proc* %37, %struct.kinfo_proc** %4, align 8
  %38 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %39 = icmp eq %struct.kinfo_proc* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %119

41:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %94, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %42
  %47 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %47, i64 %49
  %51 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %54 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %46
  %58 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %58, i64 %60
  %62 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SIGTERM, align 4
  %65 = call i64 @kill(i32 %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %57
  %68 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %69 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %69, i64 %71
  %73 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @add_proc(%struct.cfjail* %68, i32 %74)
  %76 = load i64, i64* @verbose, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %67
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  %82 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %83 = call i32 @jail_note(%struct.cfjail* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %85, i64 %87
  %89 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %84, %67
  br label %93

93:                                               ; preds = %92, %57, %46
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %42

97:                                               ; preds = %42
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %97
  %103 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %104 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32, i32* @CLOCK_REALTIME, align 4
  %109 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %110 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %109, i32 0, i32 2
  %111 = call i32 @clock_gettime(i32 %108, %struct.TYPE_2__* %110)
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %114 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 8
  store i32 1, i32* %2, align 4
  br label %119

118:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %107, %40, %32, %22
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @int_param(i32, i32*) #1

declare dso_local i32* @kvm_open(i32*, i32*, i32*, i32, i32*) #1

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32*, i32, i32, i32*) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @add_proc(%struct.cfjail*, i32) #1

declare dso_local i32 @jail_note(%struct.cfjail*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
