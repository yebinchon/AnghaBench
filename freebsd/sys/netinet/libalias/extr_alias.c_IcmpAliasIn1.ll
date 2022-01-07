; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasIn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasIn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { %struct.in_addr, i32, i32 }
%struct.in_addr = type { i32 }
%struct.alias_link = type { i32 }
%struct.icmp = type { i32, i32 }

@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*)* @IcmpAliasIn1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IcmpAliasIn1(%struct.libalias* %0, %struct.ip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.alias_link*, align 8
  %7 = alloca %struct.icmp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in_addr, align 4
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  %12 = load %struct.libalias*, %struct.libalias** %4, align 8
  %13 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %12)
  %14 = load %struct.ip*, %struct.ip** %5, align 8
  %15 = call i64 @ip_next(%struct.ip* %14)
  %16 = inttoptr i64 %15 to %struct.icmp*
  store %struct.icmp* %16, %struct.icmp** %7, align 8
  %17 = load %struct.libalias*, %struct.libalias** %4, align 8
  %18 = load %struct.ip*, %struct.ip** %5, align 8
  %19 = getelementptr inbounds %struct.ip, %struct.ip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ip*, %struct.ip** %5, align 8
  %22 = getelementptr inbounds %struct.ip, %struct.ip* %21, i32 0, i32 0
  %23 = load %struct.icmp*, %struct.icmp** %7, align 8
  %24 = getelementptr inbounds %struct.icmp, %struct.icmp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.alias_link* @FindIcmpIn(%struct.libalias* %17, i32 %20, i32 %27, i32 %25, i32 1)
  store %struct.alias_link* %28, %struct.alias_link** %6, align 8
  %29 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %30 = icmp ne %struct.alias_link* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %2
  %32 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %33 = call i32 @GetOriginalPort(%struct.alias_link* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.icmp*, %struct.icmp** %7, align 8
  %35 = getelementptr inbounds %struct.icmp, %struct.icmp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.icmp*, %struct.icmp** %7, align 8
  %42 = getelementptr inbounds %struct.icmp, %struct.icmp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ADJUST_CHECKSUM(i32 %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.icmp*, %struct.icmp** %7, align 8
  %47 = getelementptr inbounds %struct.icmp, %struct.icmp* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %49 = call i32 @GetOriginalAddress(%struct.alias_link* %48)
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = bitcast %struct.in_addr* %10 to i8*
  %52 = bitcast %struct.in_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.ip*, %struct.ip** %5, align 8
  %54 = getelementptr inbounds %struct.ip, %struct.ip* %53, i32 0, i32 1
  %55 = load %struct.ip*, %struct.ip** %5, align 8
  %56 = getelementptr inbounds %struct.ip, %struct.ip* %55, i32 0, i32 0
  %57 = call i32 @DifferentialChecksum(i32* %54, %struct.in_addr* %10, %struct.in_addr* %56, i32 2)
  %58 = load %struct.ip*, %struct.ip** %5, align 8
  %59 = getelementptr inbounds %struct.ip, %struct.ip* %58, i32 0, i32 0
  %60 = bitcast %struct.in_addr* %59 to i8*
  %61 = bitcast %struct.in_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %2
  %64 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %31
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local %struct.alias_link* @FindIcmpIn(%struct.libalias*, i32, i32, i32, i32) #1

declare dso_local i32 @GetOriginalPort(%struct.alias_link*) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #1

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
