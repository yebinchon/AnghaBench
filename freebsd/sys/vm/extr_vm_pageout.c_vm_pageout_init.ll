; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vm_domain = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vm_pageout_page_count = common dso_local global i32 0, align 4
@vm_ndomains = common dso_local global i32 0, align 4
@vm_pageout_update_period = common dso_local global i32 0, align 4
@vm_page_max_user_wired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_pageout_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_domain*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  %5 = icmp slt i32 %4, 2000
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 8, i32* @vm_pageout_page_count, align 4
  br label %7

7:                                                ; preds = %6, %0
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %73, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @vm_ndomains, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %76

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @vm_pageout_init_domain(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.vm_domain* @VM_DOMAIN(i32 %15)
  store %struct.vm_domain* %16, %struct.vm_domain** %3, align 8
  %17 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %18 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 7), align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 7), align 4
  %24 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %25 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 6), align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 6), align 4
  %31 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %32 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 5), align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 5), align 4
  %38 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %39 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 4), align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 4), align 4
  %45 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %46 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 3), align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 3), align 4
  %52 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %53 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 2), align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 2), align 4
  %59 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %60 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 1), align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 1), align 4
  %66 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %67 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %12
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %8

76:                                               ; preds = %8
  %77 = load i32, i32* @vm_pageout_update_period, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 600, i32* @vm_pageout_update_period, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* @vm_page_max_user_wired, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %1, align 4
  %85 = sdiv i32 %84, 3
  store i32 %85, i32* @vm_page_max_user_wired, align 4
  br label %86

86:                                               ; preds = %83, %80
  ret void
}

declare dso_local i32 @vm_pageout_init_domain(i32) #1

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
