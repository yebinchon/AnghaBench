; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_DestroyPrompts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_DestroyPrompts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { %struct.prompt*, %struct.server* }
%struct.server = type { i32 }

@promptlist = common dso_local global %struct.prompt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_DestroyPrompts(%struct.server* %0) #0 {
  %2 = alloca %struct.server*, align 8
  %3 = alloca %struct.prompt*, align 8
  %4 = alloca %struct.prompt*, align 8
  %5 = alloca %struct.prompt*, align 8
  store %struct.server* %0, %struct.server** %2, align 8
  %6 = load %struct.prompt*, %struct.prompt** @promptlist, align 8
  store %struct.prompt* %6, %struct.prompt** %3, align 8
  store %struct.prompt* null, %struct.prompt** %5, align 8
  br label %7

7:                                                ; preds = %42, %1
  %8 = load %struct.prompt*, %struct.prompt** %3, align 8
  %9 = icmp ne %struct.prompt* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load %struct.prompt*, %struct.prompt** %3, align 8
  %12 = getelementptr inbounds %struct.prompt, %struct.prompt* %11, i32 0, i32 0
  %13 = load %struct.prompt*, %struct.prompt** %12, align 8
  store %struct.prompt* %13, %struct.prompt** %4, align 8
  %14 = load %struct.server*, %struct.server** %2, align 8
  %15 = icmp ne %struct.server* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.prompt*, %struct.prompt** %3, align 8
  %18 = getelementptr inbounds %struct.prompt, %struct.prompt* %17, i32 0, i32 1
  %19 = load %struct.server*, %struct.server** %18, align 8
  %20 = load %struct.server*, %struct.server** %2, align 8
  %21 = icmp eq %struct.server* %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.prompt*, %struct.prompt** %5, align 8
  %24 = icmp ne %struct.prompt* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.prompt*, %struct.prompt** %3, align 8
  %27 = getelementptr inbounds %struct.prompt, %struct.prompt* %26, i32 0, i32 0
  %28 = load %struct.prompt*, %struct.prompt** %27, align 8
  %29 = load %struct.prompt*, %struct.prompt** %5, align 8
  %30 = getelementptr inbounds %struct.prompt, %struct.prompt* %29, i32 0, i32 0
  store %struct.prompt* %28, %struct.prompt** %30, align 8
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.prompt*, %struct.prompt** %3, align 8
  %33 = getelementptr inbounds %struct.prompt, %struct.prompt* %32, i32 0, i32 0
  %34 = load %struct.prompt*, %struct.prompt** %33, align 8
  store %struct.prompt* %34, %struct.prompt** @promptlist, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.prompt*, %struct.prompt** %3, align 8
  %37 = getelementptr inbounds %struct.prompt, %struct.prompt* %36, i32 0, i32 0
  store %struct.prompt* null, %struct.prompt** %37, align 8
  %38 = load %struct.prompt*, %struct.prompt** %3, align 8
  %39 = call i32 @prompt_Destroy(%struct.prompt* %38, i32 1)
  br label %42

40:                                               ; preds = %16, %10
  %41 = load %struct.prompt*, %struct.prompt** %3, align 8
  store %struct.prompt* %41, %struct.prompt** %5, align 8
  br label %42

42:                                               ; preds = %40, %35
  %43 = load %struct.prompt*, %struct.prompt** %4, align 8
  store %struct.prompt* %43, %struct.prompt** %3, align 8
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i32 @prompt_Destroy(%struct.prompt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
