; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vtvga_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vtvga_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@VGA_MEM_BASE = common dso_local global i64 0, align 8
@VGA_MEM_SIZE = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to reserve vt_vga memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtvga_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtvga_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SYS_RES_MEMORY, align 4
  %7 = load i64, i64* @VGA_MEM_BASE, align 8
  %8 = load i64, i64* @VGA_MEM_BASE, align 8
  %9 = load i64, i64* @VGA_MEM_SIZE, align 8
  %10 = add nsw i64 %8, %9
  %11 = sub nsw i64 %10, 1
  %12 = load i64, i64* @VGA_MEM_SIZE, align 8
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call %struct.resource* @bus_alloc_resource(i32 %5, i32 %6, i32* %4, i64 %7, i64 %11, i64 %12, i32 %13)
  store %struct.resource* %14, %struct.resource** %3, align 8
  %15 = load %struct.resource*, %struct.resource** %3, align 8
  %16 = icmp eq %struct.resource* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i64, i64, i64, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
