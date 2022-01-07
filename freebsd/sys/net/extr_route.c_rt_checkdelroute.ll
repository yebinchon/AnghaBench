; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_checkdelroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_checkdelroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rt_delinfo = type { %struct.rtentry*, i32, %struct.rt_addrinfo }
%struct.rtentry = type { %struct.rtentry*, i32 }
%struct.rt_addrinfo = type { i32* }

@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @rt_checkdelroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_checkdelroute(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt_delinfo*, align 8
  %7 = alloca %struct.rt_addrinfo*, align 8
  %8 = alloca %struct.rtentry*, align 8
  %9 = alloca i32, align 4
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rt_delinfo*
  store %struct.rt_delinfo* %11, %struct.rt_delinfo** %6, align 8
  %12 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %13 = bitcast %struct.radix_node* %12 to %struct.rtentry*
  store %struct.rtentry* %13, %struct.rtentry** %8, align 8
  %14 = load %struct.rt_delinfo*, %struct.rt_delinfo** %6, align 8
  %15 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %14, i32 0, i32 2
  store %struct.rt_addrinfo* %15, %struct.rt_addrinfo** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %17 = call i32 @rt_key(%struct.rtentry* %16)
  %18 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %19 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @RTAX_DST, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %17, i32* %22, align 4
  %23 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %24 = call i32 @rt_mask(%struct.rtentry* %23)
  %25 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %26 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @RTAX_NETMASK, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %31 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %34 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @RTAX_GATEWAY, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  %38 = load %struct.rt_delinfo*, %struct.rt_delinfo** %6, align 8
  %39 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %42 = call %struct.rtentry* @rt_unlinkrte(i32 %40, %struct.rt_addrinfo* %41, i32* %9)
  store %struct.rtentry* %42, %struct.rtentry** %8, align 8
  %43 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %44 = icmp eq %struct.rtentry* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

46:                                               ; preds = %2
  %47 = load %struct.rt_delinfo*, %struct.rt_delinfo** %6, align 8
  %48 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %47, i32 0, i32 0
  %49 = load %struct.rtentry*, %struct.rtentry** %48, align 8
  %50 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %51 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %50, i32 0, i32 0
  store %struct.rtentry* %49, %struct.rtentry** %51, align 8
  %52 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %53 = load %struct.rt_delinfo*, %struct.rt_delinfo** %6, align 8
  %54 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %53, i32 0, i32 0
  store %struct.rtentry* %52, %struct.rtentry** %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %46, %45
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local %struct.rtentry* @rt_unlinkrte(i32, %struct.rt_addrinfo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
