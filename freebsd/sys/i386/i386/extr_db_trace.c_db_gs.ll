; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_gs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_gs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.db_variable = type { i32 }
%struct.trapframe_vm86 = type { i32 }

@kdb_frame = common dso_local global %struct.TYPE_2__* null, align 8
@PSL_VM = common dso_local global i32 0, align 4
@DB_VAR_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_variable*, i32*, i32)* @db_gs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_gs(%struct.db_variable* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_variable*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trapframe_vm86*, align 8
  store %struct.db_variable* %0, %struct.db_variable** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PSL_VM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %20 = bitcast %struct.TYPE_2__* %19 to i8*
  %21 = bitcast i8* %20 to %struct.trapframe_vm86*
  store %struct.trapframe_vm86* %21, %struct.trapframe_vm86** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DB_VAR_GET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.trapframe_vm86*, %struct.trapframe_vm86** %8, align 8
  %27 = getelementptr inbounds %struct.trapframe_vm86, %struct.trapframe_vm86* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.trapframe_vm86*, %struct.trapframe_vm86** %8, align 8
  %34 = getelementptr inbounds %struct.trapframe_vm86, %struct.trapframe_vm86* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  store i32 1, i32* %4, align 4
  br label %48

36:                                               ; preds = %11, %3
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DB_VAR_GET, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i32 (...) @rgs()
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @load_gs(i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @rgs(...) #1

declare dso_local i32 @load_gs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
