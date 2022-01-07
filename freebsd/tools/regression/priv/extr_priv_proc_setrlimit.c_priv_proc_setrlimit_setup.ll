; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_proc_setrlimit.c_priv_proc_setrlimit_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_proc_setrlimit.c_priv_proc_setrlimit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.test = type { i32 }

@RLIMIT_DATA = common dso_local global i32 0, align 4
@rl_base = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"priv_proc_setrlimit_setup: getrlimit\00", align 1
@rl_lowered = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"priv_proc_setrlimit_setup: setrlimit\00", align 1
@initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_proc_setrlimit_setup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.test*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.test* %2, %struct.test** %7, align 8
  %8 = load i32, i32* @RLIMIT_DATA, align 4
  %9 = call i64 @getrlimit(i32 %8, %struct.TYPE_5__* @rl_base)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %24

13:                                               ; preds = %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_5__* @rl_lowered to i8*), i8* align 4 bitcast (%struct.TYPE_5__* @rl_base to i8*), i64 8, i1 false)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rl_lowered, i32 0, i32 0), align 4
  %15 = sub nsw i32 %14, 20
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rl_lowered, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rl_lowered, i32 0, i32 1), align 4
  %17 = sub nsw i32 %16, 10
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rl_lowered, i32 0, i32 1), align 4
  %18 = load i32, i32* @RLIMIT_DATA, align 4
  %19 = call i64 @setrlimit(i32 %18, %struct.TYPE_5__* @rl_lowered)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %24

23:                                               ; preds = %13
  store i32 1, i32* @initialized, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %21, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @getrlimit(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @warn(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @setrlimit(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
