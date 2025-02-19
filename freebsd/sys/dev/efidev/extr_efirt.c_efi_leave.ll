; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }

@curproc = common dso_local global %struct.TYPE_4__* null, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@efi_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @efi_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_leave() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @efi_arch_leave()
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curproc, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32* %7, i32** %2, align 8
  %8 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %8, %struct.thread** %1, align 8
  %9 = load %struct.thread*, %struct.thread** %1, align 8
  %10 = call i32 @fpu_kern_leave(%struct.thread* %9, i32* null)
  %11 = call i32 @mtx_unlock(i32* @efi_lock)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @PMAP_UNLOCK(i32* %12)
  ret void
}

declare dso_local i32 @efi_arch_leave(...) #1

declare dso_local i32 @fpu_kern_leave(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
