; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindFragmentIn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindFragmentIn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@NO_DEST_PORT = common dso_local global i32 0, align 4
@LINK_FRAGMENT_ID = common dso_local global i32 0, align 4
@NO_SRC_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @FindFragmentIn1(%struct.libalias* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.libalias*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.alias_link*, align 8
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.libalias* %0, %struct.libalias** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.libalias*, %struct.libalias** %7, align 8
  %13 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %12)
  %14 = load %struct.libalias*, %struct.libalias** %7, align 8
  %15 = load i32, i32* @NO_DEST_PORT, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @LINK_FRAGMENT_ID, align 4
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %14, i32 %19, i32 %21, i32 %15, i32 %16, i32 %17, i32 0)
  store %struct.alias_link* %22, %struct.alias_link** %9, align 8
  %23 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %24 = icmp eq %struct.alias_link* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load %struct.libalias*, %struct.libalias** %7, align 8
  %27 = load %struct.libalias*, %struct.libalias** %7, align 8
  %28 = getelementptr inbounds %struct.libalias, %struct.libalias* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NO_SRC_PORT, align 4
  %31 = load i32, i32* @NO_DEST_PORT, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @LINK_FRAGMENT_ID, align 4
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.alias_link* @AddLink(%struct.libalias* %26, i32 %29, i32 %35, i32 %37, i32 %30, i32 %31, i32 %32, i32 %33)
  store %struct.alias_link* %38, %struct.alias_link** %9, align 8
  br label %39

39:                                               ; preds = %25, %4
  %40 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  ret %struct.alias_link* %40
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindLinkIn(%struct.libalias*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.alias_link* @AddLink(%struct.libalias*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
