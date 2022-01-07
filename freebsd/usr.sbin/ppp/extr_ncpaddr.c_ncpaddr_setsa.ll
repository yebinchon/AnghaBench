; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_setsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_setsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncpaddr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.sockaddr_in6 = type { %struct.TYPE_4__ }

@AF_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncpaddr_setsa(%struct.ncpaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.ncpaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.ncpaddr* %0, %struct.ncpaddr** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %8 = bitcast %struct.sockaddr* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %8, %struct.sockaddr_in** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %6, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %52 [
    i32 129, label %14
    i32 128, label %23
  ]

14:                                               ; preds = %2
  %15 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %16 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %15, i32 0, i32 0
  store i32 129, i32* %16, align 4
  %17 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %18 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %17, i32 0, i32 2
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_3__* %18 to i8*
  %22 = bitcast %struct.TYPE_3__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  %26 = call i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_4__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %30 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %29, i32 0, i32 0
  store i32 129, i32* %30, align 4
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 12
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %40 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %51

42:                                               ; preds = %23
  %43 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %44 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %43, i32 0, i32 0
  store i32 128, i32* %44, align 4
  %45 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %46 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %45, i32 0, i32 1
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_4__* %46 to i8*
  %50 = bitcast %struct.TYPE_4__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %42, %28
  br label %56

52:                                               ; preds = %2
  %53 = load i32, i32* @AF_UNSPEC, align 4
  %54 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %55 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %51, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
