; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_option_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_option_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }
%struct.option = type { %struct.option*, %struct.option* }

@o_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @option_delete(%struct.options* %0, %struct.option* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca %struct.option*, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store %struct.option* %1, %struct.option** %4, align 8
  %5 = load %struct.options*, %struct.options** %3, align 8
  %6 = load %struct.option*, %struct.option** %4, align 8
  %7 = load i32, i32* @o_next, align 4
  %8 = call i32 @TAILQ_REMOVE(%struct.options* %5, %struct.option* %6, i32 %7)
  %9 = load %struct.option*, %struct.option** %4, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 1
  %11 = load %struct.option*, %struct.option** %10, align 8
  %12 = call i32 @free(%struct.option* %11)
  %13 = load %struct.option*, %struct.option** %4, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  %15 = load %struct.option*, %struct.option** %14, align 8
  %16 = call i32 @free(%struct.option* %15)
  %17 = load %struct.option*, %struct.option** %4, align 8
  %18 = call i32 @free(%struct.option* %17)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(%struct.options*, %struct.option*, i32) #1

declare dso_local i32 @free(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
