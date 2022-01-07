; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindUdpTcpIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindUdpTcpIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@LINK_UDP = common dso_local global i32 0, align 4
@LINK_TCP = common dso_local global i32 0, align 4
@PKT_ALIAS_DENY_INCOMING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @FindUdpTcpIn(%struct.libalias* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.alias_link*, align 8
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.libalias*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.alias_link*, align 8
  %18 = alloca %struct.in_addr, align 4
  %19 = alloca %struct.in_addr, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %2, i32* %21, align 4
  store %struct.libalias* %0, %struct.libalias** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.libalias*, %struct.libalias** %11, align 8
  %23 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %22)
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
    i32 129, label %27
  ]

25:                                               ; preds = %7
  %26 = load i32, i32* @LINK_UDP, align 4
  store i32 %26, i32* %16, align 4
  br label %30

27:                                               ; preds = %7
  %28 = load i32, i32* @LINK_TCP, align 4
  store i32 %28, i32* %16, align 4
  br label %30

29:                                               ; preds = %7
  store %struct.alias_link* null, %struct.alias_link** %8, align 8
  br label %75

30:                                               ; preds = %27, %25
  %31 = load %struct.libalias*, %struct.libalias** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %31, i32 %37, i32 %39, i32 %32, i32 %33, i32 %34, i32 %35)
  store %struct.alias_link* %40, %struct.alias_link** %17, align 8
  %41 = load %struct.alias_link*, %struct.alias_link** %17, align 8
  %42 = icmp eq %struct.alias_link* %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %30
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load %struct.libalias*, %struct.libalias** %11, align 8
  %48 = getelementptr inbounds %struct.libalias, %struct.libalias* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PKT_ALIAS_DENY_INCOMING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %46
  %54 = load %struct.libalias*, %struct.libalias** %11, align 8
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @FindOriginalAddress(%struct.libalias* %54, i32 %56)
  %58 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = bitcast %struct.in_addr* %18 to i8*
  %60 = bitcast %struct.in_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = load %struct.libalias*, %struct.libalias** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %16, align 4
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.alias_link* @AddLink(%struct.libalias* %61, i32 %67, i32 %69, i32 %71, i32 %62, i32 %63, i32 %64, i32 %65)
  store %struct.alias_link* %72, %struct.alias_link** %17, align 8
  br label %73

73:                                               ; preds = %53, %46, %43, %30
  %74 = load %struct.alias_link*, %struct.alias_link** %17, align 8
  store %struct.alias_link* %74, %struct.alias_link** %8, align 8
  br label %75

75:                                               ; preds = %73, %29
  %76 = load %struct.alias_link*, %struct.alias_link** %8, align 8
  ret %struct.alias_link* %76
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindLinkIn(%struct.libalias*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FindOriginalAddress(%struct.libalias*, i32) #1

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
