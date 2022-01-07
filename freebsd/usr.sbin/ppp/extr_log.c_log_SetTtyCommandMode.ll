; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_SetTtyCommandMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_SetTtyCommandMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { %struct.prompt* }
%struct.datalink = type { i32 }

@promptlist = common dso_local global %struct.prompt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_SetTtyCommandMode(%struct.datalink* %0) #0 {
  %2 = alloca %struct.datalink*, align 8
  %3 = alloca %struct.prompt*, align 8
  store %struct.datalink* %0, %struct.datalink** %2, align 8
  %4 = load %struct.prompt*, %struct.prompt** @promptlist, align 8
  store %struct.prompt* %4, %struct.prompt** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.prompt*, %struct.prompt** %3, align 8
  %7 = icmp ne %struct.prompt* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load %struct.prompt*, %struct.prompt** %3, align 8
  %10 = load %struct.datalink*, %struct.datalink** %2, align 8
  %11 = call i64 @prompt_IsTermMode(%struct.prompt* %9, %struct.datalink* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.prompt*, %struct.prompt** %3, align 8
  %15 = call i32 @prompt_TtyCommandMode(%struct.prompt* %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.prompt*, %struct.prompt** %3, align 8
  %19 = getelementptr inbounds %struct.prompt, %struct.prompt* %18, i32 0, i32 0
  %20 = load %struct.prompt*, %struct.prompt** %19, align 8
  store %struct.prompt* %20, %struct.prompt** %3, align 8
  br label %5

21:                                               ; preds = %5
  ret void
}

declare dso_local i64 @prompt_IsTermMode(%struct.prompt*, %struct.datalink*) #1

declare dso_local i32 @prompt_TtyCommandMode(%struct.prompt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
