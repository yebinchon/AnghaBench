; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_putnotes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_putnotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@errno = common dso_local global i64 0, align 8
@PT_GETNUMLWPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PT_GETNUMLWPS\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@PT_GETLWPLIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"PT_GETLWPLIST\00", align 1
@NT_PRPSINFO = common dso_local global i32 0, align 4
@elf_note_prpsinfo = common dso_local global i32 0, align 4
@NT_PRSTATUS = common dso_local global i32 0, align 4
@elf_note_prstatus = common dso_local global i32 0, align 4
@NT_FPREGSET = common dso_local global i32 0, align 4
@elf_note_fpregset = common dso_local global i32 0, align 4
@NT_THRMISC = common dso_local global i32 0, align 4
@elf_note_thrmisc = common dso_local global i32 0, align 4
@NT_PTLWPINFO = common dso_local global i32 0, align 4
@elf_note_ptlwpinfo = common dso_local global i32 0, align 4
@NT_X86_XSTATE = common dso_local global i32 0, align 4
@elf_note_x86_xstate = common dso_local global i32 0, align 4
@NT_PROCSTAT_PROC = common dso_local global i32 0, align 4
@elf_note_procstat_proc = common dso_local global i32 0, align 4
@NT_PROCSTAT_FILES = common dso_local global i32 0, align 4
@elf_note_procstat_files = common dso_local global i32 0, align 4
@NT_PROCSTAT_VMMAP = common dso_local global i32 0, align 4
@elf_note_procstat_vmmap = common dso_local global i32 0, align 4
@NT_PROCSTAT_GROUPS = common dso_local global i32 0, align 4
@elf_note_procstat_groups = common dso_local global i32 0, align 4
@NT_PROCSTAT_UMASK = common dso_local global i32 0, align 4
@elf_note_procstat_umask = common dso_local global i32 0, align 4
@NT_PROCSTAT_RLIMIT = common dso_local global i32 0, align 4
@elf_note_procstat_rlimit = common dso_local global i32 0, align 4
@NT_PROCSTAT_OSREL = common dso_local global i32 0, align 4
@elf_note_procstat_osrel = common dso_local global i32 0, align 4
@NT_PROCSTAT_PSSTRINGS = common dso_local global i32 0, align 4
@elf_note_procstat_psstrings = common dso_local global i32 0, align 4
@NT_PROCSTAT_AUXV = common dso_local global i32 0, align 4
@elf_note_procstat_auxv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"sbuf_end_section\00", align 1
@NT_ARM_VFP = common dso_local global i32 0, align 4
@NT_PPC_VMX = common dso_local global i32 0, align 4
@NT_PPC_VSX = common dso_local global i32 0, align 4
@elf_note_arm_vfp = common dso_local global i32 0, align 4
@elf_note_powerpc_vmx = common dso_local global i32 0, align 4
@elf_note_powerpc_vsx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sbuf*, i64*)* @elf_putnotes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_putnotes(i32 %0, %struct.sbuf* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* @errno, align 8
  %12 = load i32, i32* @PT_GETNUMLWPS, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ptrace(i32 %12, i32 %13, i8* null, i64 0)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* @errno, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* %8, align 8
  %21 = mul i64 %20, 4
  %22 = call i32* @malloc(i64 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  store i64 0, i64* @errno, align 8
  %28 = load i32, i32* @PT_GETLWPLIST, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @ptrace(i32 %28, i32 %29, i8* %31, i64 %32)
  %34 = load i64, i64* @errno, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %40 = call i32 @sbuf_start_section(%struct.sbuf* %39, i64* %9)
  %41 = load i32, i32* @NT_PRPSINFO, align 4
  %42 = load i32, i32* @elf_note_prpsinfo, align 4
  %43 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %44 = call i32 @elf_putnote(i32 %41, i32 %42, i32* %4, %struct.sbuf* %43)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %91, %38
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %45
  %51 = load i32, i32* @NT_PRSTATUS, align 4
  %52 = load i32, i32* @elf_note_prstatus, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %58 = call i32 @elf_putnote(i32 %51, i32 %52, i32* %56, %struct.sbuf* %57)
  %59 = load i32, i32* @NT_FPREGSET, align 4
  %60 = load i32, i32* @elf_note_fpregset, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %66 = call i32 @elf_putnote(i32 %59, i32 %60, i32* %64, %struct.sbuf* %65)
  %67 = load i32, i32* @NT_THRMISC, align 4
  %68 = load i32, i32* @elf_note_thrmisc, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %74 = call i32 @elf_putnote(i32 %67, i32 %68, i32* %72, %struct.sbuf* %73)
  %75 = load i32, i32* @NT_PTLWPINFO, align 4
  %76 = load i32, i32* @elf_note_ptlwpinfo, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %82 = call i32 @elf_putnote(i32 %75, i32 %76, i32* %80, %struct.sbuf* %81)
  %83 = load i32, i32* @NT_X86_XSTATE, align 4
  %84 = load i32, i32* @elf_note_x86_xstate, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %90 = call i32 @elf_putnote(i32 %83, i32 %84, i32* %88, %struct.sbuf* %89)
  br label %91

91:                                               ; preds = %50
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %45

94:                                               ; preds = %45
  %95 = load i32, i32* @NT_PROCSTAT_PROC, align 4
  %96 = load i32, i32* @elf_note_procstat_proc, align 4
  %97 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %98 = call i32 @elf_putnote(i32 %95, i32 %96, i32* %4, %struct.sbuf* %97)
  %99 = load i32, i32* @NT_PROCSTAT_FILES, align 4
  %100 = load i32, i32* @elf_note_procstat_files, align 4
  %101 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %102 = call i32 @elf_putnote(i32 %99, i32 %100, i32* %4, %struct.sbuf* %101)
  %103 = load i32, i32* @NT_PROCSTAT_VMMAP, align 4
  %104 = load i32, i32* @elf_note_procstat_vmmap, align 4
  %105 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %106 = call i32 @elf_putnote(i32 %103, i32 %104, i32* %4, %struct.sbuf* %105)
  %107 = load i32, i32* @NT_PROCSTAT_GROUPS, align 4
  %108 = load i32, i32* @elf_note_procstat_groups, align 4
  %109 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %110 = call i32 @elf_putnote(i32 %107, i32 %108, i32* %4, %struct.sbuf* %109)
  %111 = load i32, i32* @NT_PROCSTAT_UMASK, align 4
  %112 = load i32, i32* @elf_note_procstat_umask, align 4
  %113 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %114 = call i32 @elf_putnote(i32 %111, i32 %112, i32* %4, %struct.sbuf* %113)
  %115 = load i32, i32* @NT_PROCSTAT_RLIMIT, align 4
  %116 = load i32, i32* @elf_note_procstat_rlimit, align 4
  %117 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %118 = call i32 @elf_putnote(i32 %115, i32 %116, i32* %4, %struct.sbuf* %117)
  %119 = load i32, i32* @NT_PROCSTAT_OSREL, align 4
  %120 = load i32, i32* @elf_note_procstat_osrel, align 4
  %121 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %122 = call i32 @elf_putnote(i32 %119, i32 %120, i32* %4, %struct.sbuf* %121)
  %123 = load i32, i32* @NT_PROCSTAT_PSSTRINGS, align 4
  %124 = load i32, i32* @elf_note_procstat_psstrings, align 4
  %125 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %126 = call i32 @elf_putnote(i32 %123, i32 %124, i32* %4, %struct.sbuf* %125)
  %127 = load i32, i32* @NT_PROCSTAT_AUXV, align 4
  %128 = load i32, i32* @elf_note_procstat_auxv, align 4
  %129 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %130 = call i32 @elf_putnote(i32 %127, i32 %128, i32* %4, %struct.sbuf* %129)
  %131 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @sbuf_end_section(%struct.sbuf* %131, i64 %132, i32 1, i32 0)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %138

136:                                              ; preds = %94
  %137 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %94
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @free(i32* %139)
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64*, i64** %6, align 8
  store i64 %142, i64* %143, align 8
  ret void
}

declare dso_local i64 @ptrace(i32, i32, i8*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @sbuf_start_section(%struct.sbuf*, i64*) #1

declare dso_local i32 @elf_putnote(i32, i32, i32*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_end_section(%struct.sbuf*, i64, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
