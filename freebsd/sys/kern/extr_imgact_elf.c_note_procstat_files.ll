; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_note_procstat_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_note_procstat_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i64 }
%struct.proc = type { i32 }

@coredump_pack_fileinfo = common dso_local global i64 0, align 8
@KERN_FILEDESC_PACK_KINFO = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@sbuf_count_drain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"kern_proc_filedesc_out did not respect maxlen; requested %zu, got %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sbuf*, i64*)* @note_procstat_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_procstat_files(i8* %0, %struct.sbuf* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load i64, i64* @coredump_pack_fileinfo, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @KERN_FILEDESC_PACK_KINFO, align 4
  store i32 %18, i32* %14, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.proc*
  store %struct.proc* %22, %struct.proc** %7, align 8
  store i32 4, i32* %13, align 4
  %23 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %24 = icmp eq %struct.sbuf* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  %26 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %27 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i32 128, i32 %26)
  store %struct.sbuf* %27, %struct.sbuf** %5, align 8
  %28 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %29 = load i32, i32* @sbuf_count_drain, align 4
  %30 = call i32 @sbuf_set_drain(%struct.sbuf* %28, i32 %29, i64* %8)
  %31 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %32 = call i32 @sbuf_bcat(%struct.sbuf* %31, i32* %13, i32 4)
  %33 = load %struct.proc*, %struct.proc** %7, align 8
  %34 = call i32 @PROC_LOCK(%struct.proc* %33)
  %35 = load %struct.proc*, %struct.proc** %7, align 8
  %36 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @kern_proc_filedesc_out(%struct.proc* %35, %struct.sbuf* %36, i64 -1, i32 %37)
  %39 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %40 = call i32 @sbuf_finish(%struct.sbuf* %39)
  %41 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %42 = call i32 @sbuf_delete(%struct.sbuf* %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %100

45:                                               ; preds = %20
  %46 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %47 = call i32 @sbuf_start_section(%struct.sbuf* %46, i64* %11)
  %48 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %49 = call i32 @sbuf_bcat(%struct.sbuf* %48, i32* %13, i32 4)
  %50 = load %struct.proc*, %struct.proc** %7, align 8
  %51 = call i32 @PROC_LOCK(%struct.proc* %50)
  %52 = load %struct.proc*, %struct.proc** %7, align 8
  %53 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @kern_proc_filedesc_out(%struct.proc* %52, %struct.sbuf* %53, i64 %56, i32 %57)
  %59 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i64 @sbuf_end_section(%struct.sbuf* %59, i64 %60, i32 0, i32 0)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ult i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %100

65:                                               ; preds = %45
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp ule i64 %67, %69
  %71 = zext i1 %70 to i32
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, 4
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, 4
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @KASSERT(i32 %71, i8* %77)
  store i64 0, i64* %10, align 8
  br label %79

79:                                               ; preds = %96, %65
  %80 = load i64, i64* %10, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %82, %83
  %85 = icmp ult i64 %80, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %88 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi i1 [ false, %79 ], [ %90, %86 ]
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  %94 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %95 = call i32 @sbuf_putc(%struct.sbuf* %94, i32 0)
  br label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %79

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %64, %99, %25
  ret void
}

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @sbuf_set_drain(%struct.sbuf*, i32, i64*) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i32*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @kern_proc_filedesc_out(%struct.proc*, %struct.sbuf*, i64, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @sbuf_start_section(%struct.sbuf*, i64*) #1

declare dso_local i64 @sbuf_end_section(%struct.sbuf*, i64, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
