; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cubic.c_cubic_record_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cubic.c_cubic_record_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.cubic* }
%struct.cubic = type { i32, i32, i32, i32 }

@t_rttupdated = common dso_local global i32 0, align 4
@CUBIC_MIN_RTT_SAMPLES = common dso_local global i32 0, align 4
@t_srtt = common dso_local global i32 0, align 4
@TCP_RTT_SCALE = common dso_local global i32 0, align 4
@TCPTV_SRTTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @cubic_record_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cubic_record_rtt(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.cubic*, align 8
  %4 = alloca i32, align 4
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %5 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %6 = load i32, i32* @t_rttupdated, align 4
  %7 = call i32 @CCV(%struct.cc_var* %5, i32 %6)
  %8 = load i32, i32* @CUBIC_MIN_RTT_SAMPLES, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %12 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %11, i32 0, i32 0
  %13 = load %struct.cubic*, %struct.cubic** %12, align 8
  store %struct.cubic* %13, %struct.cubic** %3, align 8
  %14 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %15 = load i32, i32* @t_srtt, align 4
  %16 = call i32 @CCV(%struct.cc_var* %14, i32 %15)
  %17 = load i32, i32* @TCP_RTT_SCALE, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.cubic*, %struct.cubic** %3, align 8
  %21 = getelementptr inbounds %struct.cubic, %struct.cubic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %10
  %25 = load %struct.cubic*, %struct.cubic** %3, align 8
  %26 = getelementptr inbounds %struct.cubic, %struct.cubic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TCPTV_SRTTBASE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24, %10
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @max(i32 1, i32 %31)
  %33 = load %struct.cubic*, %struct.cubic** %3, align 8
  %34 = getelementptr inbounds %struct.cubic, %struct.cubic* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cubic*, %struct.cubic** %3, align 8
  %36 = getelementptr inbounds %struct.cubic, %struct.cubic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cubic*, %struct.cubic** %3, align 8
  %39 = getelementptr inbounds %struct.cubic, %struct.cubic* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.cubic*, %struct.cubic** %3, align 8
  %44 = getelementptr inbounds %struct.cubic, %struct.cubic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cubic*, %struct.cubic** %3, align 8
  %47 = getelementptr inbounds %struct.cubic, %struct.cubic* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %30
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.cubic*, %struct.cubic** %3, align 8
  %52 = getelementptr inbounds %struct.cubic, %struct.cubic* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.cubic*, %struct.cubic** %3, align 8
  %56 = getelementptr inbounds %struct.cubic, %struct.cubic* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
