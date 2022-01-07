; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_destroy1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_destroy1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32*, i32, i32 }

@bt_seglist = common dso_local global i32 0, align 4
@M_VMEM = common dso_local global i32 0, align 4
@vmem_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @vmem_destroy1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmem_destroy1(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = call i32 @qc_destroy(%struct.TYPE_10__* %4)
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @VMEM_LOCK(%struct.TYPE_10__* %6)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load i32, i32* @bt_seglist, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %15, i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %25, %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = call i32* @TAILQ_FIRST(i32* %22)
  store i32* %23, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @bt_remseg(%struct.TYPE_10__* %26, i32* %27)
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @M_VMEM, align 4
  %47 = call i32 @free(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %34, %29
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = call i32 @bt_freetrim(%struct.TYPE_10__* %49, i32 0)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = call i32 @VMEM_CONDVAR_DESTROY(%struct.TYPE_10__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = call i32 @VMEM_LOCK_DESTROY(%struct.TYPE_10__* %53)
  %55 = load i32, i32* @vmem_zone, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = call i32 @uma_zfree(i32 %55, %struct.TYPE_10__* %56)
  ret void
}

declare dso_local i32 @qc_destroy(%struct.TYPE_10__*) #1

declare dso_local i32 @VMEM_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, i32*, i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @bt_remseg(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bt_freetrim(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @VMEM_CONDVAR_DESTROY(%struct.TYPE_10__*) #1

declare dso_local i32 @VMEM_LOCK_DESTROY(%struct.TYPE_10__*) #1

declare dso_local i32 @uma_zfree(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
