; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_gdb_machdep.c_gdb_cpu_setreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_gdb_machdep.c_gdb_cpu_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@kdb_thrctx = common dso_local global %struct.TYPE_3__* null, align 8
@kdb_thread = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@kdb_frame = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_cpu_setreg(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %22 [
    i32 128, label %6
  ]

6:                                                ; preds = %2
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_thrctx, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @kdb_thread, align 4
  %13 = load i32, i32* @curthread, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kdb_frame, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %15, %6
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
