; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_note_procstat_vmmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_note_procstat_vmmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.proc = type { i32 }

@coredump_pack_vmmapinfo = common dso_local global i64 0, align 8
@KERN_VMMAP_PACK_KINFO = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@sbuf_count_drain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sbuf*, i64*)* @note_procstat_vmmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_procstat_vmmap(i8* %0, %struct.sbuf* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64, i64* @coredump_pack_vmmapinfo, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @KERN_VMMAP_PACK_KINFO, align 4
  store i32 %14, i32* %10, align 4
  br label %16

15:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.proc*
  store %struct.proc* %18, %struct.proc** %7, align 8
  store i32 4, i32* %9, align 4
  %19 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %20 = icmp eq %struct.sbuf* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  %22 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %23 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i32 128, i32 %22)
  store %struct.sbuf* %23, %struct.sbuf** %5, align 8
  %24 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %25 = load i32, i32* @sbuf_count_drain, align 4
  %26 = call i32 @sbuf_set_drain(%struct.sbuf* %24, i32 %25, i64* %8)
  %27 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %28 = call i32 @sbuf_bcat(%struct.sbuf* %27, i32* %9, i32 4)
  %29 = load %struct.proc*, %struct.proc** %7, align 8
  %30 = call i32 @PROC_LOCK(%struct.proc* %29)
  %31 = load %struct.proc*, %struct.proc** %7, align 8
  %32 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @kern_proc_vmmap_out(%struct.proc* %31, %struct.sbuf* %32, i64 -1, i32 %33)
  %35 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %36 = call i32 @sbuf_finish(%struct.sbuf* %35)
  %37 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %38 = call i32 @sbuf_delete(%struct.sbuf* %37)
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  br label %53

41:                                               ; preds = %16
  %42 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %43 = call i32 @sbuf_bcat(%struct.sbuf* %42, i32* %9, i32 4)
  %44 = load %struct.proc*, %struct.proc** %7, align 8
  %45 = call i32 @PROC_LOCK(%struct.proc* %44)
  %46 = load %struct.proc*, %struct.proc** %7, align 8
  %47 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @kern_proc_vmmap_out(%struct.proc* %46, %struct.sbuf* %47, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %21
  ret void
}

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @sbuf_set_drain(%struct.sbuf*, i32, i64*) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i32*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @kern_proc_vmmap_out(%struct.proc*, %struct.sbuf*, i64, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
