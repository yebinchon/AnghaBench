; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_load_fw_from_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_load_fw_from_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @qla_load_fw_from_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_load_fw_from_flash(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %2, align 8
  store i32 65536, i32* %3, align 4
  store i32 65536, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %10, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 131072
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %14 = call i32 @qla_rd_flash32(i32* %11, i32 %12, i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %4, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %22 = call i32 @qla_rd_flash32(i32* %19, i32 %20, i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %30 = call i32 @qla_rd_flash32(i32* %27, i32 %28, i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 4
  store i32 %34, i32* %4, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %38 = call i32 @qla_rd_flash32(i32* %35, i32 %36, i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %4, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @qla_rdwr_offchip_mem(i32* %43, i32 %44, %struct.TYPE_3__* %6, i32 0)
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 16
  store i32 %47, i32* %3, align 4
  br label %7

48:                                               ; preds = %7
  ret void
}

declare dso_local i32 @qla_rd_flash32(i32*, i32, i32*) #1

declare dso_local i32 @qla_rdwr_offchip_mem(i32*, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
