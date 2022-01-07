; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmb_softc = type { i32, i32*, i8*, i32, i32* }

@NF2PCI_SMBASE_1 = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not map i/o space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"nfsmb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfsmb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsmb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsmb_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.nfsmb_softc* @device_get_softc(i32 %5)
  store %struct.nfsmb_softc* %6, %struct.nfsmb_softc** %4, align 8
  %7 = load i32, i32* @NF2PCI_SMBASE_1, align 4
  %8 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %9 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_IOPORT, align 4
  %12 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %12, i32 0, i32 0
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i8* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %18 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %20 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %25 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %24, i32 0, i32 0
  store i32 80, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SYS_RES_IOPORT, align 4
  %28 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %29 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %28, i32 0, i32 0
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = call i8* @bus_alloc_resource_any(i32 %26, i32 %27, i32* %29, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %34 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %36 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %87

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %46 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_get_nameunit(i32 %47)
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = call i32 @mtx_init(i32* %46, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i8* @device_add_child(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %53 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %54 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %56 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @nfsmb_detach(i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %2, align 4
  br label %87

63:                                               ; preds = %44
  %64 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %65 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @pci_get_device(i32 %66)
  switch i32 %67, label %83 [
    i32 141, label %68
    i32 140, label %68
    i32 138, label %68
    i32 139, label %68
    i32 128, label %68
    i32 137, label %68
    i32 136, label %68
    i32 135, label %68
    i32 134, label %68
    i32 133, label %68
    i32 132, label %68
    i32 131, label %68
    i32 130, label %68
    i32 129, label %68
  ]

68:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63
  %69 = load i32, i32* %3, align 4
  %70 = call i8* @device_add_child(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %73 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %4, align 8
  %75 = getelementptr inbounds %struct.nfsmb_softc, %struct.nfsmb_softc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @nfsmb_detach(i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %2, align 4
  br label %87

82:                                               ; preds = %68
  br label %84

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @bus_generic_attach(i32 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %78, %59, %39
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.nfsmb_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i8* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @nfsmb_detach(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
