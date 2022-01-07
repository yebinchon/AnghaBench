; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasOut1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_IcmpAliasOut1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { %struct.in_addr, i32, i32 }
%struct.in_addr = type { i32 }
%struct.alias_link = type { i32 }
%struct.icmp = type { i32, i32 }

@PKT_ALIAS_OK = common dso_local global i32 0, align 4
@PKT_ALIAS_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*, i32)* @IcmpAliasOut1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IcmpAliasOut1(%struct.libalias* %0, %struct.ip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.alias_link*, align 8
  %9 = alloca %struct.icmp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca %struct.in_addr, align 4
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.libalias*, %struct.libalias** %5, align 8
  %15 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %14)
  %16 = load %struct.ip*, %struct.ip** %6, align 8
  %17 = call i64 @ip_next(%struct.ip* %16)
  %18 = inttoptr i64 %17 to %struct.icmp*
  store %struct.icmp* %18, %struct.icmp** %9, align 8
  %19 = load %struct.libalias*, %struct.libalias** %5, align 8
  %20 = load %struct.ip*, %struct.ip** %6, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 0
  %22 = load %struct.ip*, %struct.ip** %6, align 8
  %23 = getelementptr inbounds %struct.ip, %struct.ip* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.icmp*, %struct.icmp** %9, align 8
  %26 = getelementptr inbounds %struct.icmp, %struct.icmp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %21, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.alias_link* @FindIcmpOut(%struct.libalias* %19, i32 %30, i32 %24, i32 %27, i32 %28)
  store %struct.alias_link* %31, %struct.alias_link** %8, align 8
  %32 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %33 = icmp ne %struct.alias_link* %32, null
  br i1 %33, label %34, label %66

34:                                               ; preds = %3
  %35 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %36 = call i32 @GetAliasPort(%struct.alias_link* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.icmp*, %struct.icmp** %9, align 8
  %38 = getelementptr inbounds %struct.icmp, %struct.icmp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.icmp*, %struct.icmp** %9, align 8
  %45 = getelementptr inbounds %struct.icmp, %struct.icmp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ADJUST_CHECKSUM(i32 %43, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.icmp*, %struct.icmp** %9, align 8
  %50 = getelementptr inbounds %struct.icmp, %struct.icmp* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  %52 = call i32 @GetAliasAddress(%struct.alias_link* %51)
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = bitcast %struct.in_addr* %12 to i8*
  %55 = bitcast %struct.in_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %struct.ip*, %struct.ip** %6, align 8
  %57 = getelementptr inbounds %struct.ip, %struct.ip* %56, i32 0, i32 1
  %58 = load %struct.ip*, %struct.ip** %6, align 8
  %59 = getelementptr inbounds %struct.ip, %struct.ip* %58, i32 0, i32 0
  %60 = call i32 @DifferentialChecksum(i32* %57, %struct.in_addr* %12, %struct.in_addr* %59, i32 2)
  %61 = load %struct.ip*, %struct.ip** %6, align 8
  %62 = getelementptr inbounds %struct.ip, %struct.ip* %61, i32 0, i32 0
  %63 = bitcast %struct.in_addr* %62 to i8*
  %64 = bitcast %struct.in_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load i32, i32* @PKT_ALIAS_OK, align 4
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %3
  %67 = load i32, i32* @PKT_ALIAS_IGNORED, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %34
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local %struct.alias_link* @FindIcmpOut(%struct.libalias*, i32, i32, i32, i32) #1

declare dso_local i32 @GetAliasPort(%struct.alias_link*) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #1

declare dso_local i32 @GetAliasAddress(%struct.alias_link*) #1

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
