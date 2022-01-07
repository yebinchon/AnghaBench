; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindLinkOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindLinkOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { %struct.in_addr, %struct.TYPE_2__ }
%struct.in_addr = type { i64 }
%struct.TYPE_2__ = type { i64 }

@INADDR_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alias_link* (%struct.libalias*, i64, i64, i32, i32, i32, i32)* @FindLinkOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alias_link* @FindLinkOut(%struct.libalias* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.in_addr, align 8
  %9 = alloca %struct.in_addr, align 8
  %10 = alloca %struct.libalias*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.alias_link*, align 8
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i64 %1, i64* %16, align 8
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i64 %2, i64* %17, align 8
  store %struct.libalias* %0, %struct.libalias** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.libalias*, %struct.libalias** %10, align 8
  %19 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %18)
  %20 = load %struct.libalias*, %struct.libalias** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.alias_link* @_FindLinkOut(%struct.libalias* %20, i64 %26, i64 %28, i32 %21, i32 %22, i32 %23, i32 %24)
  store %struct.alias_link* %29, %struct.alias_link** %15, align 8
  %30 = load %struct.alias_link*, %struct.alias_link** %15, align 8
  %31 = icmp eq %struct.alias_link* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %7
  %33 = load %struct.libalias*, %struct.libalias** %10, align 8
  %34 = getelementptr inbounds %struct.libalias, %struct.libalias* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INADDR_ANY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.libalias*, %struct.libalias** %10, align 8
  %43 = getelementptr inbounds %struct.libalias, %struct.libalias* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load %struct.libalias*, %struct.libalias** %10, align 8
  %49 = load %struct.libalias*, %struct.libalias** %10, align 8
  %50 = getelementptr inbounds %struct.libalias, %struct.libalias* %49, i32 0, i32 0
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %50, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.alias_link* @_FindLinkOut(%struct.libalias* %48, i64 %56, i64 %58, i32 %51, i32 %52, i32 %53, i32 %54)
  store %struct.alias_link* %59, %struct.alias_link** %15, align 8
  br label %60

60:                                               ; preds = %47, %39, %32
  br label %61

61:                                               ; preds = %60, %7
  %62 = load %struct.alias_link*, %struct.alias_link** %15, align 8
  ret %struct.alias_link* %62
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @_FindLinkOut(%struct.libalias*, i64, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
