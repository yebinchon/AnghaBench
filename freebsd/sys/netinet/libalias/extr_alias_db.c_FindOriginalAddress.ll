; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindOriginalAddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindOriginalAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, %struct.in_addr, %struct.in_addr, i32 }
%struct.in_addr = type { i64 }
%struct.alias_link = type { %struct.in_addr, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.in_addr }

@LINK_ADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@INADDR_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FindOriginalAddress(%struct.libalias* %0, i64 %1) #0 {
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
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LINK_ADDR, align 4
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %10, i32 %13, i64 %16, i32 0, i32 0, i32 %14, i32 0)
  store %struct.alias_link* %17, %struct.alias_link** %6, align 8
  %18 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %19 = icmp eq %struct.alias_link* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load %struct.libalias*, %struct.libalias** %5, align 8
  %22 = getelementptr inbounds %struct.libalias, %struct.libalias* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.libalias*, %struct.libalias** %5, align 8
  %24 = getelementptr inbounds %struct.libalias, %struct.libalias* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INADDR_ANY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = bitcast %struct.in_addr* %3 to i8*
  %31 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  br label %107

32:                                               ; preds = %20
  %33 = load %struct.libalias*, %struct.libalias** %5, align 8
  %34 = getelementptr inbounds %struct.libalias, %struct.libalias* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INADDR_NONE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.libalias*, %struct.libalias** %5, align 8
  %41 = getelementptr inbounds %struct.libalias, %struct.libalias* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INADDR_ANY, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.libalias*, %struct.libalias** %5, align 8
  %48 = getelementptr inbounds %struct.libalias, %struct.libalias* %47, i32 0, i32 1
  %49 = bitcast %struct.in_addr* %3 to i8*
  %50 = bitcast %struct.in_addr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  br label %54

51:                                               ; preds = %39
  %52 = bitcast %struct.in_addr* %3 to i8*
  %53 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  br label %54

54:                                               ; preds = %51, %46
  br label %107

55:                                               ; preds = %32
  %56 = load %struct.libalias*, %struct.libalias** %5, align 8
  %57 = getelementptr inbounds %struct.libalias, %struct.libalias* %56, i32 0, i32 2
  %58 = bitcast %struct.in_addr* %3 to i8*
  %59 = bitcast %struct.in_addr* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  br label %107

60:                                               ; preds = %2
  %61 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %62 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %67 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = bitcast %struct.in_addr* %3 to i8*
  %71 = bitcast %struct.in_addr* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %73 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %78 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %77, i32 0, i32 1
  store %struct.TYPE_2__* %76, %struct.TYPE_2__** %78, align 8
  br label %107

79:                                               ; preds = %60
  %80 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %81 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @INADDR_ANY, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load %struct.libalias*, %struct.libalias** %5, align 8
  %88 = getelementptr inbounds %struct.libalias, %struct.libalias* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @INADDR_ANY, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.libalias*, %struct.libalias** %5, align 8
  %95 = getelementptr inbounds %struct.libalias, %struct.libalias* %94, i32 0, i32 1
  %96 = bitcast %struct.in_addr* %3 to i8*
  %97 = bitcast %struct.in_addr* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 8, i1 false)
  br label %101

98:                                               ; preds = %86
  %99 = bitcast %struct.in_addr* %3 to i8*
  %100 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 8, i1 false)
  br label %101

101:                                              ; preds = %98, %93
  br label %107

102:                                              ; preds = %79
  %103 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %104 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %103, i32 0, i32 0
  %105 = bitcast %struct.in_addr* %3 to i8*
  %106 = bitcast %struct.in_addr* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 8, i1 false)
  br label %107

107:                                              ; preds = %102, %101, %65, %55, %54, %29
  %108 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  ret i64 %109
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindLinkIn(%struct.libalias*, i32, i64, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
