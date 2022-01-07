; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_netisr.c_netisr_print_workstream.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_netisr.c_netisr_print_workstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_netisr_work = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_netisr_workstream = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"work\00", align 1
@work_array_len = common dso_local global i64 0, align 8
@work_array = common dso_local global %struct.sysctl_netisr_work* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"{t:workstream/%4u} \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"{t:cpu/%3u} \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"{P:  }\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"{t:name/%-6s}\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" {t:length/%5u}\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" {t:watermark/%5u}\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" {t:dispatched/%8ju}\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c" {t:hybrid-dispatched/%8ju}\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c" {t:queue-drops/%8ju}\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c" {t:queued/%8ju}\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" {t:handled/%8ju}\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysctl_netisr_workstream*)* @netisr_print_workstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netisr_print_workstream(%struct.sysctl_netisr_workstream* %0) #0 {
  %2 = alloca %struct.sysctl_netisr_workstream*, align 8
  %3 = alloca %struct.sysctl_netisr_work*, align 8
  %4 = alloca i64, align 8
  store %struct.sysctl_netisr_workstream* %0, %struct.sysctl_netisr_workstream** %2, align 8
  %5 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %68, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @work_array_len, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  %11 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** @work_array, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %11, i64 %12
  store %struct.sysctl_netisr_work* %13, %struct.sysctl_netisr_work** %3, align 8
  %14 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %15 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sysctl_netisr_workstream*, %struct.sysctl_netisr_workstream** %2, align 8
  %18 = getelementptr inbounds %struct.sysctl_netisr_workstream, %struct.sysctl_netisr_workstream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %68

22:                                               ; preds = %10
  %23 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sysctl_netisr_workstream*, %struct.sysctl_netisr_workstream** %2, align 8
  %25 = getelementptr inbounds %struct.sysctl_netisr_workstream, %struct.sysctl_netisr_workstream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load %struct.sysctl_netisr_workstream*, %struct.sysctl_netisr_workstream** %2, align 8
  %29 = getelementptr inbounds %struct.sysctl_netisr_workstream, %struct.sysctl_netisr_workstream* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %34 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netisr_proto2name(i32 %35)
  %37 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %39 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %43 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %47 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %51 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %55 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %56)
  %58 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %59 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %60)
  %62 = load %struct.sysctl_netisr_work*, %struct.sysctl_netisr_work** %3, align 8
  %63 = getelementptr inbounds %struct.sysctl_netisr_work, %struct.sysctl_netisr_work* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %64)
  %66 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %67 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %22, %21
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %6

71:                                               ; preds = %6
  %72 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @netisr_proto2name(i32) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
