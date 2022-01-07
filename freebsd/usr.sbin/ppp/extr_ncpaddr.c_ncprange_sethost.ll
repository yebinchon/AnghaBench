; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_sethost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_sethost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ncpaddr = type { i32, i32, %struct.TYPE_3__ }

@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncprange_sethost(%struct.ncprange* %0, %struct.ncpaddr* %1) #0 {
  %3 = alloca %struct.ncprange*, align 8
  %4 = alloca %struct.ncpaddr*, align 8
  store %struct.ncprange* %0, %struct.ncprange** %3, align 8
  store %struct.ncpaddr* %1, %struct.ncpaddr** %4, align 8
  %5 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %6 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %48 [
    i32 129, label %8
    i32 128, label %38
  ]

8:                                                ; preds = %2
  %9 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %10 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %9, i32 0, i32 0
  store i32 129, i32* %10, align 4
  %11 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %12 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %11, i32 0, i32 5
  %13 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %14 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %13, i32 0, i32 2
  %15 = bitcast %struct.TYPE_3__* %12 to i8*
  %16 = bitcast %struct.TYPE_3__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %18 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INADDR_ANY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %8
  %24 = load i32, i32* @INADDR_ANY, align 4
  %25 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %26 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %29 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %37

30:                                               ; preds = %8
  %31 = load i32, i32* @INADDR_BROADCAST, align 4
  %32 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %33 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %36 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %35, i32 0, i32 1
  store i32 32, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %23
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %40 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %39, i32 0, i32 0
  store i32 128, i32* %40, align 4
  %41 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %42 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %45 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %47 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %46, i32 0, i32 2
  store i32 128, i32* %47, align 4
  br label %52

48:                                               ; preds = %2
  %49 = load i32, i32* @AF_UNSPEC, align 4
  %50 = load %struct.ncprange*, %struct.ncprange** %3, align 8
  %51 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %38, %37
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
