; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_ip_reass_test.c_alloc_lopacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_ip_reass_test.c_alloc_lopacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lopacket = type { %struct.ip, i32 }
%struct.ip = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i64, i64, i32, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@AF_INET = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lopacket* (i8*, i64)* @alloc_lopacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lopacket* @alloc_lopacket(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.lopacket*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 88, %8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call %struct.lopacket* @malloc(i64 %10)
  store %struct.lopacket* %11, %struct.lopacket** %6, align 8
  %12 = load %struct.lopacket*, %struct.lopacket** %6, align 8
  %13 = icmp ne %struct.lopacket* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ATF_REQUIRE(i32 %14)
  %16 = load %struct.lopacket*, %struct.lopacket** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @memset(%struct.lopacket* %16, i32 0, i64 %17)
  %19 = load i32, i32* @AF_INET, align 4
  %20 = load %struct.lopacket*, %struct.lopacket** %6, align 8
  %21 = getelementptr inbounds %struct.lopacket, %struct.lopacket* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.lopacket*, %struct.lopacket** %6, align 8
  %23 = getelementptr inbounds %struct.lopacket, %struct.lopacket* %22, i32 0, i32 0
  store %struct.ip* %23, %struct.ip** %5, align 8
  %24 = load %struct.ip*, %struct.ip** %5, align 8
  %25 = getelementptr inbounds %struct.ip, %struct.ip* %24, i32 0, i32 0
  store i32 20, i32* %25, align 8
  %26 = load %struct.ip*, %struct.ip** %5, align 8
  %27 = getelementptr inbounds %struct.ip, %struct.ip* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  %28 = load %struct.ip*, %struct.ip** %5, align 8
  %29 = getelementptr inbounds %struct.ip, %struct.ip* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 80, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @htons(i32 %32)
  %34 = load %struct.ip*, %struct.ip** %5, align 8
  %35 = getelementptr inbounds %struct.ip, %struct.ip* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ip*, %struct.ip** %5, align 8
  %37 = getelementptr inbounds %struct.ip, %struct.ip* %36, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load %struct.ip*, %struct.ip** %5, align 8
  %39 = getelementptr inbounds %struct.ip, %struct.ip* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.ip*, %struct.ip** %5, align 8
  %41 = getelementptr inbounds %struct.ip, %struct.ip* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @IPPROTO_IP, align 4
  %43 = load %struct.ip*, %struct.ip** %5, align 8
  %44 = getelementptr inbounds %struct.ip, %struct.ip* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ip*, %struct.ip** %5, align 8
  %46 = getelementptr inbounds %struct.ip, %struct.ip* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.ip*, %struct.ip** %5, align 8
  %49 = getelementptr inbounds %struct.ip, %struct.ip* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.ip*, %struct.ip** %5, align 8
  %53 = getelementptr inbounds %struct.ip, %struct.ip* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.ip*, %struct.ip** %5, align 8
  %56 = call i32 @update_cksum(%struct.ip* %55)
  %57 = load %struct.lopacket*, %struct.lopacket** %6, align 8
  ret %struct.lopacket* %57
}

declare dso_local %struct.lopacket* @malloc(i64) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memset(%struct.lopacket*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @update_cksum(%struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
