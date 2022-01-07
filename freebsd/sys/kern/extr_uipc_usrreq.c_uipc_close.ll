; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.unpcb = type { %struct.unpcb*, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"uipc_close: unp == NULL\00", align 1
@mtxpool_sleep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @uipc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uipc_close(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.unpcb*, align 8
  %4 = alloca %struct.unpcb*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store %struct.vnode* null, %struct.vnode** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = call %struct.unpcb* @sotounpcb(%struct.socket* %8)
  store %struct.unpcb* %9, %struct.unpcb** %3, align 8
  %10 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %11 = icmp ne %struct.unpcb* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.mtx* null, %struct.mtx** %6, align 8
  %14 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %15 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %14, i32 0, i32 1
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %5, align 8
  %17 = icmp ne %struct.vnode* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @mtxpool_sleep, align 4
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = call %struct.mtx* @mtx_pool_find(i32 %19, %struct.vnode* %20)
  store %struct.mtx* %21, %struct.mtx** %6, align 8
  %22 = load %struct.mtx*, %struct.mtx** %6, align 8
  %23 = call i32 @mtx_lock(%struct.mtx* %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %26 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %25)
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = icmp ne %struct.vnode* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %31 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %30, i32 0, i32 1
  %32 = load %struct.vnode*, %struct.vnode** %31, align 8
  %33 = icmp eq %struct.vnode* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.mtx*, %struct.mtx** %6, align 8
  %36 = call i32 @mtx_unlock(%struct.mtx* %35)
  store %struct.vnode* null, %struct.vnode** %5, align 8
  br label %37

37:                                               ; preds = %34, %29, %24
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  %39 = icmp ne %struct.vnode* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.vnode*, %struct.vnode** %5, align 8
  %42 = call i32 @VOP_UNP_DETACH(%struct.vnode* %41)
  %43 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %44 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %43, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %47 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %46, i32 0, i32 0
  %48 = load %struct.unpcb*, %struct.unpcb** %47, align 8
  store %struct.unpcb* %48, %struct.unpcb** %4, align 8
  %49 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %50 = call i32 @unp_pcb_hold(%struct.unpcb* %49)
  %51 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %52 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %53 = icmp eq %struct.unpcb* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @__predict_false(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %59 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %60 = call i32 @unp_disconnect(%struct.unpcb* %58, %struct.unpcb* %59)
  br label %82

61:                                               ; preds = %45
  %62 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %63 = icmp ne %struct.unpcb* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %66 = call i32 @unp_pcb_hold(%struct.unpcb* %65)
  %67 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %68 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @unp_pcb_owned_lock2(%struct.unpcb* %67, %struct.unpcb* %68, i32 %69)
  %71 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %72 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %73 = call i32 @unp_disconnect(%struct.unpcb* %71, %struct.unpcb* %72)
  %74 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %75 = call i64 @unp_pcb_rele(%struct.unpcb* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %79 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %78)
  br label %80

80:                                               ; preds = %77, %64
  br label %81

81:                                               ; preds = %80, %61
  br label %82

82:                                               ; preds = %81, %57
  %83 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %84 = call i64 @unp_pcb_rele(%struct.unpcb* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %88 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.vnode*, %struct.vnode** %5, align 8
  %91 = icmp ne %struct.vnode* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.mtx*, %struct.mtx** %6, align 8
  %94 = call i32 @mtx_unlock(%struct.mtx* %93)
  %95 = load %struct.vnode*, %struct.vnode** %5, align 8
  %96 = call i32 @vrele(%struct.vnode* %95)
  br label %97

97:                                               ; preds = %92, %89
  ret void
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.vnode*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @VOP_UNP_DETACH(%struct.vnode*) #1

declare dso_local i32 @unp_pcb_hold(%struct.unpcb*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @unp_disconnect(%struct.unpcb*, %struct.unpcb*) #1

declare dso_local i32 @unp_pcb_owned_lock2(%struct.unpcb*, %struct.unpcb*, i32) #1

declare dso_local i64 @unp_pcb_rele(%struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
