; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbdrop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, i32, i32, %struct.inpcb*, i32*, i32* }
%struct.inpcbport = type { i32, i32, i32, i32, i32, %struct.inpcbport*, i32*, i32* }

@INP_DROPPED = common dso_local global i32 0, align 4
@INP_INHASHLIST = common dso_local global i32 0, align 4
@inp_hash = common dso_local global i32 0, align 4
@inp_portlist = common dso_local global i32 0, align 4
@phd_hash = common dso_local global i32 0, align 4
@net_epoch_preempt = common dso_local global i32 0, align 4
@inpcbport_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbdrop(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.inpcbport*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = bitcast %struct.inpcb* %4 to %struct.inpcbport*
  %6 = call i32 @INP_WLOCK_ASSERT(%struct.inpcbport* %5)
  %7 = load i32, i32* @INP_DROPPED, align 4
  %8 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INP_INHASHLIST, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %1
  %19 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 5
  %21 = load %struct.inpcb*, %struct.inpcb** %20, align 8
  %22 = bitcast %struct.inpcb* %21 to %struct.inpcbport*
  store %struct.inpcbport* %22, %struct.inpcbport** %3, align 8
  %23 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @INP_HASH_WLOCK(i32 %25)
  %27 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %28 = bitcast %struct.inpcb* %27 to %struct.inpcbport*
  %29 = call i32 @in_pcbremlbgrouphash(%struct.inpcbport* %28)
  %30 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %31 = bitcast %struct.inpcb* %30 to %struct.inpcbport*
  %32 = load i32, i32* @inp_hash, align 4
  %33 = call i32 @CK_LIST_REMOVE(%struct.inpcbport* %31, i32 %32)
  %34 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %35 = bitcast %struct.inpcb* %34 to %struct.inpcbport*
  %36 = load i32, i32* @inp_portlist, align 4
  %37 = call i32 @CK_LIST_REMOVE(%struct.inpcbport* %35, i32 %36)
  %38 = load %struct.inpcbport*, %struct.inpcbport** %3, align 8
  %39 = getelementptr inbounds %struct.inpcbport, %struct.inpcbport* %38, i32 0, i32 4
  %40 = call i32* @CK_LIST_FIRST(i32* %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %18
  %43 = load %struct.inpcbport*, %struct.inpcbport** %3, align 8
  %44 = load i32, i32* @phd_hash, align 4
  %45 = call i32 @CK_LIST_REMOVE(%struct.inpcbport* %43, i32 %44)
  %46 = load i32, i32* @net_epoch_preempt, align 4
  %47 = load %struct.inpcbport*, %struct.inpcbport** %3, align 8
  %48 = getelementptr inbounds %struct.inpcbport, %struct.inpcbport* %47, i32 0, i32 3
  %49 = load i32, i32* @inpcbport_free, align 4
  %50 = call i32 @epoch_call(i32 %46, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %18
  %52 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @INP_HASH_WUNLOCK(i32 %54)
  %56 = load i32, i32* @INP_INHASHLIST, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcbport*) #1

declare dso_local i32 @INP_HASH_WLOCK(i32) #1

declare dso_local i32 @in_pcbremlbgrouphash(%struct.inpcbport*) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.inpcbport*, i32) #1

declare dso_local i32* @CK_LIST_FIRST(i32*) #1

declare dso_local i32 @epoch_call(i32, i32*, i32) #1

declare dso_local i32 @INP_HASH_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
