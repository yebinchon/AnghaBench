; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c_mtx_sysinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c_mtx_sysinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx_args = type { i32, i32, i64 }
%struct.mtx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtx_sysinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtx_args*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mtx_args*
  store %struct.mtx_args* %5, %struct.mtx_args** %3, align 8
  %6 = load %struct.mtx_args*, %struct.mtx_args** %3, align 8
  %7 = getelementptr inbounds %struct.mtx_args, %struct.mtx_args* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.mtx*
  %10 = load %struct.mtx_args*, %struct.mtx_args** %3, align 8
  %11 = getelementptr inbounds %struct.mtx_args, %struct.mtx_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mtx_args*, %struct.mtx_args** %3, align 8
  %14 = getelementptr inbounds %struct.mtx_args, %struct.mtx_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mtx_init(%struct.mtx* %9, i32 %12, i32* null, i32 %15)
  ret void
}

declare dso_local i32 @mtx_init(%struct.mtx*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
