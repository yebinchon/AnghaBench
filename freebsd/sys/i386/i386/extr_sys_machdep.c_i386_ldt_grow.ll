; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_ldt_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_ldt_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mdproc, i32 }
%struct.mdproc = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i32, i64, i32 }

@dt_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@MAX_LD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLDT = common dso_local global i32 0, align 4
@NULL_LDT_BASE = common dso_local global i64 0, align 8
@M_SUBPROC = common dso_local global i32 0, align 4
@set_user_ldt_rv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32)* @i386_ldt_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_ldt_grow(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdproc*, align 8
  %7 = alloca %struct.proc_ldt*, align 8
  %8 = alloca %struct.proc_ldt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* @dt_lock, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAX_LD, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %3, align 4
  br label %129

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NLDT, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @NLDT, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.thread*, %struct.thread** %4, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.mdproc* %30, %struct.mdproc** %6, align 8
  %31 = load i64, i64* @NULL_LDT_BASE, align 8
  store i64 %31, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %32 = load %struct.mdproc*, %struct.mdproc** %6, align 8
  %33 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %32, i32 0, i32 0
  %34 = load %struct.proc_ldt*, %struct.proc_ldt** %33, align 8
  store %struct.proc_ldt* %34, %struct.proc_ldt** %8, align 8
  %35 = icmp eq %struct.proc_ldt* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %39 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %128

42:                                               ; preds = %36, %26
  %43 = load %struct.mdproc*, %struct.mdproc** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.proc_ldt* @user_ldt_alloc(%struct.mdproc* %43, i32 %44)
  store %struct.proc_ldt* %45, %struct.proc_ldt** %7, align 8
  %46 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %47 = icmp eq %struct.proc_ldt* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %3, align 4
  br label %129

50:                                               ; preds = %42
  %51 = load %struct.mdproc*, %struct.mdproc** %6, align 8
  %52 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %51, i32 0, i32 0
  %53 = load %struct.proc_ldt*, %struct.proc_ldt** %52, align 8
  store %struct.proc_ldt* %53, %struct.proc_ldt** %8, align 8
  %54 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %55 = icmp ne %struct.proc_ldt* %54, null
  br i1 %55, label %56, label %102

56:                                               ; preds = %50
  %57 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %58 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %61 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sle i32 %59, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %56
  %65 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %66 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %67 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %70 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @pmap_trm_free(i64 %68, i32 %74)
  %76 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %77 = load i32, i32* @M_SUBPROC, align 4
  %78 = call i32 @free(%struct.proc_ldt* %76, i32 %77)
  %79 = call i32 @mtx_lock_spin(i32* @dt_lock)
  store i32 0, i32* %3, align 4
  br label %129

80:                                               ; preds = %56
  %81 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %82 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %85 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %10, align 4
  %87 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %88 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %91 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %93 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %96 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %98 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  %101 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %106

102:                                              ; preds = %50
  %103 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  store %struct.proc_ldt* %103, %struct.proc_ldt** %8, align 8
  %104 = load %struct.mdproc*, %struct.mdproc** %6, align 8
  %105 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %104, i32 0, i32 0
  store %struct.proc_ldt* %103, %struct.proc_ldt** %105, align 8
  br label %106

106:                                              ; preds = %102, %80
  %107 = load %struct.thread*, %struct.thread** %4, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @set_user_ldt_locked(%struct.mdproc* %110)
  %112 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @NULL_LDT_BASE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %106
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32 @pmap_trm_free(i64 %117, i32 %121)
  %123 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %124 = load i32, i32* @M_SUBPROC, align 4
  %125 = call i32 @free(%struct.proc_ldt* %123, i32 %124)
  br label %126

126:                                              ; preds = %116, %106
  %127 = call i32 @mtx_lock_spin(i32* @dt_lock)
  br label %128

128:                                              ; preds = %126, %36
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %64, %48, %16
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.proc_ldt* @user_ldt_alloc(%struct.mdproc*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @pmap_trm_free(i64, i32) #1

declare dso_local i32 @free(%struct.proc_ldt*, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @set_user_ldt_locked(%struct.mdproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
