; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_set_vnet_hdr_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_set_vnet_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32, i32, i64 }
%struct.nmreq = type { i32, i32 }
%struct.netmap_priv = type { i32 }

@NETMAP_BDG_VNET_HDR = common dso_local global i32 0, align 4
@NIOCREGIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to set vnet header length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_backend*, i32)* @netmap_set_vnet_hdr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_set_vnet_hdr_len(%struct.net_backend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_backend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nmreq, align 4
  %8 = alloca %struct.netmap_priv*, align 8
  store %struct.net_backend* %0, %struct.net_backend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %10 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.netmap_priv*
  store %struct.netmap_priv* %12, %struct.netmap_priv** %8, align 8
  %13 = load %struct.netmap_priv*, %struct.netmap_priv** %8, align 8
  %14 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nmreq_init(%struct.nmreq* %7, i32 %15)
  %17 = load i32, i32* @NETMAP_BDG_VNET_HDR, align 4
  %18 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %22 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NIOCREGIF, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.nmreq* %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @WPRINTF(i8* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %37 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @nmreq_init(%struct.nmreq*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq*) #1

declare dso_local i32 @WPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
