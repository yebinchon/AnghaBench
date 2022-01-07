; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_setup_pvt_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_setup_pvt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32*, i32*, i32, i32, i32 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_XENNETBACK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_pvt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_pvt_data() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 7), align 8
  %3 = call i32 @bzero(i32 %2, i32 4)
  %4 = load i32, i32* @PAGE_SIZE, align 4
  %5 = load i32, i32* @M_XENNETBACK, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @malloc(i32 %4, i32 %5, i32 %8)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 4), align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 4), align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %0
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 4), align 8
  %15 = call i32 @SHARED_RING_INIT(i32* %14)
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 4), align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call i32 @BACK_RING_INIT(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 6), i32* %16, i32 %17)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 4), align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @FRONT_RING_INIT(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 5), i32* %19, i32 %20)
  br label %23

22:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* @IFT_ETHER, align 4
  %25 = call i32* @if_alloc(i32 %24)
  store i32* %25, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 3), align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 3), align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* @M_XENNETBACK, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @malloc(i32 %30, i32 %31, i32 %34)
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %41 = call i32 @SHARED_RING_INIT(i32* %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i32 @BACK_RING_INIT(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 2), i32* %42, i32 %43)
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = call i32 @FRONT_RING_INIT(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xnb_unit_pvt, i32 0, i32 1), i32* %45, i32 %46)
  br label %49

48:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @SHARED_RING_INIT(i32*) #1

declare dso_local i32 @BACK_RING_INIT(i32*, i32*, i32) #1

declare dso_local i32 @FRONT_RING_INIT(i32*, i32*, i32) #1

declare dso_local i32* @if_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
