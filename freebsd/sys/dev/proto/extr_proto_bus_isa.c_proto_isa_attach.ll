; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_bus_isa.c_proto_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_bus_isa.c_proto_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ISA_NIRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@ISA_NDRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ISA_NPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ISA_NMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @proto_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SYS_RES_IRQ, align 4
  %5 = load i32, i32* @ISA_NIRQ, align 4
  %6 = call i32 @proto_isa_alloc(i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @SYS_RES_DRQ, align 4
  %9 = load i32, i32* @ISA_NDRQ, align 4
  %10 = call i32 @proto_isa_alloc(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SYS_RES_IOPORT, align 4
  %13 = load i32, i32* @ISA_NPORT, align 4
  %14 = call i32 @proto_isa_alloc(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load i32, i32* @ISA_NMEM, align 4
  %18 = call i32 @proto_isa_alloc(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @proto_attach(i32 %19)
  ret i32 %20
}

declare dso_local i32 @proto_isa_alloc(i32, i32, i32) #1

declare dso_local i32 @proto_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
