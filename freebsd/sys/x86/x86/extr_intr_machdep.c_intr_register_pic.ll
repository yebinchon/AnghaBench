; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_register_pic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_register_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic = type { i32 }

@intrpic_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@pics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_register_pic(%struct.pic* %0) #0 {
  %2 = alloca %struct.pic*, align 8
  %3 = alloca i32, align 4
  store %struct.pic* %0, %struct.pic** %2, align 8
  %4 = call i32 @mtx_lock(i32* @intrpic_lock)
  %5 = load %struct.pic*, %struct.pic** %2, align 8
  %6 = call i64 @intr_pic_registered(%struct.pic* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  store i32 %9, i32* %3, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.pic*, %struct.pic** %2, align 8
  %12 = load i32, i32* @pics, align 4
  %13 = call i32 @TAILQ_INSERT_TAIL(i32* @pics, %struct.pic* %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %8
  %15 = call i32 @mtx_unlock(i32* @intrpic_lock)
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @intr_pic_registered(%struct.pic*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pic*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
