; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_pcbopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_pcbopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { i32 }
%struct.ucred = type { i32 }

@M_IP6OPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, %struct.ip6_pktopts**, %struct.ucred*, i32)* @ip6_pcbopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_pcbopt(i32 %0, i32* %1, i32 %2, %struct.ip6_pktopts** %3, %struct.ucred* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip6_pktopts**, align 8
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip6_pktopts*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ip6_pktopts** %3, %struct.ip6_pktopts*** %11, align 8
  store %struct.ucred* %4, %struct.ucred** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %11, align 8
  %16 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %15, align 8
  %17 = icmp eq %struct.ip6_pktopts* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %6
  %19 = load i32, i32* @M_IP6OPT, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = call %struct.ip6_pktopts* @malloc(i32 4, i32 %19, i32 %20)
  %22 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %11, align 8
  store %struct.ip6_pktopts* %21, %struct.ip6_pktopts** %22, align 8
  %23 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %11, align 8
  %24 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %23, align 8
  %25 = icmp eq %struct.ip6_pktopts* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOBUFS, align 4
  store i32 %27, i32* %7, align 4
  br label %42

28:                                               ; preds = %18
  %29 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %11, align 8
  %30 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %29, align 8
  %31 = call i32 @ip6_initpktopts(%struct.ip6_pktopts* %30)
  br label %32

32:                                               ; preds = %28, %6
  %33 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %11, align 8
  %34 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %33, align 8
  store %struct.ip6_pktopts* %34, %struct.ip6_pktopts** %14, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %14, align 8
  %39 = load %struct.ucred*, %struct.ucred** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @ip6_setpktopt(i32 %35, i32* %36, i32 %37, %struct.ip6_pktopts* %38, %struct.ucred* %39, i32 1, i32 0, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %32, %26
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.ip6_pktopts* @malloc(i32, i32, i32) #1

declare dso_local i32 @ip6_initpktopts(%struct.ip6_pktopts*) #1

declare dso_local i32 @ip6_setpktopt(i32, i32*, i32, %struct.ip6_pktopts*, %struct.ucred*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
