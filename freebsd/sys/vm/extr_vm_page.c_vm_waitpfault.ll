; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_waitpfault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_waitpfault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainset = type { i32 }

@vm_domainset_lock = common dso_local global i32 0, align 4
@vm_min_waiters = common dso_local global i32 0, align 4
@vm_min_domains = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pfault\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_waitpfault(%struct.domainset* %0, i32 %1) #0 {
  %3 = alloca %struct.domainset*, align 8
  %4 = alloca i32, align 4
  store %struct.domainset* %0, %struct.domainset** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @mtx_lock(i32* @vm_domainset_lock)
  %6 = load %struct.domainset*, %struct.domainset** %3, align 8
  %7 = getelementptr inbounds %struct.domainset, %struct.domainset* %6, i32 0, i32 0
  %8 = call i64 @vm_page_count_min_set(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @vm_min_waiters, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @vm_min_waiters, align 4
  %13 = load i32, i32* @PUSER, align 4
  %14 = load i32, i32* @PDROP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @msleep(i32* @vm_min_domains, i32* @vm_domainset_lock, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @mtx_unlock(i32* @vm_domainset_lock)
  br label %20

20:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @vm_page_count_min_set(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
