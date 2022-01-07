; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_process_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_process_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)* }
%struct.cm_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_id_private*, %struct.cm_work*)* @cm_process_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_process_work(%struct.cm_id_private* %0, %struct.cm_work* %1) #0 {
  %3 = alloca %struct.cm_id_private*, align 8
  %4 = alloca %struct.cm_work*, align 8
  %5 = alloca i32, align 4
  store %struct.cm_id_private* %0, %struct.cm_id_private** %3, align 8
  store %struct.cm_work* %1, %struct.cm_work** %4, align 8
  %6 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %7 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %8, align 8
  %10 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %11 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %10, i32 0, i32 0
  %12 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %13 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %12, i32 0, i32 0
  %14 = call i32 %9(%struct.TYPE_4__* %11, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %16 = call i32 @cm_free_work(%struct.cm_work* %15)
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %22 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %21, i32 0, i32 2
  %23 = call i32 @atomic_add_negative(i32 -1, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %53

28:                                               ; preds = %26
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 1
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %33 = call %struct.cm_work* @cm_dequeue_work(%struct.cm_id_private* %32)
  store %struct.cm_work* %33, %struct.cm_work** %4, align 8
  %34 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %35 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %38 = icmp ne %struct.cm_work* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %43 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %44, align 8
  %46 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %47 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %46, i32 0, i32 0
  %48 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %49 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %48, i32 0, i32 0
  %50 = call i32 %45(%struct.TYPE_4__* %47, i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %52 = call i32 @cm_free_work(%struct.cm_work* %51)
  br label %17

53:                                               ; preds = %26
  %54 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %55 = call i32 @cm_deref_id(%struct.cm_id_private* %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  %60 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %59, i32 0, i32 0
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @cm_destroy_id(%struct.TYPE_4__* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @cm_free_work(%struct.cm_work*) #1

declare dso_local i32 @atomic_add_negative(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cm_work* @cm_dequeue_work(%struct.cm_id_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

declare dso_local i32 @cm_destroy_id(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
