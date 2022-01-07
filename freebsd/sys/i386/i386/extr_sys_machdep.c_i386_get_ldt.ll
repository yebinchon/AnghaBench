; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_get_ldt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_get_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.descriptor = type { i32 }
%struct.thread = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i32, i64 }
%struct.i386_ldt_args = type { i32, i32, i64 }

@MAX_LD = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@dt_lock = common dso_local global i32 0, align 4
@NLDT = common dso_local global i32 0, align 4
@ldt = common dso_local global %union.descriptor* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_get_ldt(%struct.thread* %0, %struct.i386_ldt_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.i386_ldt_args*, align 8
  %5 = alloca %struct.proc_ldt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.i386_ldt_args* %1, %struct.i386_ldt_args** %4, align 8
  %10 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %4, align 8
  %11 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX_LD, align 4
  %14 = call i32 @min(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @M_TEMP, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = call i8* @malloc(i32 %18, i32 %19, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.proc_ldt*, %struct.proc_ldt** %27, align 8
  store %struct.proc_ldt* %28, %struct.proc_ldt** %5, align 8
  %29 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %30 = icmp ne %struct.proc_ldt* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %33 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @NLDT, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %34, %31 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %4, align 8
  %40 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %80

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %4, align 8
  %49 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = call i32 @min(i32 %46, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %54 = icmp ne %struct.proc_ldt* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %57 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %union.descriptor*
  %60 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %4, align 8
  %61 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %union.descriptor, %union.descriptor* %59, i64 %63
  br label %72

65:                                               ; preds = %45
  %66 = load %union.descriptor*, %union.descriptor** @ldt, align 8
  %67 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %4, align 8
  %68 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %union.descriptor, %union.descriptor* %66, i64 %70
  br label %72

72:                                               ; preds = %65, %55
  %73 = phi %union.descriptor* [ %64, %55 ], [ %71, %65 ]
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @bcopy(%union.descriptor* %73, i8* %74, i32 %78)
  br label %80

80:                                               ; preds = %72, %44
  %81 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %4, align 8
  %84 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32 @copyout(i8* %82, i64 %85, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.thread*, %struct.thread** %3, align 8
  %96 = getelementptr inbounds %struct.thread, %struct.thread* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %80
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @M_TEMP, align 4
  %102 = call i32 @free(i8* %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @bcopy(%union.descriptor*, i8*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @copyout(i8*, i64, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
