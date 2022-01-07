; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_user_ldt_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_user_ldt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.proc_ldt = type { i32, i32, i64, i32, i64 }
%struct.mdproc = type { %struct.proc_ldt* }

@dt_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@M_SUBPROC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@gdt_segs = common dso_local global %struct.TYPE_3__* null, align 8
@GUSERLDT_SEL = common dso_local global i64 0, align 8
@ldt = common dso_local global i64 0, align 8
@NLDT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_ldt* @user_ldt_alloc(%struct.mdproc* %0, i32 %1) #0 {
  %3 = alloca %struct.mdproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_ldt*, align 8
  %6 = alloca %struct.proc_ldt*, align 8
  store %struct.mdproc* %0, %struct.mdproc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* @dt_lock, i32 %7)
  %9 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %10 = load i32, i32* @M_SUBPROC, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call %struct.proc_ldt* @malloc(i32 32, i32 %10, i32 %11)
  store %struct.proc_ldt* %12, %struct.proc_ldt** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @NEW_MAX_LD(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %16 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @pmap_trm_alloc(i32 %20, i32 %23)
  %25 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %26 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %28 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %30 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %32 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %33 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdt_segs, align 8
  %37 = load i64, i64* @GUSERLDT_SEL, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = sub i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdt_segs, align 8
  %46 = load i64, i64* @GUSERLDT_SEL, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdt_segs, align 8
  %50 = load i64, i64* @GUSERLDT_SEL, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %53 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %52, i32 0, i32 3
  %54 = call i32 @ssdtosd(%struct.TYPE_3__* %51, i32* %53)
  %55 = load %struct.mdproc*, %struct.mdproc** %3, align 8
  %56 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %55, i32 0, i32 0
  %57 = load %struct.proc_ldt*, %struct.proc_ldt** %56, align 8
  store %struct.proc_ldt* %57, %struct.proc_ldt** %5, align 8
  %58 = icmp ne %struct.proc_ldt* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %62 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %67 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %71 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %74 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @bcopy(i64 %72, i64 %75, i32 %79)
  br label %91

81:                                               ; preds = %2
  %82 = load i64, i64* @ldt, align 8
  %83 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %84 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @NLDT, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @bcopy(i64 %82, i64 %85, i32 %89)
  br label %91

91:                                               ; preds = %81, %69
  %92 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  ret %struct.proc_ldt* %92
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local %struct.proc_ldt* @malloc(i32, i32, i32) #1

declare dso_local i32 @NEW_MAX_LD(i32) #1

declare dso_local i64 @pmap_trm_alloc(i32, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @ssdtosd(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
