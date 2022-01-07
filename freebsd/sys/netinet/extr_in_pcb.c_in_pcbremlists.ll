; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbremlists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbremlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i32, i64 }
%struct.inpcb = type { i32, i32, i32, %struct.inpcb*, i64, %struct.inpcbinfo* }
%struct.inpcbport = type { i32, i32, i32, %struct.inpcbport*, i64, %struct.inpcbinfo* }

@INP_INHASHLIST = common dso_local global i32 0, align 4
@inp_hash = common dso_local global i32 0, align 4
@inp_portlist = common dso_local global i32 0, align 4
@phd_hash = common dso_local global i32 0, align 4
@net_epoch_preempt = common dso_local global i32 0, align 4
@inpcbport_free = common dso_local global i32 0, align 4
@inp_list = common dso_local global i32 0, align 4
@V_tcbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*)* @in_pcbremlists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_pcbremlists(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.inpcbinfo*, align 8
  %4 = alloca %struct.inpcbport*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %5 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %6 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %5, i32 0, i32 5
  %7 = load %struct.inpcbinfo*, %struct.inpcbinfo** %6, align 8
  store %struct.inpcbinfo* %7, %struct.inpcbinfo** %3, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %9 = bitcast %struct.inpcb* %8 to %struct.inpcbport*
  %10 = call i32 @INP_WLOCK_ASSERT(%struct.inpcbport* %9)
  %11 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %12 = call i32 @INP_LIST_WLOCK_ASSERT(%struct.inpcbinfo* %11)
  %13 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %14 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @INP_INHASHLIST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %1
  %26 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 3
  %28 = load %struct.inpcb*, %struct.inpcb** %27, align 8
  %29 = bitcast %struct.inpcb* %28 to %struct.inpcbport*
  store %struct.inpcbport* %29, %struct.inpcbport** %4, align 8
  %30 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %31 = call i32 @INP_HASH_WLOCK(%struct.inpcbinfo* %30)
  %32 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %33 = bitcast %struct.inpcb* %32 to %struct.inpcbport*
  %34 = call i32 @in_pcbremlbgrouphash(%struct.inpcbport* %33)
  %35 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %36 = bitcast %struct.inpcb* %35 to %struct.inpcbport*
  %37 = load i32, i32* @inp_hash, align 4
  %38 = call i32 @CK_LIST_REMOVE(%struct.inpcbport* %36, i32 %37)
  %39 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %40 = bitcast %struct.inpcb* %39 to %struct.inpcbport*
  %41 = load i32, i32* @inp_portlist, align 4
  %42 = call i32 @CK_LIST_REMOVE(%struct.inpcbport* %40, i32 %41)
  %43 = load %struct.inpcbport*, %struct.inpcbport** %4, align 8
  %44 = getelementptr inbounds %struct.inpcbport, %struct.inpcbport* %43, i32 0, i32 2
  %45 = call i32* @CK_LIST_FIRST(i32* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %25
  %48 = load %struct.inpcbport*, %struct.inpcbport** %4, align 8
  %49 = load i32, i32* @phd_hash, align 4
  %50 = call i32 @CK_LIST_REMOVE(%struct.inpcbport* %48, i32 %49)
  %51 = load i32, i32* @net_epoch_preempt, align 4
  %52 = load %struct.inpcbport*, %struct.inpcbport** %4, align 8
  %53 = getelementptr inbounds %struct.inpcbport, %struct.inpcbport* %52, i32 0, i32 1
  %54 = load i32, i32* @inpcbport_free, align 4
  %55 = call i32 @epoch_call(i32 %51, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %25
  %57 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %58 = call i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo* %57)
  %59 = load i32, i32* @INP_INHASHLIST, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %62 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %56, %1
  %66 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %67 = bitcast %struct.inpcb* %66 to %struct.inpcbport*
  %68 = load i32, i32* @inp_list, align 4
  %69 = call i32 @CK_LIST_REMOVE(%struct.inpcbport* %67, i32 %68)
  %70 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %71 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcbport*) #1

declare dso_local i32 @INP_LIST_WLOCK_ASSERT(%struct.inpcbinfo*) #1

declare dso_local i32 @INP_HASH_WLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @in_pcbremlbgrouphash(%struct.inpcbport*) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.inpcbport*, i32) #1

declare dso_local i32* @CK_LIST_FIRST(i32*) #1

declare dso_local i32 @epoch_call(i32, i32*, i32) #1

declare dso_local i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
