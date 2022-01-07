; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_ath_rate_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_ath_rate_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ratestats = type { i32, i32 }

@SIOCGATHNODERATESTATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_ratestats*)* @ath_rate_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rate_ioctl(%struct.ath_ratestats* %0) #0 {
  %2 = alloca %struct.ath_ratestats*, align 8
  store %struct.ath_ratestats* %0, %struct.ath_ratestats** %2, align 8
  %3 = load %struct.ath_ratestats*, %struct.ath_ratestats** %2, align 8
  %4 = getelementptr inbounds %struct.ath_ratestats, %struct.ath_ratestats* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SIOCGATHNODERATESTATS, align 4
  %7 = load %struct.ath_ratestats*, %struct.ath_ratestats** %2, align 8
  %8 = getelementptr inbounds %struct.ath_ratestats, %struct.ath_ratestats* %7, i32 0, i32 0
  %9 = call i64 @ioctl(i32 %5, i32 %6, i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
