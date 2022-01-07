; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_identify_hypervisor_cpuid_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_identify_hypervisor_cpuid_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@vm_cpuids = common dso_local global %struct.TYPE_3__* null, align 8
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_VM = common dso_local global i64 0, align 8
@hv_base = common dso_local global i32 0, align 4
@hv_high = common dso_local global i32 0, align 4
@hv_vendor = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @identify_hypervisor_cpuid_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @identify_hypervisor_cpuid_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  store i32 1073741824, i32* %1, align 4
  br label %4

4:                                                ; preds = %89, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1073807360
  br i1 %6, label %7, label %92

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %10 = call i32 @do_cpuid(i32 %8, i32* %9)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %7
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1263359563
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1447775574
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 77
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  br label %30

30:                                               ; preds = %26, %22, %18, %14, %7
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = load i32, i32* %1, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vm_cpuids, align 8
  %39 = call i32 @nitems(%struct.TYPE_3__* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vm_cpuids, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @strncmp(i8* %43, i32 %49, i32 12)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vm_cpuids, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* @vm_guest, align 8
  br label %63

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %36

63:                                               ; preds = %52, %36
  %64 = load i64, i64* @vm_guest, align 8
  %65 = load i64, i64* @VM_GUEST_VM, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %1, align 4
  %69 = icmp eq i32 %68, 1073741824
  br i1 %69, label %70, label %87

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %1, align 4
  store i32 %71, i32* @hv_base, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  store i32 %73, i32* @hv_high, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* bitcast (i8** @hv_vendor to i32*), align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* getelementptr inbounds (i32, i32* bitcast (i8** @hv_vendor to i32*), i64 1), align 4
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* getelementptr inbounds (i32, i32* bitcast (i8** @hv_vendor to i32*), i64 2), align 8
  %80 = load i8*, i8** @hv_vendor, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 12
  store i8 0, i8* %81, align 1
  %82 = load i64, i64* @vm_guest, align 8
  %83 = load i64, i64* @VM_GUEST_VM, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %92

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %30
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, 256
  store i32 %91, i32* %1, align 4
  br label %4

92:                                               ; preds = %85, %4
  ret void
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
