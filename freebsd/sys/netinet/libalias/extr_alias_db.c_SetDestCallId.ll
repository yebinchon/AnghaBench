; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_SetDestCallId.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_SetDestCallId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32, i32, i32, i32, i32, i32, %struct.libalias* }
%struct.libalias = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetDestCallId(%struct.alias_link* %0, i32 %1) #0 {
  %3 = alloca %struct.alias_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  store %struct.alias_link* %0, %struct.alias_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %7 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %6, i32 0, i32 6
  %8 = load %struct.libalias*, %struct.libalias** %7, align 8
  store %struct.libalias* %8, %struct.libalias** %5, align 8
  %9 = load %struct.libalias*, %struct.libalias** %5, align 8
  %10 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %9)
  %11 = load %struct.libalias*, %struct.libalias** %5, align 8
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %14 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %15 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %18 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %21 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %24 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %28 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %31 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ReLink(%struct.alias_link* %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.libalias*, %struct.libalias** %5, align 8
  %35 = getelementptr inbounds %struct.libalias, %struct.libalias* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @ReLink(%struct.alias_link*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
