; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_UnRegisterPrompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_UnRegisterPrompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { %struct.prompt* }

@promptlist = common dso_local global %struct.prompt* null, align 8
@log_PromptListChanged = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_UnRegisterPrompt(%struct.prompt* %0) #0 {
  %2 = alloca %struct.prompt*, align 8
  %3 = alloca %struct.prompt**, align 8
  store %struct.prompt* %0, %struct.prompt** %2, align 8
  %4 = load %struct.prompt*, %struct.prompt** %2, align 8
  %5 = icmp ne %struct.prompt* %4, null
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  store %struct.prompt** @promptlist, %struct.prompt*** %3, align 8
  br label %7

7:                                                ; preds = %24, %6
  %8 = load %struct.prompt**, %struct.prompt*** %3, align 8
  %9 = load %struct.prompt*, %struct.prompt** %8, align 8
  %10 = icmp ne %struct.prompt* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.prompt**, %struct.prompt*** %3, align 8
  %13 = load %struct.prompt*, %struct.prompt** %12, align 8
  %14 = load %struct.prompt*, %struct.prompt** %2, align 8
  %15 = icmp eq %struct.prompt* %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.prompt*, %struct.prompt** %2, align 8
  %18 = getelementptr inbounds %struct.prompt, %struct.prompt* %17, i32 0, i32 0
  %19 = load %struct.prompt*, %struct.prompt** %18, align 8
  %20 = load %struct.prompt**, %struct.prompt*** %3, align 8
  store %struct.prompt* %19, %struct.prompt** %20, align 8
  %21 = load %struct.prompt*, %struct.prompt** %2, align 8
  %22 = getelementptr inbounds %struct.prompt, %struct.prompt* %21, i32 0, i32 0
  store %struct.prompt* null, %struct.prompt** %22, align 8
  br label %28

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.prompt**, %struct.prompt*** %3, align 8
  %26 = load %struct.prompt*, %struct.prompt** %25, align 8
  %27 = getelementptr inbounds %struct.prompt, %struct.prompt* %26, i32 0, i32 0
  store %struct.prompt** %27, %struct.prompt*** %3, align 8
  br label %7

28:                                               ; preds = %16, %7
  %29 = call i32 (...) @LogSetMaskLocal()
  %30 = load i32, i32* @log_PromptListChanged, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @log_PromptListChanged, align 4
  br label %32

32:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @LogSetMaskLocal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
