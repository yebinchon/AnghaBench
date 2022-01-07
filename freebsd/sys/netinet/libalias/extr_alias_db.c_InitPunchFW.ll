; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_InitPunchFW.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_InitPunchFW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i64, i32, i32, i32, i64 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*)* @InitPunchFW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitPunchFW(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  store %struct.libalias* %0, %struct.libalias** %2, align 8
  %3 = load %struct.libalias*, %struct.libalias** %2, align 8
  %4 = getelementptr inbounds %struct.libalias, %struct.libalias* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @malloc(i32 %5)
  %7 = load %struct.libalias*, %struct.libalias** %2, align 8
  %8 = getelementptr inbounds %struct.libalias, %struct.libalias* %7, i32 0, i32 4
  store i64 %6, i64* %8, align 8
  %9 = load %struct.libalias*, %struct.libalias** %2, align 8
  %10 = getelementptr inbounds %struct.libalias, %struct.libalias* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.libalias*, %struct.libalias** %2, align 8
  %15 = getelementptr inbounds %struct.libalias, %struct.libalias* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.libalias*, %struct.libalias** %2, align 8
  %18 = getelementptr inbounds %struct.libalias, %struct.libalias* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @memset(i64 %16, i32 0, i32 %19)
  %21 = load %struct.libalias*, %struct.libalias** %2, align 8
  %22 = getelementptr inbounds %struct.libalias, %struct.libalias* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load i32, i32* @SOCK_RAW, align 4
  %28 = load i32, i32* @IPPROTO_RAW, align 4
  %29 = call i64 @socket(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.libalias*, %struct.libalias** %2, align 8
  %31 = getelementptr inbounds %struct.libalias, %struct.libalias* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %13
  %33 = load %struct.libalias*, %struct.libalias** %2, align 8
  %34 = call i32 @ClearAllFWHoles(%struct.libalias* %33)
  %35 = load %struct.libalias*, %struct.libalias** %2, align 8
  %36 = getelementptr inbounds %struct.libalias, %struct.libalias* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.libalias*, %struct.libalias** %2, align 8
  %39 = getelementptr inbounds %struct.libalias, %struct.libalias* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %1
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @ClearAllFWHoles(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
