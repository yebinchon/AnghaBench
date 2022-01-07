; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_prutil.c_sched_is.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/p1003_1b/extr_prutil.c_sched_is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"sched_getparam\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"At line %d the scheduler should be %s yet it is %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sched_is(i32 %0, %struct.sched_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sched_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched_param, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sched_param* %1, %struct.sched_param** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* @errno, align 8
  %9 = call i32 @sched_getscheduler(i32 0)
  store i32 %9, i32* %7, align 4
  %10 = call i64 @sched_getparam(i32 0, %struct.sched_param* %8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @quit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %16 = icmp ne %struct.sched_param* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.sched_param*, %struct.sched_param** %5, align 8
  %19 = bitcast %struct.sched_param* %18 to i8*
  %20 = bitcast %struct.sched_param* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @sched_text(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @sched_text(i32 %33)
  %35 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %32, i8* %34)
  %36 = call i32 @exit(i32 -1) #4
  unreachable

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @sched_getscheduler(i32) #1

declare dso_local i64 @sched_getparam(i32, %struct.sched_param*) #1

declare dso_local i32 @quit(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i8*) #1

declare dso_local i8* @sched_text(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
