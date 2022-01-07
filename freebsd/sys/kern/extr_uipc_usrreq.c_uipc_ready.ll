; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.unpcb = type { %struct.socket*, %struct.unpcb* }

@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, i32)* @uipc_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_ready(%struct.socket* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.unpcb*, align 8
  %9 = alloca %struct.unpcb*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call %struct.unpcb* @sotounpcb(%struct.socket* %13)
  store %struct.unpcb* %14, %struct.unpcb** %8, align 8
  %15 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %16 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %15)
  %17 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %18 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %17, i32 0, i32 1
  %19 = load %struct.unpcb*, %struct.unpcb** %18, align 8
  store %struct.unpcb* %19, %struct.unpcb** %9, align 8
  %20 = icmp eq %struct.unpcb* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %23 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %22)
  br label %72

24:                                               ; preds = %3
  %25 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %26 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %27 = icmp ne %struct.unpcb* %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %30 = call i64 @UNP_PCB_TRYLOCK(%struct.unpcb* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %34 = call i32 @unp_pcb_hold(%struct.unpcb* %33)
  %35 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %36 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %35)
  %37 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %38 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %37)
  %39 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %40 = call i64 @unp_pcb_rele(%struct.unpcb* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %72

43:                                               ; preds = %32
  br label %47

44:                                               ; preds = %28
  %45 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %46 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %45)
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %50 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %49, i32 0, i32 0
  %51 = load %struct.socket*, %struct.socket** %50, align 8
  store %struct.socket* %51, %struct.socket** %10, align 8
  %52 = load %struct.socket*, %struct.socket** %10, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = call i32 @SOCKBUF_LOCK(i32* %53)
  %55 = load %struct.socket*, %struct.socket** %10, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @sbready(i32* %56, %struct.mbuf* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load %struct.socket*, %struct.socket** %10, align 8
  %63 = call i32 @sorwakeup_locked(%struct.socket* %62)
  br label %68

64:                                               ; preds = %48
  %65 = load %struct.socket*, %struct.socket** %10, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  %67 = call i32 @SOCKBUF_UNLOCK(i32* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %70 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %85

72:                                               ; preds = %42, %21
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %80, %72
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %79 = call %struct.mbuf* @m_free(%struct.mbuf* %78)
  store %struct.mbuf* %79, %struct.mbuf** %6, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load i32, i32* @ECONNRESET, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %68
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

declare dso_local i64 @UNP_PCB_TRYLOCK(%struct.unpcb*) #1

declare dso_local i32 @unp_pcb_hold(%struct.unpcb*) #1

declare dso_local i64 @unp_pcb_rele(%struct.unpcb*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @sbready(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @sorwakeup_locked(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
