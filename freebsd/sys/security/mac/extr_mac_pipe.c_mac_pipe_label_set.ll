; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_pipe.c_mac_pipe_label_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_pipe.c_mac_pipe_label_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.pipepair = type { i32 }
%struct.label = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_pipe_label_set(%struct.ucred* %0, %struct.pipepair* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.pipepair*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.pipepair* %1, %struct.pipepair** %6, align 8
  store %struct.label* %2, %struct.label** %7, align 8
  %9 = load %struct.pipepair*, %struct.pipepair** %6, align 8
  %10 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %9, i32 0, i32 0
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.ucred*, %struct.ucred** %5, align 8
  %14 = load %struct.pipepair*, %struct.pipepair** %6, align 8
  %15 = load %struct.label*, %struct.label** %7, align 8
  %16 = call i32 @mac_pipe_check_relabel(%struct.ucred* %13, %struct.pipepair* %14, %struct.label* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.ucred*, %struct.ucred** %5, align 8
  %23 = load %struct.pipepair*, %struct.pipepair** %6, align 8
  %24 = load %struct.label*, %struct.label** %7, align 8
  %25 = call i32 @mac_pipe_relabel(%struct.ucred* %22, %struct.pipepair* %23, %struct.label* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %19
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mac_pipe_check_relabel(%struct.ucred*, %struct.pipepair*, %struct.label*) #1

declare dso_local i32 @mac_pipe_relabel(%struct.ucred*, %struct.pipepair*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
