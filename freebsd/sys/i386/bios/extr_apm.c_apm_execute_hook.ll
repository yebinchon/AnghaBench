; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_execute_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_execute_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apmhook = type { i8*, i32, i64 (i32)*, %struct.apmhook* }

@.str = private unnamed_addr constant [24 x i8] c"Execute APM hook \22%s.\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Warning: APM hook \22%s\22 failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apmhook*)* @apm_execute_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_execute_hook(%struct.apmhook* %0) #0 {
  %2 = alloca %struct.apmhook*, align 8
  %3 = alloca %struct.apmhook*, align 8
  store %struct.apmhook* %0, %struct.apmhook** %2, align 8
  %4 = load %struct.apmhook*, %struct.apmhook** %2, align 8
  store %struct.apmhook* %4, %struct.apmhook** %3, align 8
  br label %5

5:                                                ; preds = %27, %1
  %6 = load %struct.apmhook*, %struct.apmhook** %3, align 8
  %7 = icmp ne %struct.apmhook* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = load %struct.apmhook*, %struct.apmhook** %3, align 8
  %10 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @APM_DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.apmhook*, %struct.apmhook** %3, align 8
  %14 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %13, i32 0, i32 2
  %15 = load i64 (i32)*, i64 (i32)** %14, align 8
  %16 = load %struct.apmhook*, %struct.apmhook** %3, align 8
  %17 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 %15(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load %struct.apmhook*, %struct.apmhook** %3, align 8
  %23 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %21, %8
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.apmhook*, %struct.apmhook** %3, align 8
  %29 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %28, i32 0, i32 3
  %30 = load %struct.apmhook*, %struct.apmhook** %29, align 8
  store %struct.apmhook* %30, %struct.apmhook** %3, align 8
  br label %5

31:                                               ; preds = %5
  ret void
}

declare dso_local i32 @APM_DPRINT(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
