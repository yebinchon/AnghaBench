; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasRedirectAddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasRedirectAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@LINK_ADDR = common dso_local global i32 0, align 4
@LINK_PERMANENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @LibAliasRedirectAddr(%struct.libalias* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  %10 = load %struct.libalias*, %struct.libalias** %6, align 8
  %11 = call i32 @LIBALIAS_LOCK(%struct.libalias* %10)
  %12 = load %struct.libalias*, %struct.libalias** %6, align 8
  %13 = load %struct.libalias*, %struct.libalias** %6, align 8
  %14 = getelementptr inbounds %struct.libalias, %struct.libalias* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LINK_ADDR, align 4
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.alias_link* @AddLink(%struct.libalias* %12, i32 %18, i32 %15, i32 %20, i32 0, i32 0, i32 0, i32 %16)
  store %struct.alias_link* %21, %struct.alias_link** %7, align 8
  %22 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %23 = icmp ne %struct.alias_link* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @LINK_PERMANENT, align 4
  %26 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %27 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %3
  %31 = load %struct.libalias*, %struct.libalias** %6, align 8
  %32 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %31)
  %33 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  ret %struct.alias_link* %33
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
