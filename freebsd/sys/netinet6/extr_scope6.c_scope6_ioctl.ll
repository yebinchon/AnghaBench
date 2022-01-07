; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_scope6_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_scope6_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32** }
%struct.in6_ifreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scope6_id = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scope6_ioctl(i32 %0, i64 %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.in6_ifreq*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i64, i64* @AF_INET6, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EPFNOSUPPORT, align 4
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to %struct.in6_ifreq*
  store %struct.in6_ifreq* %20, %struct.in6_ifreq** %8, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %45 [
    i32 128, label %22
    i32 130, label %30
    i32 129, label %38
  ]

22:                                               ; preds = %18
  %23 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %24 = load %struct.in6_ifreq*, %struct.in6_ifreq** %8, align 8
  %25 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.scope6_id*
  %29 = call i32 @scope6_set(%struct.ifnet* %23, %struct.scope6_id* %28)
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %18
  %31 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %32 = load %struct.in6_ifreq*, %struct.in6_ifreq** %8, align 8
  %33 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.scope6_id*
  %37 = call i32 @scope6_get(%struct.ifnet* %31, %struct.scope6_id* %36)
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %18
  %39 = load %struct.in6_ifreq*, %struct.in6_ifreq** %8, align 8
  %40 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.scope6_id*
  %44 = call i32 @scope6_get_default(%struct.scope6_id* %43)
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %18
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %38, %30, %22, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @scope6_set(%struct.ifnet*, %struct.scope6_id*) #1

declare dso_local i32 @scope6_get(%struct.ifnet*, %struct.scope6_id*) #1

declare dso_local i32 @scope6_get_default(%struct.scope6_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
