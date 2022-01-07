; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"domain without segments\00", align 1
@ticks = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"pwait\00", align 1
@hz = common dso_local global i32 0, align 4
@VM_INACT_SCAN_RATE = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@PVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"psleep\00", align 1
@v_pdwakeups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vm_pageout_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vm_domain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.vm_domain* @VM_DOMAIN(i32 %12)
  store %struct.vm_domain* %13, %struct.vm_domain** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %14 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %15 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ticks, align 4
  %21 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %22 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %108, %1
  %24 = load i64, i64* @TRUE, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %116

26:                                               ; preds = %23
  %27 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %28 = call i32 @vm_domain_pageout_lock(%struct.vm_domain* %27)
  %29 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %30 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %29, i32 0, i32 3
  %31 = call i32 @atomic_store_int(i32* %30, i32 0)
  %32 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %33 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %34 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @vm_paging_needed(%struct.vm_domain* %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %26
  %39 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %40 = call i32 @vm_domain_pageout_unlock(%struct.vm_domain* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @hz, align 4
  %45 = load i32, i32* @VM_INACT_SCAN_RATE, align 4
  %46 = sdiv i32 %44, %45
  %47 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %66

49:                                               ; preds = %26
  %50 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %51 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %50, i32 0, i32 3
  %52 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %53 = call i32 @vm_domain_pageout_lockptr(%struct.vm_domain* %52)
  %54 = load i32, i32* @PDROP, align 4
  %55 = load i32, i32* @PVM, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @hz, align 4
  %58 = load i32, i32* @VM_INACT_SCAN_RATE, align 4
  %59 = sdiv i32 %57, %58
  %60 = call i64 @mtx_sleep(i32* %51, i32 %53, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @v_pdwakeups, align 4
  %64 = call i32 @VM_CNT_INC(i32 %63)
  br label %65

65:                                               ; preds = %62, %49
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %68 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %67, i32 0, i32 3
  %69 = call i32 @atomic_store_int(i32* %68, i32 1)
  %70 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %71 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %70, i32 0, i32 2
  %72 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %73 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @pidctrl_daemon(i32* %71, i64 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %66
  %79 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %80 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %4, align 8
  %82 = call i64 (...) @vm_pageout_lowmem()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %86 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %92 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = call i64 @min(i64 %95, i64 %97)
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %90, %84, %78
  %104 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @vm_pageout_scan_inactive(%struct.vm_domain* %104, i32 %105, i32* %5)
  store i32 %106, i32* %8, align 4
  br label %108

107:                                              ; preds = %66
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %103
  %109 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %110 = call i32 @vm_pageout_active_target(%struct.vm_domain* %109)
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %7, align 4
  %113 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @vm_pageout_scan_active(%struct.vm_domain* %113, i32 %114)
  br label %23

116:                                              ; preds = %23
  ret void
}

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_domain_pageout_lock(%struct.vm_domain*) #1

declare dso_local i32 @atomic_store_int(i32*, i32) #1

declare dso_local i64 @vm_paging_needed(%struct.vm_domain*, i64) #1

declare dso_local i32 @vm_domain_pageout_unlock(%struct.vm_domain*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @mtx_sleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @vm_domain_pageout_lockptr(%struct.vm_domain*) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @pidctrl_daemon(i32*, i64) #1

declare dso_local i64 @vm_pageout_lowmem(...) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @vm_pageout_scan_inactive(%struct.vm_domain*, i32, i32*) #1

declare dso_local i32 @vm_pageout_active_target(%struct.vm_domain*) #1

declare dso_local i32 @vm_pageout_scan_active(%struct.vm_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
