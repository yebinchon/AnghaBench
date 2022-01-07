; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_ProtoAliasIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_ProtoAliasIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }
%struct.alias_link = type { i32 }

@PKT_ALIAS_PROXY_ONLY = common dso_local global i32 0, align 4
@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32, %struct.in_addr*, i32, i32*)* @ProtoAliasIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProtoAliasIn(%struct.libalias* %0, i32 %1, %struct.in_addr* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.libalias*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.alias_link*, align 8
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca %struct.in_addr, align 4
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i32 %1, i32* %15, align 4
  store %struct.libalias* %0, %struct.libalias** %8, align 8
  store %struct.in_addr* %2, %struct.in_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.libalias*, %struct.libalias** %8, align 8
  %17 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %16)
  %18 = load %struct.libalias*, %struct.libalias** %8, align 8
  %19 = getelementptr inbounds %struct.libalias, %struct.libalias* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PKT_ALIAS_PROXY_ONLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %5
  %27 = load %struct.libalias*, %struct.libalias** %8, align 8
  %28 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.alias_link* @FindProtoIn(%struct.libalias* %27, i32 %31, i32 %33, i32 %29)
  store %struct.alias_link* %34, %struct.alias_link** %12, align 8
  %35 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %36 = icmp ne %struct.alias_link* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %39 = call i32 @GetOriginalAddress(%struct.alias_link* %38)
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.in_addr* %13 to i8*
  %42 = bitcast %struct.in_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %45 = call i32 @DifferentialChecksum(i32* %43, %struct.in_addr* %13, %struct.in_addr* %44, i32 2)
  %46 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %47 = bitcast %struct.in_addr* %46 to i8*
  %48 = bitcast %struct.in_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %49, i32* %6, align 4
  br label %52

50:                                               ; preds = %26
  %51 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %37, %24
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindProtoIn(%struct.libalias*, i32, i32, i32) #1

declare dso_local i32 @GetOriginalAddress(%struct.alias_link*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DifferentialChecksum(i32*, %struct.in_addr*, %struct.in_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
