; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_own.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }

@DLT_IEEE802_11_RADIO = common dso_local global i32 0, align 4
@hopfreq = common dso_local global i32 0, align 4
@chaninfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bpf_s = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"select()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @own(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @DLT_IEEE802_11_RADIO, align 4
  store i32 %7, i32* %6, align 4
  store i32 1000, i32* @hopfreq, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @setup_if(i8* %8)
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @open_bpf(i8* %10, i32 %11)
  br label %13

13:                                               ; preds = %1, %45
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 @chanhop(%struct.timeval* %5)
  br label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = call i32 @check_seen(%struct.timeval* %5)
  %23 = call i32 @FD_ZERO(i32* %4)
  %24 = call i32 @FD_SET(i64 0, i32* %4)
  %25 = load i64, i64* @bpf_s, align 8
  %26 = call i32 @FD_SET(i64 %25, i32* %4)
  %27 = load i64, i64* @bpf_s, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @select(i64 %28, i32* %4, i32* null, i32* null, %struct.timeval* %5)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 @die(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %21
  %35 = call i64 @FD_ISSET(i64 0, i32* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @user_input()
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, i64* @bpf_s, align 8
  %41 = call i64 @FD_ISSET(i64 %40, i32* %4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (...) @bpf_input()
  br label %45

45:                                               ; preds = %43, %39
  br label %13
}

declare dso_local i32 @setup_if(i8*) #1

declare dso_local i32 @open_bpf(i8*, i32) #1

declare dso_local i32 @chanhop(%struct.timeval*) #1

declare dso_local i32 @check_seen(%struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @user_input(...) #1

declare dso_local i32 @bpf_input(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
