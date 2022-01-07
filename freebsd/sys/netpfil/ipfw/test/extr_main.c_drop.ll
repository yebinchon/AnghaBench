; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg_s = type { i32, %struct.mbuf*, i32*, i32 }
%struct.mbuf = type { %struct.mbuf*, i32 }
%struct.dn_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.list_head }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"q %p id %d current length %d\00", align 1
@BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg_s*, %struct.mbuf*)* @drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop(%struct.cfg_s* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.cfg_s*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.dn_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  store %struct.cfg_s* %0, %struct.cfg_s** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %8 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %9 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.dn_queue* @FI2Q(%struct.cfg_s* %12, i32 %15)
  store %struct.dn_queue* %16, %struct.dn_queue** %5, align 8
  %17 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %18 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ND(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.dn_queue* %21, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BACKLOG, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %2
  %31 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %32 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store %struct.list_head* %33, %struct.list_head** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %39 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %45 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.list_head*, %struct.list_head** %7, align 8
  %49 = call i32 @list_del(%struct.list_head* %48)
  %50 = load %struct.list_head*, %struct.list_head** %7, align 8
  %51 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %52 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @list_add_tail(%struct.list_head* %50, i32* %56)
  br label %58

58:                                               ; preds = %30, %2
  %59 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %60 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %59, i32 0, i32 1
  %61 = load %struct.mbuf*, %struct.mbuf** %60, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  store %struct.mbuf* %61, %struct.mbuf** %63, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %65 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %66 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %65, i32 0, i32 1
  store %struct.mbuf* %64, %struct.mbuf** %66, align 8
  ret i32 0
}

declare dso_local %struct.dn_queue* @FI2Q(%struct.cfg_s*, i32) #1

declare dso_local i32 @ND(i8*, %struct.dn_queue*, i32, i32) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
