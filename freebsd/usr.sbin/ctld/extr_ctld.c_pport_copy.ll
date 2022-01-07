; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_pport_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_pport_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pport = type { i32, i32 }
%struct.conf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pport* @pport_copy(%struct.pport* %0, %struct.conf* %1) #0 {
  %3 = alloca %struct.pport*, align 8
  %4 = alloca %struct.conf*, align 8
  %5 = alloca %struct.pport*, align 8
  store %struct.pport* %0, %struct.pport** %3, align 8
  store %struct.conf* %1, %struct.conf** %4, align 8
  %6 = load %struct.conf*, %struct.conf** %4, align 8
  %7 = load %struct.pport*, %struct.pport** %3, align 8
  %8 = getelementptr inbounds %struct.pport, %struct.pport* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pport*, %struct.pport** %3, align 8
  %11 = getelementptr inbounds %struct.pport, %struct.pport* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pport* @pport_new(%struct.conf* %6, i32 %9, i32 %12)
  store %struct.pport* %13, %struct.pport** %5, align 8
  %14 = load %struct.pport*, %struct.pport** %5, align 8
  ret %struct.pport* %14
}

declare dso_local %struct.pport* @pport_new(%struct.conf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
