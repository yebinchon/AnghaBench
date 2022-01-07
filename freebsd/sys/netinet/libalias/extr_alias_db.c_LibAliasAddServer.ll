; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasAddServer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_LibAliasAddServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_link = type { %struct.server* }
%struct.server = type { %struct.server*, i32, %struct.in_addr }
%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LibAliasAddServer(%struct.libalias* %0, %struct.alias_link* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.server*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.server*, align 8
  %12 = alloca %struct.server*, align 8
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store %struct.alias_link* %1, %struct.alias_link** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.libalias*, %struct.libalias** %6, align 8
  %15 = call i32 @LIBALIAS_LOCK(%struct.libalias* %14)
  %16 = load %struct.libalias*, %struct.libalias** %6, align 8
  %17 = call %struct.server* @malloc(i32 16)
  store %struct.server* %17, %struct.server** %9, align 8
  %18 = load %struct.server*, %struct.server** %9, align 8
  %19 = icmp ne %struct.server* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %4
  %21 = load %struct.server*, %struct.server** %9, align 8
  %22 = getelementptr inbounds %struct.server, %struct.server* %21, i32 0, i32 2
  %23 = bitcast %struct.in_addr* %22 to i8*
  %24 = bitcast %struct.in_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.server*, %struct.server** %9, align 8
  %27 = getelementptr inbounds %struct.server, %struct.server* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %29 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %28, i32 0, i32 0
  %30 = load %struct.server*, %struct.server** %29, align 8
  store %struct.server* %30, %struct.server** %11, align 8
  %31 = load %struct.server*, %struct.server** %11, align 8
  %32 = icmp eq %struct.server* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.server*, %struct.server** %9, align 8
  %35 = load %struct.server*, %struct.server** %9, align 8
  %36 = getelementptr inbounds %struct.server, %struct.server* %35, i32 0, i32 0
  store %struct.server* %34, %struct.server** %36, align 8
  br label %57

37:                                               ; preds = %20
  %38 = load %struct.server*, %struct.server** %11, align 8
  store %struct.server* %38, %struct.server** %12, align 8
  br label %39

39:                                               ; preds = %46, %37
  %40 = load %struct.server*, %struct.server** %12, align 8
  %41 = getelementptr inbounds %struct.server, %struct.server* %40, i32 0, i32 0
  %42 = load %struct.server*, %struct.server** %41, align 8
  %43 = load %struct.server*, %struct.server** %11, align 8
  %44 = icmp ne %struct.server* %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.server*, %struct.server** %12, align 8
  %48 = getelementptr inbounds %struct.server, %struct.server* %47, i32 0, i32 0
  %49 = load %struct.server*, %struct.server** %48, align 8
  store %struct.server* %49, %struct.server** %12, align 8
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.server*, %struct.server** %9, align 8
  %52 = load %struct.server*, %struct.server** %12, align 8
  %53 = getelementptr inbounds %struct.server, %struct.server* %52, i32 0, i32 0
  store %struct.server* %51, %struct.server** %53, align 8
  %54 = load %struct.server*, %struct.server** %11, align 8
  %55 = load %struct.server*, %struct.server** %9, align 8
  %56 = getelementptr inbounds %struct.server, %struct.server* %55, i32 0, i32 0
  store %struct.server* %54, %struct.server** %56, align 8
  br label %57

57:                                               ; preds = %50, %33
  %58 = load %struct.server*, %struct.server** %9, align 8
  %59 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %60 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %59, i32 0, i32 0
  store %struct.server* %58, %struct.server** %60, align 8
  store i32 0, i32* %10, align 4
  br label %62

61:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load %struct.libalias*, %struct.libalias** %6, align 8
  %64 = call i32 @LIBALIAS_UNLOCK(%struct.libalias* %63)
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i32 @LIBALIAS_LOCK(%struct.libalias*) #1

declare dso_local %struct.server* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @LIBALIAS_UNLOCK(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
