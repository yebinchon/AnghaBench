; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_AddFragmentPtrLink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_AddFragmentPtrLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@NO_SRC_PORT = common dso_local global i32 0, align 4
@NO_DEST_PORT = common dso_local global i32 0, align 4
@LINK_FRAGMENT_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @AddFragmentPtrLink(%struct.libalias* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.libalias*, %struct.libalias** %5, align 8
  %9 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %8)
  %10 = load %struct.libalias*, %struct.libalias** %5, align 8
  %11 = load %struct.libalias*, %struct.libalias** %5, align 8
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.libalias*, %struct.libalias** %5, align 8
  %15 = getelementptr inbounds %struct.libalias, %struct.libalias* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NO_SRC_PORT, align 4
  %18 = load i32, i32* @NO_DEST_PORT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @LINK_FRAGMENT_PTR, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.alias_link* @AddLink(%struct.libalias* %10, i32 %13, i32 %22, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  ret %struct.alias_link* %23
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @AddLink(%struct.libalias*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
