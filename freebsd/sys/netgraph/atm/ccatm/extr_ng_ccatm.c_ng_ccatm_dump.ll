; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_ng_ccatm_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_ng_ccatm_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccnode = type { i32, i32*, %struct.mbuf*, i32 }
%struct.mbuf = type { i32 }

@MCLBYTES = common dso_local global i32 0, align 4
@send_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_ccatm_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ccatm_dump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccnode*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ccnode* @NG_NODE_PRIVATE(i32 %7)
  store %struct.ccnode* %8, %struct.ccnode** %4, align 8
  %9 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %10 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %12 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %11, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  %13 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %14 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MCLBYTES, align 4
  %17 = load i32, i32* @send_dump, align 4
  %18 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %19 = call i32 @cc_dump(i32 %15, i32 %16, i32 %17, %struct.ccnode* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %26 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %25, i32 0, i32 2
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  store %struct.mbuf* %27, %struct.mbuf** %5, align 8
  %28 = icmp ne %struct.mbuf* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %31 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %33 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %32, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ccnode*, %struct.ccnode** %4, align 8
  %36 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = call i32 @NG_SEND_DATA_ONLY(i32 %34, i32 %37, %struct.mbuf* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %29, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.ccnode* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @cc_dump(i32, i32, i32, %struct.ccnode*) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
