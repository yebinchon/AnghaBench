; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_constructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.TYPE_8__, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.ifnet*, i32 }

@M_NETGRAPH_IFACE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFT_PROPVIRTUAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ng_iface private rmlock\00", align 1
@V_ng_iface_unit = common dso_local global i32 0, align 4
@NG_IFACE_IFACE_NAME = common dso_local global i32 0, align 4
@ng_iface_output = common dso_local global i32 0, align 4
@ng_iface_start = common dso_local global i32 0, align 4
@ng_iface_ioctl = common dso_local global i32 0, align 4
@NG_IFACE_MTU_DEFAULT = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: can't acquire netgraph name\0A\00", align 1
@DLT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_iface_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_iface_constructor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @M_NETGRAPH_IFACE, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.TYPE_7__* @malloc(i32 24, i32 %6, i32 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load i32, i32* @IFT_PROPVIRTUAL, align 4
  %12 = call %struct.ifnet* @if_alloc(i32 %11)
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = icmp eq %struct.ifnet* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load i32, i32* @M_NETGRAPH_IFACE, align 4
  %18 = call i32 @free(%struct.TYPE_7__* %16, i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %105

20:                                               ; preds = %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = call i32 @rm_init(i32* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 11
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store %struct.ifnet* %27, %struct.ifnet** %29, align 8
  %30 = load i32, i32* @V_ng_iface_unit, align 4
  %31 = call i32 @alloc_unr(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = call i32 @NG_NODE_SET_PRIVATE(i32 %34, %struct.TYPE_7__* %35)
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = load i32, i32* @NG_IFACE_IFACE_NAME, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @if_initname(%struct.ifnet* %40, i32 %41, i32 %44)
  %46 = load i32, i32* @ng_iface_output, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ng_iface_start, align 4
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ng_iface_ioctl, align 4
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @NG_IFACE_MTU_DEFAULT, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @IFF_SIMPLEX, align 4
  %59 = load i32, i32* @IFF_POINTOPOINT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IFF_NOARP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IFF_MULTICAST, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @IFT_PROPVIRTUAL, align 4
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 1
  store i32 64000, i32* %75, align 4
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 3
  %78 = load i32, i32* @ifqmaxlen, align 4
  %79 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_8__* %77, i32 %78)
  %80 = load i32, i32* @ifqmaxlen, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 3
  %86 = call i32 @IFQ_SET_READY(%struct.TYPE_8__* %85)
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @ng_name_node(i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %20
  %94 = load i32, i32* @LOG_WARNING, align 4
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @log(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %20
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = call i32 @if_attach(%struct.ifnet* %100)
  %102 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %103 = load i32, i32* @DLT_NULL, align 4
  %104 = call i32 @bpfattach(%struct.ifnet* %102, i32 %103, i32 4)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_7__* @malloc(i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_8__*) #1

declare dso_local i64 @ng_name_node(i32, i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
