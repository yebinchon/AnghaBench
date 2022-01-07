; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_user_ldt_deref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_user_ldt_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_ldt = type { i64, i32, i32 }

@dt_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@M_SUBPROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_ldt_deref(%struct.proc_ldt* %0) #0 {
  %2 = alloca %struct.proc_ldt*, align 8
  store %struct.proc_ldt* %0, %struct.proc_ldt** %2, align 8
  %3 = load i32, i32* @MA_OWNED, align 4
  %4 = call i32 @mtx_assert(i32* @dt_lock, i32 %3)
  %5 = load %struct.proc_ldt*, %struct.proc_ldt** %2, align 8
  %6 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %12 = load %struct.proc_ldt*, %struct.proc_ldt** %2, align 8
  %13 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.proc_ldt*, %struct.proc_ldt** %2, align 8
  %16 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @pmap_trm_free(i32 %14, i32 %20)
  %22 = load %struct.proc_ldt*, %struct.proc_ldt** %2, align 8
  %23 = load i32, i32* @M_SUBPROC, align 4
  %24 = call i32 @free(%struct.proc_ldt* %22, i32 %23)
  br label %27

25:                                               ; preds = %1
  %26 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  br label %27

27:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @pmap_trm_free(i32, i32) #1

declare dso_local i32 @free(%struct.proc_ldt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
