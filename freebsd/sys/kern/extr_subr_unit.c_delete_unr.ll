; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_delete_unr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_delete_unr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unrhdr = type { i32, i32 }
%struct.unr = type { i32 }

@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unrhdr*, i8*)* @delete_unr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_unr(%struct.unrhdr* %0, i8* %1) #0 {
  %3 = alloca %struct.unrhdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.unr*, align 8
  store %struct.unrhdr* %0, %struct.unrhdr** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %7 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.unr*
  store %struct.unr* %11, %struct.unr** %5, align 8
  %12 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %13 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %12, i32 0, i32 0
  %14 = load %struct.unr*, %struct.unr** %5, align 8
  %15 = load i32, i32* @list, align 4
  %16 = call i32 @TAILQ_INSERT_TAIL(i32* %13, %struct.unr* %14, i32 %15)
  ret void
}

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.unr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
