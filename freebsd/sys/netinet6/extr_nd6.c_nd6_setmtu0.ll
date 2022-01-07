; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_setmtu0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_setmtu0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.nd_ifinfo = type { i64 }

@IPV6_MMTU = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"nd6_setmtu0: new link MTU on %s (%lu) is too small for IPv6\0A\00", align 1
@V_in6_maxmtu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_setmtu0(%struct.ifnet* %0, %struct.nd_ifinfo* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.nd_ifinfo*, align 8
  %5 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.nd_ifinfo* %1, %struct.nd_ifinfo** %4, align 8
  %6 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %7 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %13 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @IPV6_MMTU, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %19 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPV6_MMTU, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* @LOG_NOTICE, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = call i32 @if_name(%struct.ifnet* %25)
  %27 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %28 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @log(i32 %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29)
  br label %31

31:                                               ; preds = %23, %17, %2
  %32 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %33 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V_in6_maxmtu, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (...) @in6_setmaxmtu()
  br label %39

39:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @log(i32, i8*, i32, i64) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @in6_setmaxmtu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
