; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindIcmpOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindIcmpOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@NO_DEST_PORT = common dso_local global i32 0, align 4
@LINK_ICMP = common dso_local global i32 0, align 4
@GET_ALIAS_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @FindIcmpOut(%struct.libalias* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.libalias*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.alias_link*, align 8
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca %struct.in_addr, align 4
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i32 %2, i32* %15, align 4
  store %struct.libalias* %0, %struct.libalias** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.libalias*, %struct.libalias** %8, align 8
  %17 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %16)
  %18 = load %struct.libalias*, %struct.libalias** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NO_DEST_PORT, align 4
  %21 = load i32, i32* @LINK_ICMP, align 4
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.alias_link* @FindLinkOut(%struct.libalias* %18, i32 %23, i32 %25, i32 %19, i32 %20, i32 %21, i32 0)
  store %struct.alias_link* %26, %struct.alias_link** %11, align 8
  %27 = load %struct.alias_link*, %struct.alias_link** %11, align 8
  %28 = icmp eq %struct.alias_link* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.libalias*, %struct.libalias** %8, align 8
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FindAliasAddress(%struct.libalias* %33, i32 %35)
  %37 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.in_addr* %12 to i8*
  %39 = bitcast %struct.in_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.libalias*, %struct.libalias** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @NO_DEST_PORT, align 4
  %43 = load i32, i32* @GET_ALIAS_ID, align 4
  %44 = load i32, i32* @LINK_ICMP, align 4
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.alias_link* @AddLink(%struct.libalias* %40, i32 %46, i32 %48, i32 %50, i32 %41, i32 %42, i32 %43, i32 %44)
  store %struct.alias_link* %51, %struct.alias_link** %11, align 8
  br label %52

52:                                               ; preds = %32, %29, %5
  %53 = load %struct.alias_link*, %struct.alias_link** %11, align 8
  ret %struct.alias_link* %53
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindLinkOut(%struct.libalias*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FindAliasAddress(%struct.libalias*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.alias_link* @AddLink(%struct.libalias*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
