; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_machdep.c_start_all_aps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_machdep.c_start_all_aps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ap_boot_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ap boot\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@WARMBOOT_OFF = common dso_local global i64 0, align 8
@CMOS_REG = common dso_local global i32 0, align 4
@BIOS_RESET = common dso_local global i32 0, align 4
@CMOS_DATA = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@cpu_apic_ids = common dso_local global i32* null, align 8
@kstack_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@bootstacks = common dso_local global i8** null, align 8
@DPCPU_SIZE = common dso_local global i32 0, align 4
@dpcpu = common dso_local global i8* null, align 8
@WARMBOOT_TARGET = common dso_local global i32 0, align 4
@boot_address = common dso_local global i32 0, align 4
@WARMBOOT_SEG = common dso_local global i64 0, align 8
@BIOS_WARM = common dso_local global i32 0, align 4
@bootSTK = common dso_local global i8* null, align 8
@bootAP = common dso_local global i32 0, align 4
@TRAMP_STACK_SZ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ap_tramp_stack_base = common dso_local global i8* null, align 8
@TRAMP_COPYOUT_SZ = common dso_local global i32 0, align 4
@ap_copyout_buf = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"AP #%d (PHY# %d) failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"panic y/n? [y] \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bye-bye\00", align 1
@all_cpus = common dso_local global i32 0, align 4
@mp_naps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_all_aps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_all_aps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MTX_SPIN, align 4
  %6 = call i32 @mtx_init(i32* @ap_boot_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %5)
  %7 = call i32 @pmap_remap_lower(i32 1)
  %8 = call i32 (...) @install_ap_tramp()
  %9 = load i64, i64* @WARMBOOT_OFF, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @CMOS_REG, align 4
  %13 = load i32, i32* @BIOS_RESET, align 4
  %14 = call i32 @outb(i32 %12, i32 %13)
  %15 = load i32, i32* @CMOS_DATA, align 4
  %16 = call i32 @inb(i32 %15)
  store i32 %16, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %96, %0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @mp_ncpus, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = load i32*, i32** @cpu_apic_ids, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @kstack_pages, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @kmem_malloc(i32 %29, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8**, i8*** @bootstacks, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* @DPCPU_SIZE, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @kmem_malloc(i32 %39, i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** @dpcpu, align 8
  %45 = load i32, i32* @WARMBOOT_TARGET, align 4
  %46 = load i64, i64* @WARMBOOT_OFF, align 8
  %47 = inttoptr i64 %46 to i32*
  store volatile i32 %45, i32* %47, align 4
  %48 = load i32, i32* @boot_address, align 4
  %49 = ashr i32 %48, 4
  %50 = load i64, i64* @WARMBOOT_SEG, align 8
  %51 = inttoptr i64 %50 to i32*
  store volatile i32 %49, i32* %51, align 4
  %52 = load i32, i32* @CMOS_REG, align 4
  %53 = load i32, i32* @BIOS_RESET, align 4
  %54 = call i32 @outb(i32 %52, i32 %53)
  %55 = load i32, i32* @CMOS_DATA, align 4
  %56 = load i32, i32* @BIOS_WARM, align 4
  %57 = call i32 @outb(i32 %55, i32 %56)
  %58 = load i8**, i8*** @bootstacks, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @kstack_pages, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 -4
  store i8* %68, i8** @bootSTK, align 8
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* @bootAP, align 4
  %70 = load i32, i32* @TRAMP_STACK_SZ, align 4
  %71 = load i32, i32* @M_NOWAIT, align 4
  %72 = call i8* @pmap_trm_alloc(i32 %70, i32 %71)
  store i8* %72, i8** @ap_tramp_stack_base, align 8
  %73 = load i32, i32* @TRAMP_COPYOUT_SZ, align 4
  %74 = load i32, i32* @M_NOWAIT, align 4
  %75 = call i8* @pmap_trm_alloc(i32 %73, i32 %74)
  store i8* %75, i8** @ap_copyout_buf, align 8
  %76 = call i32 @CHECK_INIT(i32 99)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @start_ap(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %21
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = call i32 @CHECK_PRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %86 = call signext i8 (...) @cngetc()
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 110
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %80
  br label %92

92:                                               ; preds = %91, %21
  %93 = call i32 @CHECK_PRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @CPU_SET(i32 %94, i32* @all_cpus)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %17

99:                                               ; preds = %17
  %100 = call i32 @pmap_remap_lower(i32 0)
  %101 = load i32, i32* %2, align 4
  %102 = load i64, i64* @WARMBOOT_OFF, align 8
  %103 = inttoptr i64 %102 to i32*
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @CMOS_REG, align 4
  %105 = load i32, i32* @BIOS_RESET, align 4
  %106 = call i32 @outb(i32 %104, i32 %105)
  %107 = load i32, i32* @CMOS_DATA, align 4
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @outb(i32 %107, i32 %108)
  %110 = load i32, i32* @mp_naps, align 4
  ret i32 %110
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @pmap_remap_lower(i32) #1

declare dso_local i32 @install_ap_tramp(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @kmem_malloc(i32, i32) #1

declare dso_local i8* @pmap_trm_alloc(i32, i32) #1

declare dso_local i32 @CHECK_INIT(i32) #1

declare dso_local i32 @start_ap(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CHECK_PRINT(i8*) #1

declare dso_local signext i8 @cngetc(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
