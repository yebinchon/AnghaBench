; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_getauxv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_proc_getauxv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }
%struct.sbuf = type { i32 }

@PROC_AUX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_getauxv(%struct.thread* %0, %struct.proc* %1, %struct.sbuf* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store %struct.sbuf* %2, %struct.sbuf** %6, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = load %struct.proc*, %struct.proc** %5, align 8
  %13 = load i32, i32* @PROC_AUX, align 4
  %14 = call i32 @get_proc_vector(%struct.thread* %11, %struct.proc* %12, i8*** %9, i64* %7, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %18, 4
  store i64 %19, i64* %8, align 8
  %20 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %21 = load i8**, i8*** %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @sbuf_bcat(%struct.sbuf* %20, i8** %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i8**, i8*** %9, align 8
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = call i32 @free(i8** %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

declare dso_local i32 @get_proc_vector(%struct.thread*, %struct.proc*, i8***, i64*, i32) #1

declare dso_local i64 @sbuf_bcat(%struct.sbuf*, i8**, i64) #1

declare dso_local i32 @free(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
