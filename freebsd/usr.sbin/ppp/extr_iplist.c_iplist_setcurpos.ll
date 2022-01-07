; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setcurpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setcurpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iplist = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %struct.in_addr, i64, i64, i32* }
%struct.in_addr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iplist_setcurpos(%struct.iplist* %0, i64 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca %struct.iplist*, align 8
  %5 = alloca i64, align 8
  store %struct.iplist* %0, %struct.iplist** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.iplist*, %struct.iplist** %4, align 8
  %12 = getelementptr inbounds %struct.iplist, %struct.iplist* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %8, %2
  %16 = load %struct.iplist*, %struct.iplist** %4, align 8
  %17 = getelementptr inbounds %struct.iplist, %struct.iplist* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load i32, i32* @INADDR_ANY, align 4
  %20 = load %struct.iplist*, %struct.iplist** %4, align 8
  %21 = getelementptr inbounds %struct.iplist, %struct.iplist* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load %struct.iplist*, %struct.iplist** %4, align 8
  %25 = getelementptr inbounds %struct.iplist, %struct.iplist* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = bitcast %struct.in_addr* %3 to i8*
  %28 = bitcast %struct.in_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 8 %28, i64 4, i1 false)
  br label %102

29:                                               ; preds = %8
  %30 = load %struct.iplist*, %struct.iplist** %4, align 8
  %31 = getelementptr inbounds %struct.iplist, %struct.iplist* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = load %struct.iplist*, %struct.iplist** %4, align 8
  %34 = getelementptr inbounds %struct.iplist, %struct.iplist* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %78
  %37 = load %struct.iplist*, %struct.iplist** %4, align 8
  %38 = call i32 @iplist_nextrange(%struct.iplist* %37)
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.iplist*, %struct.iplist** %4, align 8
  %41 = getelementptr inbounds %struct.iplist, %struct.iplist* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %39, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %36
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.iplist*, %struct.iplist** %4, align 8
  %53 = getelementptr inbounds %struct.iplist, %struct.iplist* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.iplist*, %struct.iplist** %4, align 8
  %57 = getelementptr inbounds %struct.iplist, %struct.iplist* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %55
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.iplist*, %struct.iplist** %4, align 8
  %64 = getelementptr inbounds %struct.iplist, %struct.iplist* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.iplist*, %struct.iplist** %4, align 8
  %68 = getelementptr inbounds %struct.iplist, %struct.iplist* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = call i32 @htonl(i64 %71)
  %73 = load %struct.iplist*, %struct.iplist** %4, align 8
  %74 = getelementptr inbounds %struct.iplist, %struct.iplist* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %50, %47
  br label %96

78:                                               ; preds = %36
  %79 = load %struct.iplist*, %struct.iplist** %4, align 8
  %80 = getelementptr inbounds %struct.iplist, %struct.iplist* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* %5, align 8
  %85 = load %struct.iplist*, %struct.iplist** %4, align 8
  %86 = getelementptr inbounds %struct.iplist, %struct.iplist* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.iplist*, %struct.iplist** %4, align 8
  %90 = getelementptr inbounds %struct.iplist, %struct.iplist* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %88
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  br label %36

96:                                               ; preds = %77
  %97 = load %struct.iplist*, %struct.iplist** %4, align 8
  %98 = getelementptr inbounds %struct.iplist, %struct.iplist* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = bitcast %struct.in_addr* %3 to i8*
  %101 = bitcast %struct.in_addr* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 8 %101, i64 4, i1 false)
  br label %102

102:                                              ; preds = %96, %15
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @iplist_nextrange(%struct.iplist*) #2

declare dso_local i32 @htonl(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
