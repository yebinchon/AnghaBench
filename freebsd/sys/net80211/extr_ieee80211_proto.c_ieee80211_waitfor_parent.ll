; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_waitfor_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_waitfor_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_waitfor_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @taskqueue_block(i32 %5)
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 6
  %10 = call i32 @ieee80211_draintask(%struct.ieee80211com* %7, i32* %9)
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 5
  %14 = call i32 @ieee80211_draintask(%struct.ieee80211com* %11, i32* %13)
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 4
  %18 = call i32 @ieee80211_draintask(%struct.ieee80211com* %15, i32* %17)
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 3
  %22 = call i32 @ieee80211_draintask(%struct.ieee80211com* %19, i32* %21)
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 2
  %26 = call i32 @ieee80211_draintask(%struct.ieee80211com* %23, i32* %25)
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 1
  %30 = call i32 @ieee80211_draintask(%struct.ieee80211com* %27, i32* %29)
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @taskqueue_unblock(i32 %33)
  ret void
}

declare dso_local i32 @taskqueue_block(i32) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @taskqueue_unblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
