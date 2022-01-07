; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_set_ldt_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_set_ldt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mdproc }
%struct.mdproc = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i64 }
%union.descriptor = type { i32 }

@dt_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32, %union.descriptor*)* @i386_set_ldt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_set_ldt_data(%struct.thread* %0, i32 %1, i32 %2, %union.descriptor* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.descriptor*, align 8
  %9 = alloca %struct.mdproc*, align 8
  %10 = alloca %struct.proc_ldt*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.descriptor* %3, %union.descriptor** %8, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* @dt_lock, i32 %14)
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.mdproc* %19, %struct.mdproc** %9, align 8
  %20 = load %struct.mdproc*, %struct.mdproc** %9, align 8
  %21 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %20, i32 0, i32 0
  %22 = load %struct.proc_ldt*, %struct.proc_ldt** %21, align 8
  store %struct.proc_ldt* %22, %struct.proc_ldt** %10, align 8
  %23 = load %struct.proc_ldt*, %struct.proc_ldt** %10, align 8
  %24 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = load %union.descriptor*, %union.descriptor** %8, align 8
  %28 = bitcast %union.descriptor* %27 to i32*
  store i32* %28, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %46, %4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @atomic_store_rel_64(i32* %39, i32 %44)
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %29

49:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @atomic_store_rel_64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
