; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindProtoIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindProtoIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }
%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }

@NO_DEST_PORT = common dso_local global i32 0, align 4
@PKT_ALIAS_DENY_INCOMING = common dso_local global i32 0, align 4
@NO_SRC_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias_link* @FindProtoIn(%struct.libalias* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.libalias*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.alias_link*, align 8
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  store %struct.libalias* %0, %struct.libalias** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.libalias*, %struct.libalias** %7, align 8
  %15 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %14)
  %16 = load %struct.libalias*, %struct.libalias** %7, align 8
  %17 = load i32, i32* @NO_DEST_PORT, align 4
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %16, i32 %20, i32 %22, i32 %17, i32 0, i32 %18, i32 1)
  store %struct.alias_link* %23, %struct.alias_link** %9, align 8
  %24 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %25 = icmp eq %struct.alias_link* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %4
  %27 = load %struct.libalias*, %struct.libalias** %7, align 8
  %28 = getelementptr inbounds %struct.libalias, %struct.libalias* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PKT_ALIAS_DENY_INCOMING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %26
  %34 = load %struct.libalias*, %struct.libalias** %7, align 8
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FindOriginalAddress(%struct.libalias* %34, i32 %36)
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.in_addr* %10 to i8*
  %40 = bitcast %struct.in_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.libalias*, %struct.libalias** %7, align 8
  %42 = load i32, i32* @NO_SRC_PORT, align 4
  %43 = load i32, i32* @NO_DEST_PORT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.alias_link* @AddLink(%struct.libalias* %41, i32 %46, i32 %48, i32 %50, i32 %42, i32 %43, i32 0, i32 %44)
  store %struct.alias_link* %51, %struct.alias_link** %9, align 8
  br label %52

52:                                               ; preds = %33, %26, %4
  %53 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  ret %struct.alias_link* %53
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
