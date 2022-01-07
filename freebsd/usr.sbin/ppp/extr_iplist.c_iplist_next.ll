; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iplist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, %struct.in_addr, i32* }
%struct.in_addr = type { i8* }

@INADDR_ANY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iplist_next(%struct.iplist* %0) #0 {
  %2 = alloca %struct.in_addr, align 8
  %3 = alloca %struct.iplist*, align 8
  store %struct.iplist* %0, %struct.iplist** %3, align 8
  %4 = load %struct.iplist*, %struct.iplist** %3, align 8
  %5 = getelementptr inbounds %struct.iplist, %struct.iplist* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.iplist*, %struct.iplist** %3, align 8
  %11 = getelementptr inbounds %struct.iplist, %struct.iplist* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i32* null, i32** %12, align 8
  %13 = load %struct.iplist*, %struct.iplist** %3, align 8
  %14 = call i32 @iplist_nextrange(%struct.iplist* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = load i8*, i8** @INADDR_ANY, align 8
  %18 = load %struct.iplist*, %struct.iplist** %3, align 8
  %19 = getelementptr inbounds %struct.iplist, %struct.iplist* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load %struct.iplist*, %struct.iplist** %3, align 8
  %23 = getelementptr inbounds %struct.iplist, %struct.iplist* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = bitcast %struct.in_addr* %2 to i8*
  %26 = bitcast %struct.in_addr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  br label %85

27:                                               ; preds = %9
  br label %74

28:                                               ; preds = %1
  %29 = load %struct.iplist*, %struct.iplist** %3, align 8
  %30 = getelementptr inbounds %struct.iplist, %struct.iplist* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.iplist*, %struct.iplist** %3, align 8
  %35 = getelementptr inbounds %struct.iplist, %struct.iplist* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %28
  %40 = load %struct.iplist*, %struct.iplist** %3, align 8
  %41 = call i32 @iplist_nextrange(%struct.iplist* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** @INADDR_ANY, align 8
  %45 = load %struct.iplist*, %struct.iplist** %3, align 8
  %46 = getelementptr inbounds %struct.iplist, %struct.iplist* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = load %struct.iplist*, %struct.iplist** %3, align 8
  %50 = getelementptr inbounds %struct.iplist, %struct.iplist* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.iplist*, %struct.iplist** %3, align 8
  %53 = getelementptr inbounds %struct.iplist, %struct.iplist* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = bitcast %struct.in_addr* %2 to i8*
  %56 = bitcast %struct.in_addr* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  br label %85

57:                                               ; preds = %39
  br label %73

58:                                               ; preds = %28
  %59 = load %struct.iplist*, %struct.iplist** %3, align 8
  %60 = getelementptr inbounds %struct.iplist, %struct.iplist* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.iplist*, %struct.iplist** %3, align 8
  %64 = getelementptr inbounds %struct.iplist, %struct.iplist* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %62, %66
  %68 = call i8* @htonl(i64 %67)
  %69 = load %struct.iplist*, %struct.iplist** %3, align 8
  %70 = getelementptr inbounds %struct.iplist, %struct.iplist* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %71, i32 0, i32 0
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %58, %57
  br label %74

74:                                               ; preds = %73, %27
  %75 = load %struct.iplist*, %struct.iplist** %3, align 8
  %76 = getelementptr inbounds %struct.iplist, %struct.iplist* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.iplist*, %struct.iplist** %3, align 8
  %81 = getelementptr inbounds %struct.iplist, %struct.iplist* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = bitcast %struct.in_addr* %2 to i8*
  %84 = bitcast %struct.in_addr* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 8, i1 false)
  br label %85

85:                                               ; preds = %74, %43, %16
  %86 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  ret i8* %87
}

declare dso_local i32 @iplist_nextrange(%struct.iplist*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
