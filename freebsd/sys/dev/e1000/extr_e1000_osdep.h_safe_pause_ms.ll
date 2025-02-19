; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_osdep.h_safe_pause_ms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_osdep.h_safe_pause_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cold = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"e1000_delay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @safe_pause_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safe_pause_ms(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @cold, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 %6, 1000
  %8 = call i32 @DELAY(i32 %7)
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ms_scale(i32 %10)
  %12 = call i32 @pause(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @ms_scale(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
