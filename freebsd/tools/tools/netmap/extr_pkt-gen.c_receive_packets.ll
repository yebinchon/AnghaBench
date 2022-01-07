; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_receive_packets.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_receive_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_ring = type { i64, i64, %struct.netmap_slot* }
%struct.netmap_slot = type { i32, i64, i32 }

@NS_MOREFRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_ring*, i64, i32, i32*)* @receive_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_packets(%struct.netmap_ring* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.netmap_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.netmap_slot*, align 8
  %15 = alloca i8*, align 8
  store %struct.netmap_ring* %0, %struct.netmap_ring** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32* %12, i32** %8, align 8
  br label %19

19:                                               ; preds = %18, %4
  %20 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %21 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %24 = call i64 @nm_ring_space(%struct.netmap_ring* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %28, %19
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %78, %30
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %37 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %36, i32 0, i32 2
  %38 = load %struct.netmap_slot*, %struct.netmap_slot** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %38, i64 %39
  store %struct.netmap_slot* %40, %struct.netmap_slot** %14, align 8
  %41 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %42 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %43 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @NETMAP_BUF(%struct.netmap_ring* %41, i32 %44)
  store i8* %45, i8** %15, align 8
  %46 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %47 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %48
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %35
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %59 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @dump_payload(i8* %57, i64 %60, %struct.netmap_ring* %61, i64 %62)
  br label %64

64:                                               ; preds = %56, %35
  %65 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %66 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NS_MOREFRAG, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i64, i64* %13, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @nm_ring_next(%struct.netmap_ring* %75, i64 %76)
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %10, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %31

81:                                               ; preds = %31
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %84 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.netmap_ring*, %struct.netmap_ring** %5, align 8
  %86 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  %87 = load i64, i64* %13, align 8
  %88 = trunc i64 %87 to i32
  ret i32 %88
}

declare dso_local i64 @nm_ring_space(%struct.netmap_ring*) #1

declare dso_local i8* @NETMAP_BUF(%struct.netmap_ring*, i32) #1

declare dso_local i32 @dump_payload(i8*, i64, %struct.netmap_ring*, i64) #1

declare dso_local i64 @nm_ring_next(%struct.netmap_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
