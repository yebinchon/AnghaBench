; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_fbsdrun_set_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_fbsdrun_set_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@VM_CAP_HALT_EXIT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"VM exit on HLT not supported\0A\00", align 1
@BSP = common dso_local global i32 0, align 4
@vmexit_hlt = common dso_local global i32 0, align 4
@handler = common dso_local global i32* null, align 8
@VM_EXITCODE_HLT = common dso_local global i64 0, align 8
@VM_CAP_PAUSE_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SMP mux requested, no pause support\0A\00", align 1
@vmexit_pause = common dso_local global i32 0, align 4
@VM_EXITCODE_PAUSE = common dso_local global i64 0, align 8
@x2apic_mode = common dso_local global i64 0, align 8
@X2APIC_ENABLED = common dso_local global i32 0, align 4
@X2APIC_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to set x2apic state (%d)\0A\00", align 1
@VM_CAP_ENABLE_INVPCID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbsdrun_set_capabilities(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 (...) @fbsdrun_vmexit_on_hlt()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VM_CAP_HALT_EXIT, align 4
  %13 = call i32 @vm_get_capability(%struct.vmctx* %10, i32 %11, i32 %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 4) #3
  unreachable

20:                                               ; preds = %9
  %21 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VM_CAP_HALT_EXIT, align 4
  %24 = call i32 @vm_set_capability(%struct.vmctx* %21, i32 %22, i32 %23, i32 1)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BSP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @vmexit_hlt, align 4
  %30 = load i32*, i32** @handler, align 8
  %31 = load i64, i64* @VM_EXITCODE_HLT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %2
  %35 = call i64 (...) @fbsdrun_vmexit_on_pause()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @VM_CAP_PAUSE_EXIT, align 4
  %41 = call i32 @vm_get_capability(%struct.vmctx* %38, i32 %39, i32 %40, i32* %6)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @exit(i32 4) #3
  unreachable

48:                                               ; preds = %37
  %49 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @VM_CAP_PAUSE_EXIT, align 4
  %52 = call i32 @vm_set_capability(%struct.vmctx* %49, i32 %50, i32 %51, i32 1)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @BSP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* @vmexit_pause, align 4
  %58 = load i32*, i32** @handler, align 8
  %59 = load i64, i64* @VM_EXITCODE_PAUSE, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i64, i64* @x2apic_mode, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @X2APIC_ENABLED, align 4
  %69 = call i32 @vm_set_x2apic_state(%struct.vmctx* %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %62
  %71 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @X2APIC_DISABLED, align 4
  %74 = call i32 @vm_set_x2apic_state(%struct.vmctx* %71, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = call i32 @exit(i32 4) #3
  unreachable

83:                                               ; preds = %75
  %84 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @VM_CAP_ENABLE_INVPCID, align 4
  %87 = call i32 @vm_set_capability(%struct.vmctx* %84, i32 %85, i32 %86, i32 1)
  ret void
}

declare dso_local i64 @fbsdrun_vmexit_on_hlt(...) #1

declare dso_local i32 @vm_get_capability(%struct.vmctx*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vm_set_capability(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i64 @fbsdrun_vmexit_on_pause(...) #1

declare dso_local i32 @vm_set_x2apic_state(%struct.vmctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
