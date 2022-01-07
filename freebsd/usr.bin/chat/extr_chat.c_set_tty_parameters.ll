; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_set_tty_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_set_tty_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64, i64 }

@IGNBRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@have_tty_parameters = common dso_local global i32 0, align 4
@saved_tty_parameters = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_tty_parameters() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
