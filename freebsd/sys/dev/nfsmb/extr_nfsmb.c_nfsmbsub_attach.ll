; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmbsub_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmbsub_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmb_softc = type { i32, i32*, i32, i32* }

@NF2PCI_SMBASE_2 = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not map i/o space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"nfsmb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfsmbsub_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsmbsub_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsmb_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.nfsmb_softc* @device_get_softc(i32 %6)
  store %struct.nfsmb_softc* %7, %struct.nfsmb_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @NF2PCI_SMBASE_2, align 4
  %11 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %12 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SYS_RES_IOPORT, align 4
  %15 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %16 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %16, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %21 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %23 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %1
  %27 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %27, i32 0, i32 0
  store i32 84, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SYS_RES_IOPORT, align 4
  %31 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %32 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %31, i32 0, i32 0
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i8* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %32, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %37 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %39 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %69

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %49 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_get_nameunit(i32 %50)
  %52 = load i32, i32* @MTX_DEF, align 4
  %53 = call i32 @mtx_init(i32* %49, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32* @device_add_child(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %56 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %57 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %5, align 8
  %59 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @nfsmbsub_detach(i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %2, align 4
  br label %69

66:                                               ; preds = %47
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @bus_generic_attach(i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %62, %42
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.nfsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @nfsmbsub_detach(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
