; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbrehash_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbrehash_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.inpcbinfo* }
%struct.TYPE_2__ = type { i32 }
%struct.inpcbinfo = type { i32, %struct.inpcbhead* }
%struct.inpcbhead = type { i32 }
%struct.mbuf = type { i32 }

@INP_INHASHLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"in_pcbrehash: !INP_INHASHLIST\00", align 1
@inp_hash = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbrehash_mbuf(%struct.inpcb* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.inpcbinfo*, align 8
  %6 = alloca %struct.inpcbhead*, align 8
  %7 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 6
  %10 = load %struct.inpcbinfo*, %struct.inpcbinfo** %9, align 8
  store %struct.inpcbinfo* %10, %struct.inpcbinfo** %5, align 8
  %11 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %12 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %11)
  %13 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %14 = call i32 @INP_HASH_WLOCK_ASSERT(%struct.inpcbinfo* %13)
  %15 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @INP_INHASHLIST, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %26 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %25, i32 0, i32 1
  %27 = load %struct.inpcbhead*, %struct.inpcbhead** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %30 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %36 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @INP_PCBHASH(i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = getelementptr inbounds %struct.inpcbhead, %struct.inpcbhead* %27, i64 %38
  store %struct.inpcbhead* %39, %struct.inpcbhead** %6, align 8
  %40 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %41 = load i32, i32* @inp_hash, align 4
  %42 = call i32 @CK_LIST_REMOVE(%struct.inpcb* %40, i32 %41)
  %43 = load %struct.inpcbhead*, %struct.inpcbhead** %6, align 8
  %44 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %45 = load i32, i32* @inp_hash, align 4
  %46 = call i32 @CK_LIST_INSERT_HEAD(%struct.inpcbhead* %43, %struct.inpcb* %44, i32 %45)
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WLOCK_ASSERT(%struct.inpcbinfo*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @INP_PCBHASH(i32, i32, i32, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.inpcb*, i32) #1

declare dso_local i32 @CK_LIST_INSERT_HEAD(%struct.inpcbhead*, %struct.inpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
