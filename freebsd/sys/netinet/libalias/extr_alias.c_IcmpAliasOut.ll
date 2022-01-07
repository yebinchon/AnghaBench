; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32 }
%struct.icmp = type { i32, i32 }

@PKT_ALIAS_PROXY_ONLY = common dso_local global i32 0, align 4
@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*, i32)* @IcmpAliasOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IcmpAliasOut(%struct.libalias* %0, %struct.ip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.icmp*, align 8
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.libalias*, %struct.libalias** %5, align 8
  %11 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %10)
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.libalias*, %struct.libalias** %5, align 8
  %14 = getelementptr inbounds %struct.libalias, %struct.libalias* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PKT_ALIAS_PROXY_ONLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load %struct.ip*, %struct.ip** %6, align 8
  %23 = call i64 @ip_next(%struct.ip* %22)
  %24 = inttoptr i64 %23 to %struct.icmp*
  store %struct.icmp* %24, %struct.icmp** %9, align 8
  %25 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.icmp*, %struct.icmp** %9, align 8
  %27 = getelementptr inbounds %struct.icmp, %struct.icmp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %49 [
    i32 135, label %29
    i32 130, label %29
    i32 128, label %40
    i32 132, label %40
    i32 131, label %40
    i32 133, label %40
    i32 134, label %44
    i32 129, label %44
  ]

29:                                               ; preds = %21, %21
  %30 = load %struct.icmp*, %struct.icmp** %9, align 8
  %31 = getelementptr inbounds %struct.icmp, %struct.icmp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.libalias*, %struct.libalias** %5, align 8
  %36 = load %struct.ip*, %struct.ip** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @IcmpAliasOut1(%struct.libalias* %35, %struct.ip* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %49

40:                                               ; preds = %21, %21, %21, %21
  %41 = load %struct.libalias*, %struct.libalias** %5, align 8
  %42 = load %struct.ip*, %struct.ip** %6, align 8
  %43 = call i32 @IcmpAliasOut2(%struct.libalias* %41, %struct.ip* %42)
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %21, %21
  %45 = load %struct.libalias*, %struct.libalias** %5, align 8
  %46 = load %struct.ip*, %struct.ip** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @IcmpAliasOut1(%struct.libalias* %45, %struct.ip* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %21, %40, %39
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @IcmpAliasOut1(%struct.libalias*, %struct.ip*, i32) #1

declare dso_local i32 @IcmpAliasOut2(%struct.libalias*, %struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
