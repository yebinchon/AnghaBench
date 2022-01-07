; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfloghdr = type { i8*, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.nat64lsn_state = type { i32, i32, i32, i32 }

@PFLOG_REAL_HDRLEN = common dso_local global i32 0, align 4
@PF_NAT = common dso_local global i32 0, align 4
@PF_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"NAT64LSN\00", align 1
@PFLOG_HDRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfloghdr*, %struct.mbuf*, i32, %struct.nat64lsn_state*)* @nat64lsn_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_log(%struct.pfloghdr* %0, %struct.mbuf* %1, i32 %2, %struct.nat64lsn_state* %3) #0 {
  %5 = alloca %struct.pfloghdr*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nat64lsn_state*, align 8
  store %struct.pfloghdr* %0, %struct.pfloghdr** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nat64lsn_state* %3, %struct.nat64lsn_state** %8, align 8
  %9 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %10 = call i32 @memset(%struct.pfloghdr* %9, i32 0, i32 48)
  %11 = load i32, i32* @PFLOG_REAL_HDRLEN, align 4
  %12 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %13 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %16 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @PF_NAT, align 4
  %18 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %19 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @PF_IN, align 4
  %21 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %22 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %24 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %28 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %30 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %34 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %39 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = or i32 %37, %41
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %45 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %47 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  %50 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %51 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strlcpy(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %54 = load %struct.pfloghdr*, %struct.pfloghdr** %5, align 8
  %55 = load i32, i32* @PFLOG_HDRLEN, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = call i32 @ipfw_bpf_mtap2(%struct.pfloghdr* %54, i32 %55, %struct.mbuf* %56)
  ret void
}

declare dso_local i32 @memset(%struct.pfloghdr*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ipfw_bpf_mtap2(%struct.pfloghdr*, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
