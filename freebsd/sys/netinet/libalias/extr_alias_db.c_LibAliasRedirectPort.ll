; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasRedirectPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasRedirectPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@LINK_UDP = common dso_local global i32 0, align 4
@LINK_TCP = common dso_local global i32 0, align 4
@LINK_SCTP = common dso_local global i32 0, align 4
@LINK_PERMANENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @LibAliasRedirectPort(%struct.libalias* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca %struct.libalias*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.alias_link*, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %3, i32* %20, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %5, i32* %21, align 4
  store %struct.libalias* %0, %struct.libalias** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load %struct.libalias*, %struct.libalias** %12, align 8
  %23 = call i32 @LIBALIAS_LOCK(%struct.libalias* %22)
  %24 = load i32, i32* %16, align 4
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 129, label %27
    i32 130, label %29
  ]

25:                                               ; preds = %8
  %26 = load i32, i32* @LINK_UDP, align 4
  store i32 %26, i32* %17, align 4
  br label %32

27:                                               ; preds = %8
  %28 = load i32, i32* @LINK_TCP, align 4
  store i32 %28, i32* %17, align 4
  br label %32

29:                                               ; preds = %8
  %30 = load i32, i32* @LINK_SCTP, align 4
  store i32 %30, i32* %17, align 4
  br label %32

31:                                               ; preds = %8
  store %struct.alias_link* null, %struct.alias_link** %18, align 8
  br label %54

32:                                               ; preds = %29, %27, %25
  %33 = load %struct.libalias*, %struct.libalias** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %17, align 4
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.alias_link* @AddLink(%struct.libalias* %33, i32 %39, i32 %41, i32 %43, i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct.alias_link* %44, %struct.alias_link** %18, align 8
  %45 = load %struct.alias_link*, %struct.alias_link** %18, align 8
  %46 = icmp ne %struct.alias_link* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load i32, i32* @LINK_PERMANENT, align 4
  %49 = load %struct.alias_link*, %struct.alias_link** %18, align 8
  %50 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %32
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.libalias*, %struct.libalias** %12, align 8
  %56 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %55)
  %57 = load %struct.alias_link*, %struct.alias_link** %18, align 8
  ret %struct.alias_link* %57
}

declare dso_local i32 @LIBALIAS_LOCK(%struct.libalias*) #1

declare dso_local %struct.alias_link* @AddLink(%struct.libalias*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LIBALIAS_UNLOCK(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
