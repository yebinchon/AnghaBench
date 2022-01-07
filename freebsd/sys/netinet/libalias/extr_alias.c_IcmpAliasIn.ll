; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32 }
%struct.icmp = type { i32, i32 }

@PKT_ALIAS_PROXY_ONLY = common dso_local global i32 0, align 4
@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*)* @IcmpAliasIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IcmpAliasIn(%struct.libalias* %0, %struct.ip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icmp*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  %8 = load %struct.libalias*, %struct.libalias** %4, align 8
  %9 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %8)
  %10 = load %struct.libalias*, %struct.libalias** %4, align 8
  %11 = getelementptr inbounds %struct.libalias, %struct.libalias* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PKT_ALIAS_PROXY_ONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.ip*, %struct.ip** %5, align 8
  %20 = call i64 @ip_next(%struct.ip* %19)
  %21 = inttoptr i64 %20 to %struct.icmp*
  store %struct.icmp* %21, %struct.icmp** %7, align 8
  %22 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.icmp*, %struct.icmp** %7, align 8
  %24 = getelementptr inbounds %struct.icmp, %struct.icmp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %44 [
    i32 134, label %26
    i32 129, label %26
    i32 128, label %36
    i32 132, label %36
    i32 131, label %36
    i32 133, label %36
    i32 135, label %40
    i32 130, label %40
  ]

26:                                               ; preds = %18, %18
  %27 = load %struct.icmp*, %struct.icmp** %7, align 8
  %28 = getelementptr inbounds %struct.icmp, %struct.icmp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.libalias*, %struct.libalias** %4, align 8
  %33 = load %struct.ip*, %struct.ip** %5, align 8
  %34 = call i32 @IcmpAliasIn1(%struct.libalias* %32, %struct.ip* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %44

36:                                               ; preds = %18, %18, %18, %18
  %37 = load %struct.libalias*, %struct.libalias** %4, align 8
  %38 = load %struct.ip*, %struct.ip** %5, align 8
  %39 = call i32 @IcmpAliasIn2(%struct.libalias* %37, %struct.ip* %38)
  store i32 %39, i32* %6, align 4
  br label %44

40:                                               ; preds = %18, %18
  %41 = load %struct.libalias*, %struct.libalias** %4, align 8
  %42 = load %struct.ip*, %struct.ip** %5, align 8
  %43 = call i32 @IcmpAliasIn1(%struct.libalias* %41, %struct.ip* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %18, %40, %36, %35
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @IcmpAliasIn1(%struct.libalias*, %struct.ip*) #1

declare dso_local i32 @IcmpAliasIn2(%struct.libalias*, %struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
