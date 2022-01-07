; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_wait_tap_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_wait_tap_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i64, i64 }

@S_SEND_FRAG = common dso_local global i64 0, align 8
@S_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_tap_ack(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %3 = load %struct.params*, %struct.params** %2, align 8
  %4 = getelementptr inbounds %struct.params, %struct.params* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.params*, %struct.params** %2, align 8
  %6 = getelementptr inbounds %struct.params, %struct.params* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.params*, %struct.params** %2, align 8
  %8 = call i32 @wait_ack(%struct.params* %7)
  %9 = load %struct.params*, %struct.params** %2, align 8
  %10 = getelementptr inbounds %struct.params, %struct.params* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S_SEND_FRAG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i64, i64* @S_START, align 8
  %16 = load %struct.params*, %struct.params** %2, align 8
  %17 = getelementptr inbounds %struct.params, %struct.params* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @wait_ack(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
