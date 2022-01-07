; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_setsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_setsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__ }
%struct.sockaddr_in6 = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncprange_setsa(%struct.ncprange* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.ncprange*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store %struct.ncprange* %0, %struct.ncprange** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %9, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %18, %struct.sockaddr_in6** %10, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %104 [
    i32 129, label %22
    i32 128, label %76
  ]

22:                                               ; preds = %3
  %23 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %24 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %23, i32 0, i32 0
  store i32 129, i32* %24, align 4
  %25 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %26 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %25, i32 0, i32 5
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %29 = bitcast %struct.TYPE_4__* %26 to i8*
  %30 = bitcast %struct.TYPE_4__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INADDR_ANY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load i32, i32* @INADDR_ANY, align 4
  %39 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %40 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %43 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %75

44:                                               ; preds = %22
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %46 = icmp ne %struct.sockaddr_in* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 129
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %58 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mask42bits(i32 %63)
  %65 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %66 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %74

67:                                               ; preds = %47, %44
  %68 = load i32, i32* @INADDR_BROADCAST, align 4
  %69 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %70 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %73 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %72, i32 0, i32 1
  store i32 32, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %52
  br label %75

75:                                               ; preds = %74, %37
  br label %108

76:                                               ; preds = %3
  %77 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %78 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %77, i32 0, i32 0
  store i32 128, i32* %78, align 4
  %79 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %83 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %84, i32 0, i32 0
  %86 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %90 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %89, i32 0, i32 2
  store i32 0, i32* %90, align 4
  br label %103

91:                                               ; preds = %76
  %92 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %93 = icmp ne %struct.sockaddr_in6* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %96 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %95, i32 0, i32 0
  %97 = call i32 @mask62bits(i32* %96)
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i32 [ %97, %94 ], [ 128, %98 ]
  %101 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %102 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %88
  br label %108

104:                                              ; preds = %3
  %105 = load i32, i32* @AF_UNSPEC, align 4
  %106 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %107 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %103, %75
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mask42bits(i32) #2

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #2

declare dso_local i32 @mask62bits(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
