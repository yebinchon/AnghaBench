; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.image_params = type { i32, i64 }

@STACK_ALIGN = common dso_local global i32 0, align 4
@MIPS_SR_KSU_USER = common dso_local global i32 0, align 4
@MIPS_SR_EXL = common dso_local global i32 0, align 4
@MIPS_SR_INT_IE = common dso_local global i32 0, align 4
@MIPS_SR_INT_MASK = common dso_local global i32 0, align 4
@MDTD_FPUSED = common dso_local global i32 0, align 4
@fpcurthread = common dso_local global i32 0, align 4
@TLS_TP_OFFSET = common dso_local global i64 0, align 8
@TLS_TCB_SIZE = common dso_local global i64 0, align 8
@MIPS_SR_KX = common dso_local global i32 0, align 4
@MIPS_SR_PX = common dso_local global i32 0, align 4
@MIPS_SR_UX = common dso_local global i32 0, align 4
@SV_LP64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_setregs(%struct.thread* %0, %struct.image_params* %1, i64 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = ptrtoint %struct.TYPE_3__* %9 to i32
  %11 = call i32 @bzero(i32 %10, i32 4)
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @STACK_ALIGN, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 8
  %22 = load %struct.image_params*, %struct.image_params** %5, align 8
  %23 = getelementptr inbounds %struct.image_params, %struct.image_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, -4
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.image_params*, %struct.image_params** %5, align 8
  %31 = getelementptr inbounds %struct.image_params, %struct.image_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, -4
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* @MIPS_SR_KSU_USER, align 4
  %39 = load i32, i32* @MIPS_SR_EXL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MIPS_SR_INT_IE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 (...) @mips_rd_status()
  %44 = load i32, i32* @MIPS_SR_INT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 4
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 8
  %57 = load %struct.thread*, %struct.thread** %4, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.thread*, %struct.thread** %4, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.image_params*, %struct.image_params** %5, align 8
  %66 = getelementptr inbounds %struct.image_params, %struct.image_params* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.thread*, %struct.thread** %4, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @MDTD_FPUSED, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.thread*, %struct.thread** %4, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @fpcurthread, align 4
  %81 = call %struct.thread* @PCPU_GET(i32 %80)
  %82 = load %struct.thread*, %struct.thread** %4, align 8
  %83 = icmp eq %struct.thread* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %3
  %85 = load i32, i32* @fpcurthread, align 4
  %86 = call i32 @PCPU_SET(i32 %85, %struct.thread* null)
  br label %87

87:                                               ; preds = %84, %3
  %88 = load %struct.thread*, %struct.thread** %4, align 8
  %89 = getelementptr inbounds %struct.thread, %struct.thread* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i64, i64* @TLS_TP_OFFSET, align 8
  %92 = load i64, i64* @TLS_TCB_SIZE, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.thread*, %struct.thread** %4, align 8
  %95 = getelementptr inbounds %struct.thread, %struct.thread* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @mips_rd_status(...) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @PCPU_SET(i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
