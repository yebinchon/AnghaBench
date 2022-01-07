; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_init_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_init_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allow_volume_configure\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"nextslot\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"busyslots\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"maxio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_softc*)* @amr_init_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_init_sysctl(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  %3 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %4 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @device_get_sysctl_ctx(i32 %5)
  %7 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %8 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @device_get_sysctl_tree(i32 %9)
  %11 = call i32 @SYSCTL_CHILDREN(i32 %10)
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RW, align 4
  %14 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %15 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %14, i32 0, i32 4
  %16 = call i32 @SYSCTL_ADD_INT(i32 %6, i32 %11, i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %15, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %18 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_get_sysctl_ctx(i32 %19)
  %21 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %22 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_get_sysctl_tree(i32 %23)
  %25 = call i32 @SYSCTL_CHILDREN(i32 %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %29 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %28, i32 0, i32 3
  %30 = call i32 @SYSCTL_ADD_INT(i32 %20, i32 %25, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32* %29, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %32 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_get_sysctl_ctx(i32 %33)
  %35 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %36 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_get_sysctl_tree(i32 %37)
  %39 = call i32 @SYSCTL_CHILDREN(i32 %38)
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %43 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %42, i32 0, i32 2
  %44 = call i32 @SYSCTL_ADD_INT(i32 %34, i32 %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32* %43, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %46 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_get_sysctl_ctx(i32 %47)
  %49 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %50 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_get_sysctl_tree(i32 %51)
  %53 = call i32 @SYSCTL_CHILDREN(i32 %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %57 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %56, i32 0, i32 0
  %58 = call i32 @SYSCTL_ADD_INT(i32 %48, i32 %53, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32* %57, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
