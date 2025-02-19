; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdq = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"tdq %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09lock            %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09Lock name:      %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\09load:           %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\09switch cnt:     %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09old switch cnt: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\09timeshare idx:  %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09timeshare ridx: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"\09load transferable: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\09lowest priority:   %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\09realtime runq:\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\09timeshare runq:\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09idle runq:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tdq_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tdq*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tdq* @TDQ_CPU(i32 %4)
  store %struct.tdq* %5, %struct.tdq** %3, align 8
  %6 = load %struct.tdq*, %struct.tdq** %3, align 8
  %7 = call i32 @TDQ_ID(%struct.tdq* %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.tdq*, %struct.tdq** %3, align 8
  %10 = call i32 @TDQ_LOCKPTR(%struct.tdq* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.tdq*, %struct.tdq** %3, align 8
  %13 = getelementptr inbounds %struct.tdq, %struct.tdq* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %16 = load %struct.tdq*, %struct.tdq** %3, align 8
  %17 = getelementptr inbounds %struct.tdq, %struct.tdq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load %struct.tdq*, %struct.tdq** %3, align 8
  %21 = getelementptr inbounds %struct.tdq, %struct.tdq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load %struct.tdq*, %struct.tdq** %3, align 8
  %25 = getelementptr inbounds %struct.tdq, %struct.tdq* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = load %struct.tdq*, %struct.tdq** %3, align 8
  %29 = getelementptr inbounds %struct.tdq, %struct.tdq* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load %struct.tdq*, %struct.tdq** %3, align 8
  %33 = getelementptr inbounds %struct.tdq, %struct.tdq* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  %36 = load %struct.tdq*, %struct.tdq** %3, align 8
  %37 = getelementptr inbounds %struct.tdq, %struct.tdq* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = load %struct.tdq*, %struct.tdq** %3, align 8
  %41 = getelementptr inbounds %struct.tdq, %struct.tdq* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %45 = load %struct.tdq*, %struct.tdq** %3, align 8
  %46 = getelementptr inbounds %struct.tdq, %struct.tdq* %45, i32 0, i32 10
  %47 = call i32 @runq_print(i32* %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %49 = load %struct.tdq*, %struct.tdq** %3, align 8
  %50 = getelementptr inbounds %struct.tdq, %struct.tdq* %49, i32 0, i32 9
  %51 = call i32 @runq_print(i32* %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %53 = load %struct.tdq*, %struct.tdq** %3, align 8
  %54 = getelementptr inbounds %struct.tdq, %struct.tdq* %53, i32 0, i32 8
  %55 = call i32 @runq_print(i32* %54)
  ret void
}

declare dso_local %struct.tdq* @TDQ_CPU(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @TDQ_ID(%struct.tdq*) #1

declare dso_local i32 @TDQ_LOCKPTR(%struct.tdq*) #1

declare dso_local i32 @runq_print(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
