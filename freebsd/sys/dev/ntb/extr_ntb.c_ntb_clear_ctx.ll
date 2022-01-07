; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_clear_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_clear_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntb_clear_ctx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ntb_child* @device_get_ivars(i32 %4)
  store %struct.ntb_child* %5, %struct.ntb_child** %3, align 8
  %6 = load %struct.ntb_child*, %struct.ntb_child** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %6, i32 0, i32 0
  %8 = call i32 @rm_wlock(i32* %7)
  %9 = load %struct.ntb_child*, %struct.ntb_child** %3, align 8
  %10 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.ntb_child*, %struct.ntb_child** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.ntb_child*, %struct.ntb_child** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %13, i32 0, i32 0
  %15 = call i32 @rm_wunlock(i32* %14)
  ret void
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local i32 @rm_wlock(i32*) #1

declare dso_local i32 @rm_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
