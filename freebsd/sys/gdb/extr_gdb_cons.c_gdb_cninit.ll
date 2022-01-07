; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_cons.c_gdb_cninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_cons.c_gdb_cninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbcons = type { i32, i32 }
%struct.consdev = type { %struct.gdbcons* }

@state = common dso_local global %struct.gdbcons zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @gdb_cninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_cninit(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca %struct.gdbcons*, align 8
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  store %struct.gdbcons* @state, %struct.gdbcons** %3, align 8
  %4 = load %struct.gdbcons*, %struct.gdbcons** %3, align 8
  %5 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.gdbcons*, %struct.gdbcons** %3, align 8
  %10 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.gdbcons*, %struct.gdbcons** %3, align 8
  %12 = getelementptr inbounds %struct.gdbcons, %struct.gdbcons* %11, i32 0, i32 1
  %13 = call i32 @callout_init(i32* %12, i32 1)
  %14 = load %struct.gdbcons*, %struct.gdbcons** %3, align 8
  %15 = load %struct.consdev*, %struct.consdev** %2, align 8
  %16 = getelementptr inbounds %struct.consdev, %struct.consdev* %15, i32 0, i32 0
  store %struct.gdbcons* %14, %struct.gdbcons** %16, align 8
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
