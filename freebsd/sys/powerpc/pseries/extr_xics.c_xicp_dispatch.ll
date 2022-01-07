; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }
%struct.xicp_softc = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource = type { i32 }

@H_XIRR = common dso_local global i32 0, align 4
@XICP_IPI = common dso_local global i32 0, align 4
@MAX_XICP_IRQS = common dso_local global i32 0, align 4
@H_IPI = common dso_local global i32 0, align 4
@hwref = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Unmapped XIRR\00", align 1
@OPAL_INT_GET_XIRR = common dso_local global i32 0, align 4
@OPAL_INT_SET_MFRR = common dso_local global i32 0, align 4
@PSL_HV = common dso_local global i32 0, align 4
@cpu_xirr = common dso_local global i32* null, align 8
@cpuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.trapframe*)* @xicp_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xicp_dispatch(i32 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.xicp_softc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  store %struct.resource* null, %struct.resource** %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.xicp_softc* @device_get_softc(i32 %10)
  store %struct.xicp_softc* %11, %struct.xicp_softc** %5, align 8
  br label %12

12:                                               ; preds = %79, %2
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = call i32 @bus_read_4(%struct.resource* %16, i32 4)
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @H_XIRR, align 4
  %20 = call i32 @phyp_pft_hcall(i32 %19, i32 0, i32 0, i32 0, i32 0, i32* %7, i32* %8, i32* %8)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 16777215
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %90

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @XICP_IPI, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32, i32* @MAX_XICP_IRQS, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = call i32 @bus_write_1(%struct.resource* %36, i32 12, i32 255)
  br label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @H_IPI, align 4
  %40 = load i32, i32* @hwref, align 4
  %41 = call i64 @PCPU_GET(i32 %40)
  %42 = trunc i64 %41 to i32
  %43 = call i32 @phyp_hcall(i32 %39, i32 %42, i32 255)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.xicp_softc*, %struct.xicp_softc** %5, align 8
  %46 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  br label %79

48:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.xicp_softc*, %struct.xicp_softc** %5, align 8
  %52 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.xicp_softc*, %struct.xicp_softc** %5, align 8
  %57 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %71

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %49

71:                                               ; preds = %66, %49
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.xicp_softc*, %struct.xicp_softc** %5, align 8
  %74 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @KASSERT(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %71, %44
  %80 = load %struct.xicp_softc*, %struct.xicp_softc** %5, align 8
  %81 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %89 = call i32 @powerpc_dispatch_intr(i32 %87, %struct.trapframe* %88)
  br label %12

90:                                               ; preds = %26
  ret void
}

declare dso_local %struct.xicp_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @phyp_pft_hcall(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_write_1(%struct.resource*, i32, i32) #1

declare dso_local i32 @phyp_hcall(i32, i32, i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerpc_dispatch_intr(i32, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
