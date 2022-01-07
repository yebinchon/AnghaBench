; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_attach_cntl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_attach_cntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ngsock = type { i32, %struct.TYPE_5__*, %struct.ngpcb*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ngpcb = type { i32, %struct.ngsock* }

@NG_CONTROL = common dso_local global i32 0, align 4
@typestruct = common dso_local global i32 0, align 4
@M_NETGRAPH_SOCK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ng_socket\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @ng_attach_cntl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_attach_cntl(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.ngsock*, align 8
  %5 = alloca %struct.ngpcb*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = load i32, i32* @NG_CONTROL, align 4
  %10 = call i32 @ng_attach_common(%struct.socket* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = call %struct.ngpcb* @sotongpcb(%struct.socket* %15)
  store %struct.ngpcb* %16, %struct.ngpcb** %5, align 8
  %17 = call i32 @ng_make_node_common(i32* @typestruct, %struct.TYPE_5__** %6)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %21 = load i32, i32* @NG_CONTROL, align 4
  %22 = call i32 @ng_detach_common(%struct.ngpcb* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %71

24:                                               ; preds = %14
  %25 = load i32, i32* @M_NETGRAPH_SOCK, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.ngsock* @malloc(i32 40, i32 %25, i32 %28)
  store %struct.ngsock* %29, %struct.ngsock** %4, align 8
  %30 = load i32, i32* @M_NETGRAPH_SOCK, align 4
  %31 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %32 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %31, i32 0, i32 4
  %33 = call i32 @hashinit(i32 16, i32 %30, i32* %32)
  %34 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %35 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %37 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %36, i32 0, i32 3
  %38 = load i32, i32* @MTX_DEF, align 4
  %39 = call i32 @mtx_init(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %38)
  %40 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %41 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %42 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %41, i32 0, i32 2
  store %struct.ngpcb* %40, %struct.ngpcb** %42, align 8
  %43 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %44 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %45 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %44, i32 0, i32 1
  store %struct.ngsock* %43, %struct.ngsock** %45, align 8
  %46 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %47 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %52 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %51, i32 0, i32 1
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %57 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %59 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %62 = call i32 @NG_NODE_SET_PRIVATE(%struct.TYPE_5__* %60, %struct.ngsock* %61)
  %63 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %64 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @NG_NODE_REF(%struct.TYPE_5__* %65)
  %67 = load %struct.ngsock*, %struct.ngsock** %4, align 8
  %68 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %24, %19, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ng_attach_common(%struct.socket*, i32) #1

declare dso_local %struct.ngpcb* @sotongpcb(%struct.socket*) #1

declare dso_local i32 @ng_make_node_common(i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @ng_detach_common(%struct.ngpcb*, i32) #1

declare dso_local %struct.ngsock* @malloc(i32, i32, i32) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(%struct.TYPE_5__*, %struct.ngsock*) #1

declare dso_local i32 @NG_NODE_REF(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
