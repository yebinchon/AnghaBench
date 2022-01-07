; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sched_rtprio.c_priv_sched_rtprio_aproc_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sched_rtprio.c_priv_sched_rtprio_aproc_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }
%struct.rtprio = type { i64, i32 }

@RTP_PRIO_NORMAL = common dso_local global i32 0, align 4
@RTP_SET = common dso_local global i32 0, align 4
@childproc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"priv_sched_rtprio_aproc_normal(asroot, injail)\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"priv_sched_rtprio_aproc_normal(asroot, !injail)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"priv_sched_rtprio_aproc_normal(!asroot, injail)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"priv_sched_rtprio_aproc_normal(!asroot, !injail)\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_sched_rtprio_aproc_normal(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  %7 = alloca %struct.rtprio, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %9 = load i32, i32* @RTP_PRIO_NORMAL, align 4
  %10 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @RTP_SET, align 4
  %13 = load i32, i32* @childproc, align 4
  %14 = call i32 @rtprio(i32 %12, i32 %13, %struct.rtprio* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ESRCH, align 4
  %23 = call i32 @expect(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21, i32 -1, i32 %22)
  br label %24

24:                                               ; preds = %20, %17, %3
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @expect(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 0, i32 0)
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ESRCH, align 4
  %42 = call i32 @expect(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 -1, i32 %41)
  br label %43

43:                                               ; preds = %39, %36, %33
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EPERM, align 4
  %52 = call i32 @expect(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 -1, i32 %51)
  br label %53

53:                                               ; preds = %49, %46, %43
  ret void
}

declare dso_local i32 @rtprio(i32, i32, %struct.rtprio*) #1

declare dso_local i32 @expect(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
