; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_set_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_set_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_hvm_param = type { i32, i32, i32 }

@xen_vector_callback_enabled = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@HVM_PARAM_CALLBACK_IRQ = common dso_local global i32 0, align 4
@XENFEAT_hvm_callback_vector = common dso_local global i32 0, align 4
@xen_evtchn_needs_ack = common dso_local global i32 0, align 4
@IDT_EVTCHN = common dso_local global i32 0, align 4
@HVMOP_set_param = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to setup fake HVM param: %d\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"Xen HVM callback vector registration failed (%d). Falling back to emulated device interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't set evtchn callback\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_hvm_set_callback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xen_hvm_param, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @xen_vector_callback_enabled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %74

11:                                               ; preds = %1
  %12 = load i32, i32* @DOMID_SELF, align 4
  %13 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %3, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @HVM_PARAM_CALLBACK_IRQ, align 4
  %15 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @XENFEAT_hvm_callback_vector, align 4
  %17 = call i64 @xen_feature(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  %20 = call i32 @set_percpu_callback(i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  store i32 1, i32* @xen_evtchn_needs_ack, align 4
  %24 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %3, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @IDT_EVTCHN, align 4
  %27 = call i32 @HVM_CALLBACK_VECTOR(i32 %26)
  %28 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %3, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* @HVMOP_set_param, align 4
  %31 = call i32 @HYPERVISOR_hvm_op(i32 %30, %struct.xen_hvm_param* %3)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* @xen_vector_callback_enabled, align 4
  br label %74

35:                                               ; preds = %29
  %36 = load i32, i32* @xen_evtchn_needs_ack, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %11
  store i32 0, i32* @xen_vector_callback_enabled, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %74

49:                                               ; preds = %45
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @pci_get_irq(i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @HVM_CALLBACK_GSI(i32 %55)
  %57 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %3, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  br label %68

58:                                               ; preds = %49
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @pci_get_slot(i32* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = call i64 @pci_get_intpin(i32* %61)
  %63 = sub nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @HVM_CALLBACK_PCI_INTX(i64 %64, i64 %65)
  %67 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %3, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %54
  %69 = load i32, i32* @HVMOP_set_param, align 4
  %70 = call i32 @HYPERVISOR_hvm_op(i32 %69, %struct.xen_hvm_param* %3)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %10, %34, %48, %72, %68
  ret void
}

declare dso_local i64 @xen_feature(i32) #1

declare dso_local i32 @set_percpu_callback(i32) #1

declare dso_local i32 @HVM_CALLBACK_VECTOR(i32) #1

declare dso_local i32 @HYPERVISOR_hvm_op(i32, %struct.xen_hvm_param*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @pci_get_irq(i32*) #1

declare dso_local i32 @HVM_CALLBACK_GSI(i32) #1

declare dso_local i64 @pci_get_slot(i32*) #1

declare dso_local i64 @pci_get_intpin(i32*) #1

declare dso_local i32 @HVM_CALLBACK_PCI_INTX(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
