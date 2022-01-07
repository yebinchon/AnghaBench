; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_setip4host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_setip4host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, %struct.TYPE_2__, %struct.in_addr, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.in_addr = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@INADDR_BROADCAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncprange_setip4host(%struct.ncprange* %0, i64 %1) #0 {
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca %struct.ncprange*, align 8
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i64 %1, i64* %5, align 8
  store %struct.ncprange* %0, %struct.ncprange** %4, align 8
  %6 = load i32, i32* @AF_INET, align 4
  %7 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %8 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %10 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %9, i32 0, i32 2
  %11 = bitcast %struct.in_addr* %10 to i8*
  %12 = bitcast %struct.in_addr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INADDR_ANY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i64, i64* @INADDR_ANY, align 8
  %19 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %20 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %23 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load i64, i64* @INADDR_BROADCAST, align 8
  %26 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %27 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %30 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
