; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_FragmentIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_FragmentIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }
%struct.alias_link = type { i32 }

@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@PKT_ALIAS_UNRESOLVED_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.in_addr*, i32, i32*)* @FragmentIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FragmentIn(%struct.libalias* %0, i32 %1, %struct.in_addr* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.libalias*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.alias_link*, align 8
  %13 = alloca %struct.in_addr, align 4
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  store %struct.libalias* %0, %struct.libalias** %8, align 8
  store %struct.in_addr* %2, %struct.in_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.libalias*, %struct.libalias** %8, align 8
  %16 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %15)
  %17 = load %struct.libalias*, %struct.libalias** %8, align 8
  %18 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.alias_link* @FindFragmentIn2(%struct.libalias* %17, i32 %21, i32 %23, i32 %19)
  store %struct.alias_link* %24, %struct.alias_link** %12, align 8
  %25 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %26 = icmp ne %struct.alias_link* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %29 = call i32 @GetFragmentAddr(%struct.alias_link* %28, %struct.in_addr* %13)
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %32 = call i32 @DifferentialChecksum(i32* %30, %struct.in_addr* %13, %struct.in_addr* %31, i32 2)
  %33 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %34 = bitcast %struct.in_addr* %33 to i8*
  %35 = bitcast %struct.in_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @PKT_ALIAS_UNRESOLVED_FRAGMENT, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindFragmentIn2(%struct.libalias*, i32, i32, i32) #1

declare dso_local i32 @GetFragmentAddr(%struct.alias_link*, %struct.in_addr*) #1

declare dso_local i32 @DifferentialChecksum(i32*, %struct.in_addr*, %struct.in_addr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
