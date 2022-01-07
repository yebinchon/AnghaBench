; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_mightbe_oom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_mightbe_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i8* }

@vm_pageout_oom_seq = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@vm_pageout_oom_vote = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@vm_ndomains = common dso_local global i32 0, align 4
@VM_OOM_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_domain*, i32, i32)* @vm_pageout_mightbe_oom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_mightbe_oom(%struct.vm_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vm_domain* %0, %struct.vm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %3
  %15 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %16 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %22

17:                                               ; preds = %10
  %18 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %19 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %17, %14
  %23 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %24 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @vm_pageout_oom_seq, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %30 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %36 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = call i32 @atomic_subtract_int(i32* @vm_pageout_oom_vote, i32 1)
  br label %38

38:                                               ; preds = %33, %28
  br label %64

39:                                               ; preds = %22
  %40 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %41 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %43 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %64

47:                                               ; preds = %39
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %50 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = call i32 @atomic_fetchadd_int(i32* @vm_pageout_oom_vote, i32 1)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @vm_ndomains, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %64

57:                                               ; preds = %47
  %58 = load i32, i32* @VM_OOM_MEM, align 4
  %59 = call i32 @vm_pageout_oom(i32 %58)
  %60 = load i8*, i8** @FALSE, align 8
  %61 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %62 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = call i32 @atomic_subtract_int(i32* @vm_pageout_oom_vote, i32 1)
  br label %64

64:                                               ; preds = %57, %56, %46, %38
  ret void
}

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @vm_pageout_oom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
