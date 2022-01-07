; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_set_user_ldt_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_set_user_ldt_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mdproc = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i32 }

@dt_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@GUSERLDT_SEL = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@NGDT = common dso_local global i32 0, align 4
@gdt = common dso_local global %struct.TYPE_2__* null, align 8
@SEL_KPL = common dso_local global i32 0, align 4
@currentldt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdproc*)* @set_user_ldt_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_user_ldt_locked(%struct.mdproc* %0) #0 {
  %2 = alloca %struct.mdproc*, align 8
  %3 = alloca %struct.proc_ldt*, align 8
  %4 = alloca i32, align 4
  store %struct.mdproc* %0, %struct.mdproc** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @dt_lock, i32 %5)
  %7 = load %struct.mdproc*, %struct.mdproc** %2, align 8
  %8 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %7, i32 0, i32 0
  %9 = load %struct.proc_ldt*, %struct.proc_ldt** %8, align 8
  store %struct.proc_ldt* %9, %struct.proc_ldt** %3, align 8
  %10 = load i32, i32* @GUSERLDT_SEL, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @cpuid, align 4
  %12 = call i32 @PCPU_GET(i32 %11)
  %13 = load i32, i32* @NGDT, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.proc_ldt*, %struct.proc_ldt** %3, align 8
  %18 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdt, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* @GUSERLDT_SEL, align 4
  %26 = load i32, i32* @SEL_KPL, align 4
  %27 = call i32 @GSEL(i32 %25, i32 %26)
  %28 = call i32 @lldt(i32 %27)
  %29 = load i32, i32* @currentldt, align 4
  %30 = load i32, i32* @GUSERLDT_SEL, align 4
  %31 = load i32, i32* @SEL_KPL, align 4
  %32 = call i32 @GSEL(i32 %30, i32 %31)
  %33 = call i32 @PCPU_SET(i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @lldt(i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
