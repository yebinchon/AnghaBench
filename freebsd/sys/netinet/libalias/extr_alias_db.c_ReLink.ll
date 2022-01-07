; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_ReLink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_ReLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i64, %struct.TYPE_4__, %struct.libalias* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@LINK_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alias_link* (%struct.alias_link*, i32, i32, i32, i32, i32, i32, i32)* @ReLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alias_link* @ReLink(%struct.alias_link* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca %struct.alias_link*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.alias_link*, align 8
  %18 = alloca %struct.libalias*, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %2, i32* %20, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %3, i32* %21, align 4
  store %struct.alias_link* %0, %struct.alias_link** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %23 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %22, i32 0, i32 2
  %24 = load %struct.libalias*, %struct.libalias** %23, align 8
  store %struct.libalias* %24, %struct.libalias** %18, align 8
  %25 = load %struct.libalias*, %struct.libalias** %18, align 8
  %26 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %25)
  %27 = load %struct.libalias*, %struct.libalias** %18, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.alias_link* @AddLink(%struct.libalias* %27, i32 %33, i32 %35, i32 %37, i32 %28, i32 %29, i32 %30, i32 %31)
  store %struct.alias_link* %38, %struct.alias_link** %17, align 8
  %39 = load %struct.alias_link*, %struct.alias_link** %17, align 8
  %40 = icmp ne %struct.alias_link* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %8
  %42 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %43 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LINK_TCP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %49 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.alias_link*, %struct.alias_link** %17, align 8
  %57 = call i32 @PunchFWHole(%struct.alias_link* %56)
  br label %58

58:                                               ; preds = %55, %47, %41, %8
  %59 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %60 = call i32 @DeleteLink(%struct.alias_link* %59)
  %61 = load %struct.alias_link*, %struct.alias_link** %17, align 8
  ret %struct.alias_link* %61
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @AddLink(%struct.libalias*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PunchFWHole(%struct.alias_link*) #1

declare dso_local i32 @DeleteLink(%struct.alias_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
