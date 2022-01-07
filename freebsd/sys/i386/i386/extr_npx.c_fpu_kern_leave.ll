; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpu_kern_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpu_kern_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i64, i32 }
%struct.fpu_kern_ctx = type { i32, i64 }

@FPU_KERN_CTX_INUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"leaving not inuse ctx\00", align 1
@FPU_KERN_CTX_DUMMY = common dso_local global i32 0, align 4
@curthread = common dso_local global i64 0, align 8
@fpcurthread = common dso_local global i32 0, align 4
@PCB_NPXUSERINITDONE = common dso_local global i32 0, align 4
@PCB_NPXINITDONE = common dso_local global i32 0, align 4
@PCB_KERNNPX = common dso_local global i32 0, align 4
@FPU_KERN_CTX_NPXINITDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unpaired fpu_kern_leave\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_kern_leave(%struct.thread* %0, %struct.fpu_kern_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fpu_kern_ctx*, align 8
  %6 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fpu_kern_ctx* %1, %struct.fpu_kern_ctx** %5, align 8
  %7 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FPU_KERN_CTX_INUSE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @FPU_KERN_CTX_INUSE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = call i64 @is_fpu_kern_thread(i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FPU_KERN_CTX_DUMMY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %110

31:                                               ; preds = %23, %2
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load %struct.pcb*, %struct.pcb** %33, align 8
  store %struct.pcb* %34, %struct.pcb** %6, align 8
  %35 = call i32 (...) @critical_enter()
  %36 = load i64, i64* @curthread, align 8
  %37 = load i32, i32* @fpcurthread, align 4
  %38 = call i64 @PCPU_GET(i32 %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 (...) @npxdrop()
  br label %42

42:                                               ; preds = %40, %31
  %43 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pcb*, %struct.pcb** %6, align 8
  %47 = getelementptr inbounds %struct.pcb, %struct.pcb* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.pcb*, %struct.pcb** %6, align 8
  %49 = getelementptr inbounds %struct.pcb, %struct.pcb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pcb*, %struct.pcb** %6, align 8
  %52 = call i64 @get_pcb_user_save_pcb(%struct.pcb* %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %42
  %55 = load %struct.pcb*, %struct.pcb** %6, align 8
  %56 = getelementptr inbounds %struct.pcb, %struct.pcb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PCB_NPXUSERINITDONE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* @PCB_NPXINITDONE, align 4
  %63 = load %struct.pcb*, %struct.pcb** %6, align 8
  %64 = getelementptr inbounds %struct.pcb, %struct.pcb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %74

67:                                               ; preds = %54
  %68 = load i32, i32* @PCB_NPXINITDONE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.pcb*, %struct.pcb** %6, align 8
  %71 = getelementptr inbounds %struct.pcb, %struct.pcb* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i32, i32* @PCB_KERNNPX, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.pcb*, %struct.pcb** %6, align 8
  %78 = getelementptr inbounds %struct.pcb, %struct.pcb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %108

81:                                               ; preds = %42
  %82 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FPU_KERN_CTX_NPXINITDONE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @PCB_NPXINITDONE, align 4
  %90 = load %struct.pcb*, %struct.pcb** %6, align 8
  %91 = getelementptr inbounds %struct.pcb, %struct.pcb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %101

94:                                               ; preds = %81
  %95 = load i32, i32* @PCB_NPXINITDONE, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.pcb*, %struct.pcb** %6, align 8
  %98 = getelementptr inbounds %struct.pcb, %struct.pcb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %88
  %102 = load %struct.pcb*, %struct.pcb** %6, align 8
  %103 = call i32 @PCB_USER_FPU(%struct.pcb* %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @KASSERT(i32 %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %74
  %109 = call i32 (...) @critical_exit()
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %30
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @is_fpu_kern_thread(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @npxdrop(...) #1

declare dso_local i64 @get_pcb_user_save_pcb(%struct.pcb*) #1

declare dso_local i32 @PCB_USER_FPU(%struct.pcb*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
