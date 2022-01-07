; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindAliasAddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindAliasAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.in_addr, i32 }
%struct.in_addr = type { i64 }
%struct.alias_link = type { %struct.in_addr }

@LINK_ADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FindAliasAddress(%struct.libalias* %0, i64 %1) #0 {
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca %struct.in_addr, align 8
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.alias_link*, align 8
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  %8 = load %struct.libalias*, %struct.libalias** %5, align 8
  %9 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %8)
  %10 = load %struct.libalias*, %struct.libalias** %5, align 8
  %11 = load %struct.libalias*, %struct.libalias** %5, align 8
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LINK_ADDR, align 4
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.alias_link* @FindLinkOut(%struct.libalias* %10, i64 %16, i32 %13, i32 0, i32 0, i32 %14, i32 0)
  store %struct.alias_link* %17, %struct.alias_link** %6, align 8
  %18 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %19 = icmp eq %struct.alias_link* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.libalias*, %struct.libalias** %5, align 8
  %22 = getelementptr inbounds %struct.libalias, %struct.libalias* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INADDR_ANY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.libalias*, %struct.libalias** %5, align 8
  %29 = getelementptr inbounds %struct.libalias, %struct.libalias* %28, i32 0, i32 0
  %30 = bitcast %struct.in_addr* %3 to i8*
  %31 = bitcast %struct.in_addr* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  br label %35

32:                                               ; preds = %20
  %33 = bitcast %struct.in_addr* %3 to i8*
  %34 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  br label %35

35:                                               ; preds = %32, %27
  br label %64

36:                                               ; preds = %2
  %37 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %38 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INADDR_ANY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load %struct.libalias*, %struct.libalias** %5, align 8
  %45 = getelementptr inbounds %struct.libalias, %struct.libalias* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INADDR_ANY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.libalias*, %struct.libalias** %5, align 8
  %52 = getelementptr inbounds %struct.libalias, %struct.libalias* %51, i32 0, i32 0
  %53 = bitcast %struct.in_addr* %3 to i8*
  %54 = bitcast %struct.in_addr* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  br label %58

55:                                               ; preds = %43
  %56 = bitcast %struct.in_addr* %3 to i8*
  %57 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  br label %58

58:                                               ; preds = %55, %50
  br label %64

59:                                               ; preds = %36
  %60 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %61 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %60, i32 0, i32 0
  %62 = bitcast %struct.in_addr* %3 to i8*
  %63 = bitcast %struct.in_addr* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 8, i1 false)
  br label %64

64:                                               ; preds = %59, %58, %35
  %65 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  ret i64 %66
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindLinkOut(%struct.libalias*, i64, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
