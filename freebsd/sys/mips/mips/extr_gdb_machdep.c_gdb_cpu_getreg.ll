; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_gdb_machdep.c_gdb_cpu_getreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_gdb_machdep.c_gdb_cpu_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@kdb_thread = common dso_local global i64 0, align 8
@curthread = common dso_local global i64 0, align 8
@kdb_frame = common dso_local global %struct.TYPE_4__* null, align 8
@kdb_thrctx = common dso_local global %struct.TYPE_3__* null, align 8
@PCB_REG_S0 = common dso_local global i32 0, align 4
@PCB_REG_GP = common dso_local global i64 0, align 8
@PCB_REG_SP = common dso_local global i64 0, align 8
@PCB_REG_S8 = common dso_local global i64 0, align 8
@PCB_REG_RA = common dso_local global i64 0, align 8
@PCB_REG_PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gdb_cpu_getreg(i32 %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @gdb_cpu_regsz(i32 %7)
  %9 = load i64*, i64** %5, align 8
  store i64 %8, i64* %9, align 8
  %10 = load i64, i64* @kdb_thread, align 8
  %11 = load i64, i64* @curthread, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kdb_frame, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %17, i64 %19
  store i8* %20, i8** %3, align 8
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %63 [
    i32 16, label %23
    i32 17, label %23
    i32 18, label %23
    i32 19, label %23
    i32 20, label %23
    i32 21, label %23
    i32 22, label %23
    i32 23, label %23
    i32 28, label %33
    i32 29, label %39
    i32 30, label %45
    i32 31, label %51
    i32 37, label %57
  ]

23:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_thrctx, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @PCB_REG_S0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 16
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  store i8* %32, i8** %3, align 8
  br label %64

33:                                               ; preds = %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_thrctx, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* @PCB_REG_GP, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %3, align 8
  br label %64

39:                                               ; preds = %21
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_thrctx, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* @PCB_REG_SP, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %3, align 8
  br label %64

45:                                               ; preds = %21
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_thrctx, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* @PCB_REG_S8, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %3, align 8
  br label %64

51:                                               ; preds = %21
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_thrctx, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* @PCB_REG_RA, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %3, align 8
  br label %64

57:                                               ; preds = %21
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_thrctx, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* @PCB_REG_PC, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %3, align 8
  br label %64

63:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %64

64:                                               ; preds = %63, %57, %51, %45, %39, %33, %23, %13
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i64 @gdb_cpu_regsz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
