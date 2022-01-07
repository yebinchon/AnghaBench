; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/syscon/extr_syscon.c_syscon_get_handle_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/syscon/extr_syscon.c_syscon_get_handle_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscon = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @syscon_get_handle_default(i32* %0, %struct.syscon** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.syscon**, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.syscon** %1, %struct.syscon*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32* @device_get_parent(i32* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.syscon**, %struct.syscon*** %5, align 8
  %16 = call i32 @SYSCON_GET_HANDLE(i32* %14, %struct.syscon** %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @SYSCON_GET_HANDLE(i32*, %struct.syscon**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
