; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_retransmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retransmit(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %3 = load %struct.params*, %struct.params** %2, align 8
  %4 = load %struct.params*, %struct.params** %2, align 8
  %5 = getelementptr inbounds %struct.params, %struct.params* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.params*, %struct.params** %2, align 8
  %8 = getelementptr inbounds %struct.params, %struct.params* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @send_frame(%struct.params* %3, i32 %6, i32 %9)
  %11 = load %struct.params*, %struct.params** %2, align 8
  %12 = getelementptr inbounds %struct.params, %struct.params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.params*, %struct.params** %2, align 8
  %16 = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.params*, %struct.params** %2, align 8
  %21 = getelementptr inbounds %struct.params, %struct.params* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.params*, %struct.params** %2, align 8
  %24 = getelementptr inbounds %struct.params, %struct.params* %23, i32 0, i32 1
  %25 = call i32 @gettimeofday(i32* %24, i32* null)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.params*, %struct.params** %2, align 8
  %32 = getelementptr inbounds %struct.params, %struct.params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local i32 @send_frame(%struct.params*, i32, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
