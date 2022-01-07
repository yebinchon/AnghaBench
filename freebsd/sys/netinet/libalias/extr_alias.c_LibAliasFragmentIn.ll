; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasFragmentIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasFragmentIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LibAliasFragmentIn(%struct.libalias* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca %struct.ip*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.libalias*, %struct.libalias** %4, align 8
  %10 = call i32 @LIBALIAS_LOCK(%struct.libalias* %9)
  %11 = load %struct.libalias*, %struct.libalias** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ip*
  store %struct.ip* %13, %struct.ip** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ip*
  store %struct.ip* %15, %struct.ip** %8, align 8
  %16 = load %struct.ip*, %struct.ip** %8, align 8
  %17 = getelementptr inbounds %struct.ip, %struct.ip* %16, i32 0, i32 1
  %18 = load %struct.ip*, %struct.ip** %7, align 8
  %19 = getelementptr inbounds %struct.ip, %struct.ip* %18, i32 0, i32 0
  %20 = load %struct.ip*, %struct.ip** %8, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 0
  %22 = call i32 @DifferentialChecksum(i32* %17, i32* %19, i32* %21, i32 2)
  %23 = load %struct.ip*, %struct.ip** %7, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip*, %struct.ip** %8, align 8
  %27 = getelementptr inbounds %struct.ip, %struct.ip* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.libalias*, %struct.libalias** %4, align 8
  %29 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %28)
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK(%struct.libalias*) #1

declare dso_local i32 @DifferentialChecksum(i32*, i32*, i32*, i32) #1

declare dso_local i32 @LIBALIAS_UNLOCK(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
