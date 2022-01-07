; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sppp.c_ng_sppp_constructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sppp.c_ng_sppp_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { i32 }
%struct.ifnet = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.ifnet* }
%struct.TYPE_8__ = type { i32 }

@M_NETGRAPH_SPPP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFT_PPP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NG_SPPP_IFACE_NAME = common dso_local global i32 0, align 4
@ng_sppp_start = common dso_local global i32 0, align 4
@ng_sppp_ioctl = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: can't acquire netgraph name\0A\00", align 1
@DLT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_sppp_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sppp_constructor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sppp*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @M_NETGRAPH_SPPP, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.TYPE_7__* @malloc(i32 16, i32 %7, i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load i32, i32* @IFT_PPP, align 4
  %13 = call %struct.ifnet* @if_alloc(i32 %12)
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = icmp eq %struct.ifnet* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = load i32, i32* @M_NETGRAPH_SPPP, align 4
  %19 = call i32 @free(%struct.TYPE_7__* %17, i32 %18)
  %20 = load i32, i32* @ENOSPC, align 4
  store i32 %20, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = call %struct.sppp* @IFP2SP(%struct.ifnet* %22)
  store %struct.sppp* %23, %struct.sppp** %4, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 3
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store %struct.ifnet* %27, %struct.ifnet** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 @ng_sppp_get_unit(i32* %31)
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = call i32 @NG_NODE_SET_PRIVATE(i32 %33, %struct.TYPE_7__* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sppp*, %struct.sppp** %4, align 8
  %40 = call %struct.TYPE_8__* @SP2IFP(%struct.sppp* %39)
  %41 = load i32, i32* @NG_SPPP_IFACE_NAME, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @if_initname(%struct.TYPE_8__* %40, i32 %41, i32 %44)
  %46 = load i32, i32* @ng_sppp_start, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ng_sppp_ioctl, align 4
  %50 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @IFF_POINTOPOINT, align 4
  %53 = load i32, i32* @IFF_MULTICAST, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.sppp*, %struct.sppp** %4, align 8
  %59 = call %struct.TYPE_8__* @SP2IFP(%struct.sppp* %58)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ng_name_node(i32 %57, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %21
  %65 = load i32, i32* @LOG_WARNING, align 4
  %66 = load %struct.sppp*, %struct.sppp** %4, align 8
  %67 = call %struct.TYPE_8__* @SP2IFP(%struct.sppp* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @log(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %21
  %72 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %73 = call i32 @sppp_attach(%struct.ifnet* %72)
  %74 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %75 = call i32 @if_attach(%struct.ifnet* %74)
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = load i32, i32* @DLT_NULL, align 4
  %78 = call i32 @bpfattach(%struct.ifnet* %76, i32 %77, i32 4)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %71, %16
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_7__* @malloc(i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.sppp* @IFP2SP(%struct.ifnet*) #1

declare dso_local i32 @ng_sppp_get_unit(i32*) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @if_initname(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @SP2IFP(%struct.sppp*) #1

declare dso_local i64 @ng_name_node(i32, i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @sppp_attach(%struct.ifnet*) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
