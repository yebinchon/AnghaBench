; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_enque_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_enque_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signal_fd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"cannot process signal.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enque_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @signal_fd, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @write(i32 %5, i32* %2, i32 4)
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
