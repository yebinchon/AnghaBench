; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_GetOriginalAddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_GetOriginalAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { %struct.in_addr, %struct.TYPE_2__* }
%struct.in_addr = type { i64 }
%struct.TYPE_2__ = type { %struct.in_addr }

@INADDR_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetOriginalAddress(%struct.alias_link* %0) #0 {
  %2 = alloca %struct.in_addr, align 8
  %3 = alloca %struct.alias_link*, align 8
  store %struct.alias_link* %0, %struct.alias_link** %3, align 8
  %4 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %5 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @INADDR_ANY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %12 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast %struct.in_addr* %2 to i8*
  %16 = bitcast %struct.in_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.alias_link*, %struct.alias_link** %3, align 8
  %19 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %18, i32 0, i32 0
  %20 = bitcast %struct.in_addr* %2 to i8*
  %21 = bitcast %struct.in_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  br label %22

22:                                               ; preds = %17, %10
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  ret i64 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
