; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_get_more_prga.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_get_more_prga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"WTF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_more_prga(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %3 = load %struct.params*, %struct.params** %2, align 8
  %4 = getelementptr inbounds %struct.params, %struct.params* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 130, label %6
    i32 131, label %9
    i32 129, label %12
    i32 128, label %15
  ]

6:                                                ; preds = %1
  %7 = load %struct.params*, %struct.params** %2, align 8
  %8 = call i32 @start(%struct.params* %7)
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.params*, %struct.params** %2, align 8
  %11 = call i32 @send_frag(%struct.params* %10)
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.params*, %struct.params** %2, align 8
  %14 = call i32 @wait_ack(%struct.params* %13)
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.params*, %struct.params** %2, align 8
  %17 = call i32 @wait_relay(%struct.params* %16)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.params*, %struct.params** %2, align 8
  %20 = getelementptr inbounds %struct.params, %struct.params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %15, %12, %9, %6
  ret void
}

declare dso_local i32 @start(%struct.params*) #1

declare dso_local i32 @send_frag(%struct.params*) #1

declare dso_local i32 @wait_ack(%struct.params*) #1

declare dso_local i32 @wait_relay(%struct.params*) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
