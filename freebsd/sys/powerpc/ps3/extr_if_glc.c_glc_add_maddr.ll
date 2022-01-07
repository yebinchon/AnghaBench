; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_add_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_add_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.glc_softc = type { i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @glc_add_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glc_add_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.glc_softc*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.glc_softc*
  store %struct.glc_softc* %11, %struct.glc_softc** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %17 = bitcast i64* %9 to i32*
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %20 = call i32 @LLADDR(%struct.sockaddr_dl* %19)
  %21 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %22 = call i32 @memcpy(i32* %18, i32 %20, i32 %21)
  %23 = load %struct.glc_softc*, %struct.glc_softc** %8, align 8
  %24 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.glc_softc*, %struct.glc_softc** %8, align 8
  %27 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @lv1_net_add_multicast_address(i32 %25, i32 %28, i64 %29, i32 0)
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %16, %15
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @lv1_net_add_multicast_address(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
