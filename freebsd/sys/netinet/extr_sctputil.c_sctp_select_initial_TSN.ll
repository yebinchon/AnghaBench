; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_select_initial_TSN.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_select_initial_TSN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_pcb = type { i64, i32, i32* }

@SCTP_SIGNATURE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_select_initial_TSN(%struct.sctp_pcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sctp_pcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sctp_pcb* %0, %struct.sctp_pcb** %3, align 8
  %10 = load %struct.sctp_pcb*, %struct.sctp_pcb** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_pcb, %struct.sctp_pcb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.sctp_pcb*, %struct.sctp_pcb** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_pcb, %struct.sctp_pcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.sctp_pcb*, %struct.sctp_pcb** %3, align 8
  %19 = getelementptr inbounds %struct.sctp_pcb, %struct.sctp_pcb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %2, align 8
  br label %63

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %44, %23
  %25 = load %struct.sctp_pcb*, %struct.sctp_pcb** %3, align 8
  %26 = getelementptr inbounds %struct.sctp_pcb, %struct.sctp_pcb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SCTP_SIGNATURE_SIZE, align 4
  %34 = sub nsw i32 %33, 3
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.sctp_pcb*, %struct.sctp_pcb** %3, align 8
  %39 = getelementptr inbounds %struct.sctp_pcb, %struct.sctp_pcb* %38, i32 0, i32 1
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @atomic_cmpset_int(i32* %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %24

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.sctp_pcb*, %struct.sctp_pcb** %3, align 8
  %50 = call i32 @sctp_fill_random_store(%struct.sctp_pcb* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.sctp_pcb*, %struct.sctp_pcb** %3, align 8
  %53 = getelementptr inbounds %struct.sctp_pcb, %struct.sctp_pcb* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = bitcast i32* %58 to i64*
  store i64* %59, i64** %5, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %51, %14
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @sctp_fill_random_store(%struct.sctp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
