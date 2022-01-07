; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_copypktopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_copypktopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { i32 }

@M_IP6OPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip6_pktopts* @ip6_copypktopts(%struct.ip6_pktopts* %0, i32 %1) #0 {
  %3 = alloca %struct.ip6_pktopts*, align 8
  %4 = alloca %struct.ip6_pktopts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip6_pktopts*, align 8
  store %struct.ip6_pktopts* %0, %struct.ip6_pktopts** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @M_IP6OPT, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.ip6_pktopts* @malloc(i32 4, i32 %8, i32 %9)
  store %struct.ip6_pktopts* %10, %struct.ip6_pktopts** %7, align 8
  %11 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %12 = icmp eq %struct.ip6_pktopts* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.ip6_pktopts* null, %struct.ip6_pktopts** %3, align 8
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %16 = call i32 @ip6_initpktopts(%struct.ip6_pktopts* %15)
  %17 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %18 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @copypktopts(%struct.ip6_pktopts* %17, %struct.ip6_pktopts* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %24 = load i32, i32* @M_IP6OPT, align 4
  %25 = call i32 @free(%struct.ip6_pktopts* %23, i32 %24)
  store %struct.ip6_pktopts* null, %struct.ip6_pktopts** %3, align 8
  br label %28

26:                                               ; preds = %14
  %27 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  store %struct.ip6_pktopts* %27, %struct.ip6_pktopts** %3, align 8
  br label %28

28:                                               ; preds = %26, %22, %13
  %29 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  ret %struct.ip6_pktopts* %29
}

declare dso_local %struct.ip6_pktopts* @malloc(i32, i32, i32) #1

declare dso_local i32 @ip6_initpktopts(%struct.ip6_pktopts*) #1

declare dso_local i32 @copypktopts(%struct.ip6_pktopts*, %struct.ip6_pktopts*, i32) #1

declare dso_local i32 @free(%struct.ip6_pktopts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
