; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_doom_vi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_doom_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i8*, i64, i32, i32, i32 }
%struct.vi_info = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"t4detach\00", align 1
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doom_vi(%struct.adapter* %0, %struct.vi_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.vi_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.vi_info* %1, %struct.vi_info** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = call i32 @ADAPTER_LOCK(%struct.adapter* %5)
  %7 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %8 = call i32 @SET_DOOMED(%struct.vi_info* %7)
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 4
  %11 = call i32 @wakeup(i32* %10)
  br label %12

12:                                               ; preds = %16, %2
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = call i64 @IS_BUSY(%struct.adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 3
  %21 = call i32 @mtx_sleep(i32* %18, i32* %20, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = call i32 @SET_BUSY(%struct.adapter* %23)
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %25)
  ret void
}

declare dso_local i32 @ADAPTER_LOCK(%struct.adapter*) #1

declare dso_local i32 @SET_DOOMED(%struct.vi_info*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i64 @IS_BUSY(%struct.adapter*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @SET_BUSY(%struct.adapter*) #1

declare dso_local i32 @ADAPTER_UNLOCK(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
