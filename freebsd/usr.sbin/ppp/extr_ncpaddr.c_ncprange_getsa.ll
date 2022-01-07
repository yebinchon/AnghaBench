; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_getsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_getsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, i32, i32, i32, i32 }
%struct.sockaddr_storage = type { i8* }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@AF_UNSPEC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncprange_getsa(%struct.ncprange* %0, %struct.sockaddr_storage* %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca %struct.ncprange*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store %struct.ncprange* %0, %struct.ncprange** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %6, align 8
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %12 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %7, align 8
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %14 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %8, align 8
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %9, align 8
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %18 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %18, %struct.sockaddr_in6** %10, align 8
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %20 = call i32 @memset(%struct.sockaddr_storage* %19, i8 signext 0, i32 8)
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %22 = icmp ne %struct.sockaddr_storage* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %25 = call i32 @memset(%struct.sockaddr_storage* %24, i8 signext 0, i32 8)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %28 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %77 [
    i32 129, label %30
    i32 128, label %53
  ]

30:                                               ; preds = %26
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  store i32 129, i32* %32, align 4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  store i32 12, i32* %34, align 4
  %35 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %36 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %41 = icmp ne %struct.sockaddr_in* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 0
  store i32 129, i32* %44, align 4
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 1
  store i32 12, i32* %46, align 4
  %47 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %48 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %42, %30
  br label %88

53:                                               ; preds = %26
  %54 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 0
  store i32 128, i32* %55, align 4
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 1
  store i32 12, i32* %57, align 4
  %58 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %59 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %64 = icmp ne %struct.sockaddr_in6* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %53
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 0
  store i32 128, i32* %67, align 4
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 1
  store i32 12, i32* %69, align 4
  %70 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %71 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bits2mask6(i32 %72)
  %74 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %53
  br label %88

77:                                               ; preds = %26
  %78 = load i8*, i8** @AF_UNSPEC, align 8
  %79 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %80 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %82 = icmp ne %struct.sockaddr_storage* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i8*, i8** @AF_UNSPEC, align 8
  %85 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %86 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %77
  br label %88

88:                                               ; preds = %87, %76, %52
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i8 signext, i32) #1

declare dso_local i32 @bits2mask6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
