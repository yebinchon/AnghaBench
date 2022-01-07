; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { i32 }

@curproc = common dso_local global %struct.proc* null, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@vm_oom_ratelim_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vmoomr\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@vm_ndomains = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"domain %d empty; skipping pageout\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dom%d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"starting pageout for domain %d: %d\0A\00", align 1
@vm_pageout_laundry_worker = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"laundry: dom%d\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"starting laundry for domain %d: %d\00", align 1
@uma_reclaim_worker = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"uma\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"starting uma_reclaim helper, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_pageout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %6, %struct.proc** %1, align 8
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %2, align 8
  %8 = load i32, i32* @MTX_DEF, align 4
  %9 = call i32 @mtx_init(i32* @vm_oom_ratelim_mtx, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8)
  %10 = call i32 (...) @swap_pager_swap_init()
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %62, %0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @vm_ndomains, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @VM_DOMAIN_EMPTY(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %62

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.proc*, %struct.proc** %1, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i32 (i8*)*, i8*, %struct.proc*, i32*, i32, i32, i8*, ...) @kthread_add(i32 (i8*)* @vm_pageout_worker, i8* %34, %struct.proc* %35, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* @vm_pageout_laundry_worker, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32 (i8*)*
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.proc*, %struct.proc** %1, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32 (i8*)*, i8*, %struct.proc*, i32*, i32, i32, i8*, ...) @kthread_add(i32 (i8*)* %48, i8* %51, %struct.proc* %52, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %45
  br label %62

62:                                               ; preds = %61, %25
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %11

65:                                               ; preds = %11
  %66 = load i32, i32* @uma_reclaim_worker, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i32 (i8*)*
  %69 = load %struct.proc*, %struct.proc** %1, align 8
  %70 = call i32 (i32 (i8*)*, i8*, %struct.proc*, i32*, i32, i32, i8*, ...) @kthread_add(i32 (i8*)* %68, i8* null, %struct.proc* %69, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4
  %75 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.thread*, %struct.thread** %2, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @vm_pageout_worker(i8* %84)
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @swap_pager_swap_init(...) #1

declare dso_local i64 @VM_DOMAIN_EMPTY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @kthread_add(i32 (i8*)*, i8*, %struct.proc*, i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @vm_pageout_worker(i8*) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
