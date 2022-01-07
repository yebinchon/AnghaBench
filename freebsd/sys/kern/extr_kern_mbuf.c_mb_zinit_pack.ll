; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_zinit_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_zinit_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@zone_clust = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT_PACKET = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mb_zinit_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_zinit_pack(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mbuf*
  store %struct.mbuf* %10, %struct.mbuf** %8, align 8
  %11 = load i32, i32* @zone_clust, align 4
  %12 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @uma_zalloc_arg(i32 %11, %struct.mbuf* %12, i32 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %16
  %25 = load i32, i32* @EXT_PACKET, align 4
  %26 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32* @uma_zalloc_arg(i32, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
