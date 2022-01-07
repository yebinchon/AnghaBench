; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_fill_pcbinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_fill_pcbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_pcbinfo = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ipi_count_ep = common dso_local global i32 0, align 4
@ipi_count_asoc = common dso_local global i32 0, align 4
@ipi_count_laddr = common dso_local global i32 0, align 4
@ipi_count_raddr = common dso_local global i32 0, align 4
@ipi_count_chunk = common dso_local global i32 0, align 4
@ipi_count_readq = common dso_local global i32 0, align 4
@ipi_count_strmoq = common dso_local global i32 0, align 4
@ipi_free_chunks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_fill_pcbinfo(%struct.sctp_pcbinfo* %0) #0 {
  %2 = alloca %struct.sctp_pcbinfo*, align 8
  store %struct.sctp_pcbinfo* %0, %struct.sctp_pcbinfo** %2, align 8
  %3 = call i32 (...) @SCTP_INP_INFO_RLOCK()
  %4 = load i32, i32* @ipi_count_ep, align 4
  %5 = call i8* @SCTP_BASE_INFO(i32 %4)
  %6 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %7 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %6, i32 0, i32 7
  store i8* %5, i8** %7, align 8
  %8 = load i32, i32* @ipi_count_asoc, align 4
  %9 = call i8* @SCTP_BASE_INFO(i32 %8)
  %10 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %11 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %10, i32 0, i32 6
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @ipi_count_laddr, align 4
  %13 = call i8* @SCTP_BASE_INFO(i32 %12)
  %14 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @ipi_count_raddr, align 4
  %17 = call i8* @SCTP_BASE_INFO(i32 %16)
  %18 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %19 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @ipi_count_chunk, align 4
  %21 = call i8* @SCTP_BASE_INFO(i32 %20)
  %22 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %23 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @ipi_count_readq, align 4
  %25 = call i8* @SCTP_BASE_INFO(i32 %24)
  %26 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %27 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @ipi_count_strmoq, align 4
  %29 = call i8* @SCTP_BASE_INFO(i32 %28)
  %30 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %31 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @ipi_free_chunks, align 4
  %33 = call i8* @SCTP_BASE_INFO(i32 %32)
  %34 = load %struct.sctp_pcbinfo*, %struct.sctp_pcbinfo** %2, align 8
  %35 = getelementptr inbounds %struct.sctp_pcbinfo, %struct.sctp_pcbinfo* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = call i32 (...) @SCTP_INP_INFO_RUNLOCK()
  ret void
}

declare dso_local i32 @SCTP_INP_INFO_RLOCK(...) #1

declare dso_local i8* @SCTP_BASE_INFO(i32) #1

declare dso_local i32 @SCTP_INP_INFO_RUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
