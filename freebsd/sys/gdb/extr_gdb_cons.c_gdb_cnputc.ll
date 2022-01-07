; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_cons.c_gdb_cnputc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_cons.c_gdb_cnputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { %struct.gdbcons* }
%struct.gdbcons = type { i64, i32*, i32 }

@gdbcons_enable = common dso_local global i64 0, align 8
@gdb_cur = common dso_local global i32* null, align 8
@gdb_listening = common dso_local global i64 0, align 8
@calloutok = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*, i32)* @gdb_cnputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_cnputc(%struct.consdev* %0, i32 %1) #0 {
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbcons*, align 8
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @gdbcons_enable, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %2
  %9 = load i32*, i32** @gdb_cur, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %65

11:                                               ; preds = %8
  %12 = load i64, i64* @gdb_listening, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = load %struct.consdev*, %struct.consdev** %3, align 8
  %16 = getelementptr inbounds %struct.consdev, %struct.consdev* %15, i32 0, i32 0
  %17 = load %struct.gdbcons*, %struct.gdbcons** %16, align 8
  store %struct.gdbcons* %17, %struct.gdbcons** %5, align 8
  %18 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %19 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load i64, i64* @calloutok, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %27 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %26, i32 0, i32 2
  %28 = call i32 @callout_stop(i32* %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %31 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %36 = call i32 @gdb_cnflush(%struct.gdbcons* %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %41 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %44 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %39, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %52 = call i32 @gdb_cnflush(%struct.gdbcons* %51)
  br label %64

53:                                               ; preds = %38
  %54 = load i64, i64* @calloutok, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %58 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %57, i32 0, i32 2
  %59 = load i32, i32* @hz, align 4
  %60 = sdiv i32 %59, 4
  %61 = load %struct.gdbcons*, %struct.gdbcons** %5, align 8
  %62 = call i32 @callout_reset(i32* %58, i32 %60, i32 (%struct.gdbcons*)* @gdb_cnflush, %struct.gdbcons* %61)
  br label %63

63:                                               ; preds = %56, %53
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %11, %8, %2
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @gdb_cnflush(%struct.gdbcons*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32 (%struct.gdbcons*)*, %struct.gdbcons*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
