; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_proc_setrlimit.c_priv_proc_setrlimit_raisemax.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_proc_setrlimit.c_priv_proc_setrlimit_raisemax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.test = type { i32 }

@rl_lowered = common dso_local global %struct.rlimit zeroinitializer, align 4
@rl_base = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"priv_proc_setrlimit_raisemax(asroot, injail)\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"priv_proc_setrlimit_raisemax(asroot, !injail)\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"priv_proc_setrlimit_raisemax(!asroot, injail)\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"priv_proc_setrlimit_raisemax(!asroot, !injail)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_proc_setrlimit_raisemax(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  %7 = alloca %struct.rlimit, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %9 = bitcast %struct.rlimit* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.rlimit* @rl_lowered to i8*), i64 4, i1 false)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rl_base, i32 0, i32 0), align 4
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @RLIMIT_DATA, align 4
  %13 = call i32 @setrlimit(i32 %12, %struct.rlimit* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @expect(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20, i32 0, i32 0)
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @expect(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 0, i32 0)
  br label %31

31:                                               ; preds = %28, %25, %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EPERM, align 4
  %40 = call i32 @expect(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 -1, i32 %39)
  br label %41

41:                                               ; preds = %37, %34, %31
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @EPERM, align 4
  %50 = call i32 @expect(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 -1, i32 %49)
  br label %51

51:                                               ; preds = %47, %44, %41
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @expect(i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
