; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_nat.c_ng_nat_constructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_nat.c_ng_nat_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i32 }

@M_NETGRAPH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PKT_ALIAS_SAME_PORTS = common dso_local global i32 0, align 4
@DLT_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_nat_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_nat_constructor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @M_NETGRAPH, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.TYPE_4__* @malloc(i32 32, i32 %4, i32 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = call i32 @LibAliasInit(i32* null)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %16 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %17 = call i32 @LibAliasSetMode(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @DLT_RAW, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @STAILQ_INIT(i32* %26)
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = call i32 @NG_NODE_SET_PRIVATE(i32 %28, %struct.TYPE_4__* %29)
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @NG_NODE_FORCE_WRITER(i32 %34)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local i32 @LibAliasInit(i32*) #1

declare dso_local i32 @LibAliasSetMode(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @NG_NODE_FORCE_WRITER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
