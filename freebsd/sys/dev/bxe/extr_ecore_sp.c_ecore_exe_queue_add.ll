; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_exe_queue_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_exe_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_exe_queue_obj = type { i32 (%struct.bxe_softc.0*, i32, %struct.ecore_exeq_elem*)*, i32 (%struct.bxe_softc.1*, i32, %struct.ecore_exeq_elem*)*, i32, i32, i32 }
%struct.bxe_softc.0 = type opaque
%struct.bxe_softc.1 = type opaque
%struct.ecore_exeq_elem = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Preamble failed: %d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*, i32)* @ecore_exe_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_exe_queue_add(%struct.bxe_softc* %0, %struct.ecore_exe_queue_obj* %1, %struct.ecore_exeq_elem* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_exe_queue_obj*, align 8
  %8 = alloca %struct.ecore_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_exe_queue_obj* %1, %struct.ecore_exe_queue_obj** %7, align 8
  store %struct.ecore_exeq_elem* %2, %struct.ecore_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %12 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %11, i32 0, i32 2
  %13 = call i32 @ECORE_SPIN_LOCK_BH(i32* %12)
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %4
  %17 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %18 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %17, i32 0, i32 0
  %19 = load i32 (%struct.bxe_softc.0*, i32, %struct.ecore_exeq_elem*)*, i32 (%struct.bxe_softc.0*, i32, %struct.ecore_exeq_elem*)** %18, align 8
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %21 = bitcast %struct.bxe_softc* %20 to %struct.bxe_softc.0*
  %22 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %26 = call i32 %19(%struct.bxe_softc.0* %21, i32 %24, %struct.ecore_exeq_elem* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %58

30:                                               ; preds = %16
  %31 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %31, i32 0, i32 1
  %33 = load i32 (%struct.bxe_softc.1*, i32, %struct.ecore_exeq_elem*)*, i32 (%struct.bxe_softc.1*, i32, %struct.ecore_exeq_elem*)** %32, align 8
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %35 = bitcast %struct.bxe_softc* %34 to %struct.bxe_softc.1*
  %36 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %37 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %40 = call i32 %33(%struct.bxe_softc.1* %35, i32 %38, %struct.ecore_exeq_elem* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ECORE_MSG(%struct.bxe_softc* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %58

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %50 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %49, i32 0, i32 0
  %51 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %52 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %51, i32 0, i32 3
  %53 = call i32 @ECORE_LIST_PUSH_TAIL(i32* %50, i32* %52)
  %54 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %55 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %54, i32 0, i32 2
  %56 = call i32 @ECORE_SPIN_UNLOCK_BH(i32* %55)
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %57, i32* %5, align 4
  br label %66

58:                                               ; preds = %43, %29
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %60 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %61 = call i32 @ecore_exe_queue_free_elem(%struct.bxe_softc* %59, %struct.ecore_exeq_elem* %60)
  %62 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %7, align 8
  %63 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %62, i32 0, i32 2
  %64 = call i32 @ECORE_SPIN_UNLOCK_BH(i32* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %58, %48
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @ECORE_SPIN_LOCK_BH(i32*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @ECORE_LIST_PUSH_TAIL(i32*, i32*) #1

declare dso_local i32 @ECORE_SPIN_UNLOCK_BH(i32*) #1

declare dso_local i32 @ecore_exe_queue_free_elem(%struct.bxe_softc*, %struct.ecore_exeq_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
