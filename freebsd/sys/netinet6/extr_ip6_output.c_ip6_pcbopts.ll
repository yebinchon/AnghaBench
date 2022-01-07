; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_pcbopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_pcbopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { %struct.TYPE_3__, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mbuf = type { i64 }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sockopt = type { %struct.thread* }
%struct.thread = type { i32* }

@M_IP6OPT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_pktopts**, %struct.mbuf*, %struct.socket*, %struct.sockopt*)* @ip6_pcbopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_pcbopts(%struct.ip6_pktopts** %0, %struct.mbuf* %1, %struct.socket* %2, %struct.sockopt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_pktopts**, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockopt*, align 8
  %10 = alloca %struct.ip6_pktopts*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.thread*, align 8
  store %struct.ip6_pktopts** %0, %struct.ip6_pktopts*** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.socket* %2, %struct.socket** %8, align 8
  store %struct.sockopt* %3, %struct.sockopt** %9, align 8
  %13 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %6, align 8
  %14 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %13, align 8
  store %struct.ip6_pktopts* %14, %struct.ip6_pktopts** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.sockopt*, %struct.sockopt** %9, align 8
  %16 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %15, i32 0, i32 0
  %17 = load %struct.thread*, %struct.thread** %16, align 8
  store %struct.thread* %17, %struct.thread** %12, align 8
  %18 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %19 = icmp ne %struct.ip6_pktopts* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %22 = call i32 @ip6_clearpktopts(%struct.ip6_pktopts* %21, i32 -1)
  br label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @M_IP6OPT, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call %struct.ip6_pktopts* @malloc(i32 48, i32 %24, i32 %25)
  store %struct.ip6_pktopts* %26, %struct.ip6_pktopts** %10, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %6, align 8
  store %struct.ip6_pktopts* null, %struct.ip6_pktopts** %28, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31, %27
  %37 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %38 = load i32, i32* @M_IP6OPT, align 4
  %39 = call i32 @free(%struct.ip6_pktopts* %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %69

40:                                               ; preds = %31
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %43 = load %struct.thread*, %struct.thread** %12, align 8
  %44 = icmp ne %struct.thread* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.thread*, %struct.thread** %12, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32* [ %48, %45 ], [ null, %49 ]
  %52 = load %struct.socket*, %struct.socket** %8, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ip6_setpktopts(%struct.mbuf* %41, %struct.ip6_pktopts* %42, i32* null, i32* %51, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %61 = call i32 @ip6_clearpktopts(%struct.ip6_pktopts* %60, i32 -1)
  %62 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %63 = load i32, i32* @M_IP6OPT, align 4
  %64 = call i32 @free(%struct.ip6_pktopts* %62, i32 %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %69

66:                                               ; preds = %50
  %67 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %68 = load %struct.ip6_pktopts**, %struct.ip6_pktopts*** %6, align 8
  store %struct.ip6_pktopts* %67, %struct.ip6_pktopts** %68, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %59, %36
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ip6_clearpktopts(%struct.ip6_pktopts*, i32) #1

declare dso_local %struct.ip6_pktopts* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.ip6_pktopts*, i32) #1

declare dso_local i32 @ip6_setpktopts(%struct.mbuf*, %struct.ip6_pktopts*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
