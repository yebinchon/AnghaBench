; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_irq.c_pirq_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_irq.c_pirq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pirq = type { i32, i64, i32 }
%struct.vmctx = type { i32 }

@pirqs = common dso_local global %struct.pirq* null, align 8
@PIRQ_DIS = common dso_local global i32 0, align 4
@PIRQ_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pirq_write(%struct.vmctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pirq*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pirq*, %struct.pirq** @pirqs, align 8
  %13 = call i32 @nitems(%struct.pirq* %12)
  %14 = icmp sle i32 %11, %13
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i1 [ false, %3 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.pirq*, %struct.pirq** @pirqs, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pirq, %struct.pirq* %19, i64 %22
  store %struct.pirq* %23, %struct.pirq** %7, align 8
  %24 = load %struct.pirq*, %struct.pirq** %7, align 8
  %25 = getelementptr inbounds %struct.pirq, %struct.pirq* %24, i32 0, i32 2
  %26 = call i32 @pthread_mutex_lock(i32* %25)
  %27 = load %struct.pirq*, %struct.pirq** %7, align 8
  %28 = getelementptr inbounds %struct.pirq, %struct.pirq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PIRQ_DIS, align 4
  %32 = load i32, i32* @PIRQ_IRQ, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %15
  %37 = load %struct.pirq*, %struct.pirq** %7, align 8
  %38 = getelementptr inbounds %struct.pirq, %struct.pirq* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.pirq*, %struct.pirq** %7, align 8
  %43 = getelementptr inbounds %struct.pirq, %struct.pirq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @pirq_valid_irq(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %49 = load %struct.pirq*, %struct.pirq** %7, align 8
  %50 = getelementptr inbounds %struct.pirq, %struct.pirq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PIRQ_IRQ, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @vm_isa_deassert_irq(%struct.vmctx* %48, i32 %53, i32 -1)
  br label %55

55:                                               ; preds = %47, %41, %36
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @PIRQ_DIS, align 4
  %58 = load i32, i32* @PIRQ_IRQ, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = load %struct.pirq*, %struct.pirq** %7, align 8
  %62 = getelementptr inbounds %struct.pirq, %struct.pirq* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pirq*, %struct.pirq** %7, align 8
  %64 = getelementptr inbounds %struct.pirq, %struct.pirq* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %55
  %68 = load %struct.pirq*, %struct.pirq** %7, align 8
  %69 = getelementptr inbounds %struct.pirq, %struct.pirq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @pirq_valid_irq(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %75 = load %struct.pirq*, %struct.pirq** %7, align 8
  %76 = getelementptr inbounds %struct.pirq, %struct.pirq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PIRQ_IRQ, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @vm_isa_assert_irq(%struct.vmctx* %74, i32 %79, i32 -1)
  br label %81

81:                                               ; preds = %73, %67, %55
  br label %82

82:                                               ; preds = %81, %15
  %83 = load %struct.pirq*, %struct.pirq** %7, align 8
  %84 = getelementptr inbounds %struct.pirq, %struct.pirq* %83, i32 0, i32 2
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nitems(%struct.pirq*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pirq_valid_irq(i32) #1

declare dso_local i32 @vm_isa_deassert_irq(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @vm_isa_assert_irq(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
