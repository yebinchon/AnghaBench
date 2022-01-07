; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_get_rand_ifid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_get_rand_ifid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.prison* }
%struct.prison = type { i32, i32 }
%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32* }

@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@EUI64_GBIT = common dso_local global i32 0, align 4
@EUI64_UBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_addr*)* @get_rand_ifid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rand_ifid(%struct.ifnet* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.prison*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.prison*, %struct.prison** %12, align 8
  store %struct.prison* %13, %struct.prison** %6, align 8
  %14 = load %struct.prison*, %struct.prison** %6, align 8
  %15 = getelementptr inbounds %struct.prison, %struct.prison* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.prison*, %struct.prison** %6, align 8
  %18 = getelementptr inbounds %struct.prison, %struct.prison* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = call i32 @bzero(i32* %5, i32 4)
  %22 = call i32 @MD5Init(i32* %5)
  %23 = load %struct.prison*, %struct.prison** %6, align 8
  %24 = getelementptr inbounds %struct.prison, %struct.prison* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MD5Update(i32* %5, i32 %25, i32 %26)
  %28 = load %struct.prison*, %struct.prison** %6, align 8
  %29 = getelementptr inbounds %struct.prison, %struct.prison* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock(i32* %29)
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %32 = call i32 @MD5Final(i32* %31, i32* %5)
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %34 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %35 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = call i32 @bcopy(i32* %33, i32* %37, i32 8)
  %39 = load i32, i32* @EUI64_GBIT, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %40
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @EUI64_UBIT, align 4
  %48 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %49 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %55 = call i32 @EUI64_TO_IFID(%struct.in6_addr* %54)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @EUI64_TO_IFID(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
