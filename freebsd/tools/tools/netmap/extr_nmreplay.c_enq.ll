; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_enq.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.q_pkt = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"enqueue len %d at %d new tail %ld qout %.6f tx %.6f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*)* @enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enq(%struct._qs* %0) #0 {
  %2 = alloca %struct._qs*, align 8
  %3 = alloca %struct.q_pkt*, align 8
  store %struct._qs* %0, %struct._qs** %2, align 8
  %4 = load %struct._qs*, %struct._qs** %2, align 8
  %5 = load %struct._qs*, %struct._qs** %2, align 8
  %6 = getelementptr inbounds %struct._qs, %struct._qs* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = call %struct.q_pkt* @pkt_at(%struct._qs* %4, i64 %7)
  store %struct.q_pkt* %8, %struct.q_pkt** %3, align 8
  %9 = load %struct._qs*, %struct._qs** %2, align 8
  %10 = getelementptr inbounds %struct._qs, %struct._qs* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %13 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %12, i64 1
  %14 = bitcast %struct.q_pkt* %13 to i8*
  %15 = load %struct._qs*, %struct._qs** %2, align 8
  %16 = getelementptr inbounds %struct._qs, %struct._qs* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nm_pkt_copy(i32 %11, i8* %14, i32 %17)
  %19 = load %struct._qs*, %struct._qs** %2, align 8
  %20 = getelementptr inbounds %struct._qs, %struct._qs* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %23 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct._qs*, %struct._qs** %2, align 8
  %25 = getelementptr inbounds %struct._qs, %struct._qs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %28 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct._qs*, %struct._qs** %2, align 8
  %30 = getelementptr inbounds %struct._qs, %struct._qs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %33 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct._qs*, %struct._qs** %2, align 8
  %35 = getelementptr inbounds %struct._qs, %struct._qs* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct._qs*, %struct._qs** %2, align 8
  %38 = getelementptr inbounds %struct._qs, %struct._qs* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @pad(i32 %39)
  %41 = add nsw i64 %36, %40
  %42 = add i64 %41, 24
  %43 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %44 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct._qs*, %struct._qs** %2, align 8
  %46 = getelementptr inbounds %struct._qs, %struct._qs* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct._qs*, %struct._qs** %2, align 8
  %49 = getelementptr inbounds %struct._qs, %struct._qs* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %53 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %56 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sitofp i32 %57 to double
  %59 = fmul double 1.000000e-09, %58
  %60 = fptosi double %59 to i32
  %61 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %62 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to double
  %65 = fmul double 1.000000e-09, %64
  %66 = fptosi double %65 to i32
  %67 = call i32 @ND(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i64 %54, i32 %60, i32 %66)
  %68 = load %struct.q_pkt*, %struct.q_pkt** %3, align 8
  %69 = getelementptr inbounds %struct.q_pkt, %struct.q_pkt* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct._qs*, %struct._qs** %2, align 8
  %72 = getelementptr inbounds %struct._qs, %struct._qs* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct._qs*, %struct._qs** %2, align 8
  %74 = getelementptr inbounds %struct._qs, %struct._qs* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  ret i32 0
}

declare dso_local %struct.q_pkt* @pkt_at(%struct._qs*, i64) #1

declare dso_local i32 @nm_pkt_copy(i32, i8*, i32) #1

declare dso_local i64 @pad(i32) #1

declare dso_local i32 @ND(i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
