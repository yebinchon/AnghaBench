; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.nmdmpart = type { %struct.tty*, %struct.nmdmpart* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @nmdm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmdm_close(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.nmdmpart*, align 8
  %4 = alloca %struct.nmdmpart*, align 8
  %5 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = call %struct.nmdmpart* @tty_softc(%struct.tty* %6)
  store %struct.nmdmpart* %7, %struct.nmdmpart** %3, align 8
  %8 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %9 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %8, i32 0, i32 1
  %10 = load %struct.nmdmpart*, %struct.nmdmpart** %9, align 8
  store %struct.nmdmpart* %10, %struct.nmdmpart** %4, align 8
  %11 = load %struct.nmdmpart*, %struct.nmdmpart** %4, align 8
  %12 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %11, i32 0, i32 0
  %13 = load %struct.tty*, %struct.tty** %12, align 8
  store %struct.tty* %13, %struct.tty** %5, align 8
  %14 = load %struct.tty*, %struct.tty** %5, align 8
  %15 = call i64 @tty_opened(%struct.tty* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.tty*, %struct.tty** %2, align 8
  %20 = call i32 @tty_rel_gone(%struct.tty* %19)
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = call i32 @tty_lock(%struct.tty* %21)
  %23 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %24 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %23, i32 0, i32 1
  %25 = load %struct.nmdmpart*, %struct.nmdmpart** %24, align 8
  store %struct.nmdmpart* %25, %struct.nmdmpart** %4, align 8
  %26 = load %struct.nmdmpart*, %struct.nmdmpart** %4, align 8
  %27 = icmp eq %struct.nmdmpart* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %37

29:                                               ; preds = %18
  %30 = load %struct.nmdmpart*, %struct.nmdmpart** %4, align 8
  %31 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %30, i32 0, i32 0
  %32 = load %struct.tty*, %struct.tty** %31, align 8
  store %struct.tty* %32, %struct.tty** %5, align 8
  %33 = load %struct.tty*, %struct.tty** %5, align 8
  %34 = call i32 @tty_rel_gone(%struct.tty* %33)
  %35 = load %struct.tty*, %struct.tty** %2, align 8
  %36 = call i32 @tty_lock(%struct.tty* %35)
  br label %37

37:                                               ; preds = %29, %28, %17
  ret void
}

declare dso_local %struct.nmdmpart* @tty_softc(%struct.tty*) #1

declare dso_local i64 @tty_opened(%struct.tty*) #1

declare dso_local i32 @tty_rel_gone(%struct.tty*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
