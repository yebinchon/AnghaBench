; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_put_free_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_put_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ooo_info = type { i32 }
%struct.ecore_ooo_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_ooo_put_free_buffer(%struct.ecore_ooo_info* %0, %struct.ecore_ooo_buffer* %1) #0 {
  %3 = alloca %struct.ecore_ooo_info*, align 8
  %4 = alloca %struct.ecore_ooo_buffer*, align 8
  store %struct.ecore_ooo_info* %0, %struct.ecore_ooo_info** %3, align 8
  store %struct.ecore_ooo_buffer* %1, %struct.ecore_ooo_buffer** %4, align 8
  %5 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %5, i32 0, i32 0
  %7 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %7, i32 0, i32 0
  %9 = call i32 @OSAL_LIST_PUSH_TAIL(i32* %6, i32* %8)
  ret void
}

declare dso_local i32 @OSAL_LIST_PUSH_TAIL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
