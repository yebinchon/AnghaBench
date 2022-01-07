; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/proc_to_proc/extr_scenario.c_cred_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/proc_to_proc/extr_scenario.c_cred_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*)* @cred_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_get(%struct.cred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cred*, align 8
  %4 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %3, align 8
  %5 = load %struct.cred*, %struct.cred** %3, align 8
  %6 = getelementptr inbounds %struct.cred, %struct.cred* %5, i32 0, i32 3
  %7 = load %struct.cred*, %struct.cred** %3, align 8
  %8 = getelementptr inbounds %struct.cred, %struct.cred* %7, i32 0, i32 2
  %9 = load %struct.cred*, %struct.cred** %3, align 8
  %10 = getelementptr inbounds %struct.cred, %struct.cred* %9, i32 0, i32 1
  %11 = call i32 @getresuid(i32* %6, i32* %8, i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = call i32 (...) @issetugid()
  %18 = load %struct.cred*, %struct.cred** %3, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @getresuid(i32*, i32*, i32*) #1

declare dso_local i32 @issetugid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
