; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_set_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_set_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fpreg = type { i32 }
%struct.save87 = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@cpu_fxsr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_fpregs(%struct.thread* %0, %struct.fpreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fpreg*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fpreg* %1, %struct.fpreg** %4, align 8
  %5 = call i32 (...) @critical_enter()
  %6 = load i64, i64* @cpu_fxsr, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %10 = bitcast %struct.fpreg* %9 to %struct.save87*
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = call %struct.TYPE_2__* @get_pcb_user_save_td(%struct.thread* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @npx_set_fpregs_xmm(%struct.save87* %10, i32* %13)
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = call %struct.TYPE_2__* @get_pcb_user_save_td(%struct.thread* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @bcopy(%struct.fpreg* %16, i32* %19, i32 4)
  br label %21

21:                                               ; preds = %15, %8
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = call i32 @npxuserinited(%struct.thread* %22)
  %24 = call i32 (...) @critical_exit()
  ret i32 0
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @npx_set_fpregs_xmm(%struct.save87*, i32*) #1

declare dso_local %struct.TYPE_2__* @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @bcopy(%struct.fpreg*, i32*, i32) #1

declare dso_local i32 @npxuserinited(%struct.thread*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
