; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_vnet.c_vnet_deregister_sysinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_vnet.c_vnet_deregister_sysinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_sysinit = type { i32 }

@vnet_constructors = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnet_deregister_sysinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vnet_sysinit*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vnet_sysinit*
  store %struct.vnet_sysinit* %5, %struct.vnet_sysinit** %3, align 8
  %6 = call i32 (...) @VNET_SYSINIT_WLOCK()
  %7 = load %struct.vnet_sysinit*, %struct.vnet_sysinit** %3, align 8
  %8 = load i32, i32* @link, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* @vnet_constructors, %struct.vnet_sysinit* %7, i32 %8)
  %10 = call i32 (...) @VNET_SYSINIT_WUNLOCK()
  ret void
}

declare dso_local i32 @VNET_SYSINIT_WLOCK(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnet_sysinit*, i32) #1

declare dso_local i32 @VNET_SYSINIT_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
