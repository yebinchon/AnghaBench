; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Down.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)* }
%struct.TYPE_3__ = type { i32 (%struct.fsm*)*, i32 (%struct.fsm*)*, i32 (%struct.fsm*)* }

@ST_INITIAL = common dso_local global i32 0, align 4
@ST_STARTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Down(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = getelementptr inbounds %struct.fsm, %struct.fsm* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %83 [
    i32 133, label %6
    i32 132, label %10
    i32 129, label %33
    i32 128, label %56
    i32 130, label %56
    i32 135, label %56
    i32 134, label %56
    i32 131, label %60
  ]

6:                                                ; preds = %1
  %7 = load %struct.fsm*, %struct.fsm** %2, align 8
  %8 = load i32, i32* @ST_INITIAL, align 4
  %9 = call i32 @NewState(%struct.fsm* %7, i32 %8)
  br label %83

10:                                               ; preds = %1
  %11 = load %struct.fsm*, %struct.fsm** %2, align 8
  %12 = getelementptr inbounds %struct.fsm, %struct.fsm* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %14, align 8
  %16 = load %struct.fsm*, %struct.fsm** %2, align 8
  %17 = call i32 %15(%struct.fsm* %16)
  %18 = load %struct.fsm*, %struct.fsm** %2, align 8
  %19 = load i32, i32* @ST_INITIAL, align 4
  %20 = call i32 @NewState(%struct.fsm* %18, i32 %19)
  %21 = load %struct.fsm*, %struct.fsm** %2, align 8
  %22 = getelementptr inbounds %struct.fsm, %struct.fsm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %24, align 8
  %26 = load %struct.fsm*, %struct.fsm** %2, align 8
  %27 = getelementptr inbounds %struct.fsm, %struct.fsm* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fsm*, %struct.fsm** %2, align 8
  %32 = call i32 %25(i32 %30, %struct.fsm* %31)
  br label %83

33:                                               ; preds = %1
  %34 = load %struct.fsm*, %struct.fsm** %2, align 8
  %35 = load i32, i32* @ST_STARTING, align 4
  %36 = call i32 @NewState(%struct.fsm* %34, i32 %35)
  %37 = load %struct.fsm*, %struct.fsm** %2, align 8
  %38 = getelementptr inbounds %struct.fsm, %struct.fsm* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %40, align 8
  %42 = load %struct.fsm*, %struct.fsm** %2, align 8
  %43 = call i32 %41(%struct.fsm* %42)
  %44 = load %struct.fsm*, %struct.fsm** %2, align 8
  %45 = getelementptr inbounds %struct.fsm, %struct.fsm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %47, align 8
  %49 = load %struct.fsm*, %struct.fsm** %2, align 8
  %50 = getelementptr inbounds %struct.fsm, %struct.fsm* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fsm*, %struct.fsm** %2, align 8
  %55 = call i32 %48(i32 %53, %struct.fsm* %54)
  br label %83

56:                                               ; preds = %1, %1, %1, %1
  %57 = load %struct.fsm*, %struct.fsm** %2, align 8
  %58 = load i32, i32* @ST_STARTING, align 4
  %59 = call i32 @NewState(%struct.fsm* %57, i32 %58)
  br label %83

60:                                               ; preds = %1
  %61 = load %struct.fsm*, %struct.fsm** %2, align 8
  %62 = getelementptr inbounds %struct.fsm, %struct.fsm* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %64, align 8
  %66 = load %struct.fsm*, %struct.fsm** %2, align 8
  %67 = call i32 %65(%struct.fsm* %66)
  %68 = load %struct.fsm*, %struct.fsm** %2, align 8
  %69 = load i32, i32* @ST_STARTING, align 4
  %70 = call i32 @NewState(%struct.fsm* %68, i32 %69)
  %71 = load %struct.fsm*, %struct.fsm** %2, align 8
  %72 = getelementptr inbounds %struct.fsm, %struct.fsm* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %74, align 8
  %76 = load %struct.fsm*, %struct.fsm** %2, align 8
  %77 = getelementptr inbounds %struct.fsm, %struct.fsm* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fsm*, %struct.fsm** %2, align 8
  %82 = call i32 %75(i32 %80, %struct.fsm* %81)
  br label %83

83:                                               ; preds = %1, %60, %56, %33, %10, %6
  ret void
}

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
