; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii.c_miibus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii.c_miibus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miibus_ivars = type { i32, i32, i32 }
%struct.mii_attach_args = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot get children\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @miibus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miibus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.miibus_ivars*, align 8
  %5 = alloca %struct.mii_attach_args*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mii_data* @device_get_softc(i32 %10)
  store %struct.mii_data* %11, %struct.mii_data** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @device_get_children(i32 %12, i32** %7, i32* %9)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @device_get_ivars(i32 %25)
  %27 = bitcast i8* %26 to %struct.mii_attach_args*
  store %struct.mii_attach_args* %27, %struct.mii_attach_args** %5, align 8
  %28 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %29 = load %struct.mii_attach_args*, %struct.mii_attach_args** %5, align 8
  %30 = getelementptr inbounds %struct.mii_attach_args, %struct.mii_attach_args* %29, i32 0, i32 0
  store %struct.mii_data* %28, %struct.mii_data** %30, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @M_TEMP, align 4
  %37 = call i32 @free(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %79

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = call i8* @device_get_ivars(i32 %46)
  %48 = bitcast i8* %47 to %struct.miibus_ivars*
  store %struct.miibus_ivars* %48, %struct.miibus_ivars** %4, align 8
  %49 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %50 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %49, i32 0, i32 2
  %51 = load i32, i32* @IFM_IMASK, align 4
  %52 = load %struct.miibus_ivars*, %struct.miibus_ivars** %4, align 8
  %53 = getelementptr inbounds %struct.miibus_ivars, %struct.miibus_ivars* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.miibus_ivars*, %struct.miibus_ivars** %4, align 8
  %56 = getelementptr inbounds %struct.miibus_ivars, %struct.miibus_ivars* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ifmedia_init(i32* %50, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.miibus_ivars*, %struct.miibus_ivars** %4, align 8
  %60 = getelementptr inbounds %struct.miibus_ivars, %struct.miibus_ivars* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %63 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %65 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %68 = call i32 @if_setcapabilitiesbit(i32 %66, i32 %67, i32 0)
  %69 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %70 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %73 = call i32 @if_setcapenablebit(i32 %71, i32 %72, i32 0)
  %74 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %75 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %74, i32 0, i32 0
  %76 = call i32 @LIST_INIT(i32* %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @bus_generic_attach(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %45, %41
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i8* @device_get_ivars(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @if_setcapabilitiesbit(i32, i32, i32) #1

declare dso_local i32 @if_setcapenablebit(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
