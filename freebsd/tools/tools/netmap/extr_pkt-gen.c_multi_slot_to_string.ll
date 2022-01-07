; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_multi_slot_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_multi_slot_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_ring = type { %struct.netmap_slot* }
%struct.netmap_slot = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"|%u,%x|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.netmap_ring*, i32, i32, i8*, i64)* @multi_slot_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @multi_slot_to_string(%struct.netmap_ring* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.netmap_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.netmap_slot*, align 8
  %14 = alloca i32, align 4
  store %struct.netmap_ring* %0, %struct.netmap_ring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %53, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %22 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %21, i32 0, i32 0
  %23 = load %struct.netmap_slot*, %struct.netmap_slot** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %23, i64 %25
  store %struct.netmap_slot* %26, %struct.netmap_slot** %13, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.netmap_slot*, %struct.netmap_slot** %13, align 8
  %30 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.netmap_slot*, %struct.netmap_slot** %13, align 8
  %33 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  br label %56

41:                                               ; preds = %20
  %42 = load i32, i32* %14, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @nm_ring_next(%struct.netmap_ring* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %16

56:                                               ; preds = %40, %16
  %57 = load i8*, i8** %12, align 8
  ret i8* %57
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @nm_ring_next(%struct.netmap_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
