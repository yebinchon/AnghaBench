; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i64, %struct.procdesc*, i32, i32 }
%struct.procdesc = type { i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"procdesc_exit: p_procdesc NULL\00", align 1
@PDF_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"procdesc_exit: closed && parent not reaper\00", align 1
@PDF_EXITED = common dso_local global i32 0, align 4
@PDF_SELECTED = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procdesc_exit(%struct.proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.procdesc*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  %5 = load i32, i32* @SA_XLOCKED, align 4
  %6 = call i32 @sx_assert(i32* @proctree_lock, i32 %5)
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %7, i32 %8)
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 2
  %12 = load %struct.procdesc*, %struct.procdesc** %11, align 8
  %13 = icmp ne %struct.procdesc* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.proc*, %struct.proc** %3, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 2
  %18 = load %struct.procdesc*, %struct.procdesc** %17, align 8
  store %struct.procdesc* %18, %struct.procdesc** %4, align 8
  %19 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %20 = call i32 @PROCDESC_LOCK(%struct.procdesc* %19)
  %21 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %22 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PDF_CLOSED, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %1
  %28 = load %struct.proc*, %struct.proc** %3, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br label %35

35:                                               ; preds = %27, %1
  %36 = phi i1 [ true, %1 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @PDF_EXITED, align 4
  %40 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %41 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.proc*, %struct.proc** %3, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.proc*, %struct.proc** %3, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @KW_EXITCODE(i32 %46, i32 %49)
  %51 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %52 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %54 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PDF_CLOSED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %35
  %60 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %61 = call i32 @PROCDESC_UNLOCK(%struct.procdesc* %60)
  %62 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %63 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load %struct.proc*, %struct.proc** %3, align 8
  %65 = getelementptr inbounds %struct.proc, %struct.proc* %64, i32 0, i32 2
  store %struct.procdesc* null, %struct.procdesc** %65, align 8
  %66 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %67 = call i32 @procdesc_free(%struct.procdesc* %66)
  store i32 1, i32* %2, align 4
  br label %93

68:                                               ; preds = %35
  %69 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %70 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PDF_SELECTED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32, i32* @PDF_SELECTED, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %79 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %83 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %82, i32 0, i32 1
  %84 = call i32 @selwakeup(%struct.TYPE_2__* %83)
  br label %85

85:                                               ; preds = %75, %68
  %86 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %87 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* @NOTE_EXIT, align 4
  %90 = call i32 @KNOTE_LOCKED(i32* %88, i32 %89)
  %91 = load %struct.procdesc*, %struct.procdesc** %4, align 8
  %92 = call i32 @PROCDESC_UNLOCK(%struct.procdesc* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %85, %59
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROCDESC_LOCK(%struct.procdesc*) #1

declare dso_local i32 @KW_EXITCODE(i32, i32) #1

declare dso_local i32 @PROCDESC_UNLOCK(%struct.procdesc*) #1

declare dso_local i32 @procdesc_free(%struct.procdesc*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
