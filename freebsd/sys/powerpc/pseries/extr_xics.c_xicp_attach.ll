; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xicp_softc = type { i32*, i32, i64, i32, i32**, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"ibm,int-on\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ibm,int-off\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ibm,set-xive\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ibm,get-xive\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Cannot attach without RTAS or OPAL\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"ibm,interrupt-server-ranges\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Handling CPUs %d-%d\0A\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"XICP\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MAX_XICP_IRQS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@root_pic = common dso_local global i32 0, align 4
@OPAL_INT_SET_CPPR = common dso_local global i32 0, align 4
@OPAL_INT_SET_MFRR = common dso_local global i32 0, align 4
@OPAL_XIVE_RESET = common dso_local global i32 0, align 4
@OPAL_XIVE_XICS_MODE_EMU = common dso_local global i32 0, align 4
@PSL_HV = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@powernv_smp_ap_extra_init = common dso_local global i32 0, align 4
@xicp_smp_cpu_startup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xicp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xicp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xicp_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.xicp_softc* @device_get_softc(i32 %6)
  store %struct.xicp_softc* %7, %struct.xicp_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ofw_bus_get_node(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = call i64 (...) @rtas_exists()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %15 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 8
  %16 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %18 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %21 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %23 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %24 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %87

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @OF_hasprop(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %36 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @OF_getencprop(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32* %37, i32 8)
  %39 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %40 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %45 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %52 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %57 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %61)
  br label %73

63:                                               ; preds = %29
  %64 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %65 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @mp_ncpus, align 4
  %69 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %70 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %33
  %74 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %75 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %74, i32 0, i32 3
  %76 = load i32, i32* @MTX_DEF, align 4
  %77 = call i32 @mtx_init(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %76)
  %78 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %79 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @OF_xref_from_node(i32 %81)
  %83 = load i32, i32* @MAX_XICP_IRQS, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @powerpc_register_pic(i32 %80, i32 %82, i32 %83, i32 1, i32 %84)
  %86 = load i32, i32* %3, align 4
  store i32 %86, i32* @root_pic, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %73, %25
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.xicp_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @rtas_exists(...) #1

declare dso_local i8* @rtas_token_lookup(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @powerpc_register_pic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
