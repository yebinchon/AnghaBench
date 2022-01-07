; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_mark_ifa_addr_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_mark_ifa_addr_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctp_vrf = type { i32 }
%struct.sctp_ifa = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@SCTP_DEBUG_PCB4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't find vrf_id 0x%x\0A\00", align 1
@SCTP_ADDR_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't find sctp_ifap for address\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"IFA has no IFN - can't mark unusable\0A\00", align 1
@SCTP_IFNAMSIZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"IFN %s of IFA not the same as %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"IFA owned by ifn_index:%d down command for ifn_index:%d - ignored\0A\00", align 1
@SCTP_ADDR_IFA_UNUSEABLE = common dso_local global i32 0, align 4
@SCTP_ADDR_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_mark_ifa_addr_up(i8* %0, %struct.sockaddr* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sctp_vrf*, align 8
  %10 = alloca %struct.sctp_ifa*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = call i32 (...) @SCTP_IPI_ADDR_RLOCK()
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.sctp_vrf* @sctp_find_vrf(i8* %12)
  store %struct.sctp_vrf* %13, %struct.sctp_vrf** %9, align 8
  %14 = load %struct.sctp_vrf*, %struct.sctp_vrf** %9, align 8
  %15 = icmp eq %struct.sctp_vrf* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @SCTP_DEBUG_PCB4, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %93

20:                                               ; preds = %4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = load %struct.sctp_vrf*, %struct.sctp_vrf** %9, align 8
  %23 = getelementptr inbounds %struct.sctp_vrf, %struct.sctp_vrf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCTP_ADDR_LOCKED, align 4
  %26 = call %struct.sctp_ifa* @sctp_find_ifa_by_addr(%struct.sockaddr* %21, i32 %24, i32 %25)
  store %struct.sctp_ifa* %26, %struct.sctp_ifa** %10, align 8
  %27 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %28 = icmp eq %struct.sctp_ifa* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @SCTP_DEBUG_PCB4, align 4
  %31 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %93

32:                                               ; preds = %20
  %33 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %34 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp eq %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @SCTP_DEBUG_PCB4, align 4
  %39 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %93

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %46 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @SCTP_IFNAMSIZ, align 4
  %51 = call i64 @strncmp(i8* %44, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load i32, i32* @SCTP_DEBUG_PCB4, align 4
  %55 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %56 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %60)
  br label %93

62:                                               ; preds = %43
  br label %81

63:                                               ; preds = %40
  %64 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %65 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load i32, i32* @SCTP_DEBUG_PCB4, align 4
  %73 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %74 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %72, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %78)
  br label %93

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %62
  %82 = load i32, i32* @SCTP_ADDR_IFA_UNUSEABLE, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %85 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @SCTP_ADDR_VALID, align 4
  %89 = load %struct.sctp_ifa*, %struct.sctp_ifa** %10, align 8
  %90 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %81, %71, %53, %37, %29, %16
  %94 = call i32 (...) @SCTP_IPI_ADDR_RUNLOCK()
  ret void
}

declare dso_local i32 @SCTP_IPI_ADDR_RLOCK(...) #1

declare dso_local %struct.sctp_vrf* @sctp_find_vrf(i8*) #1

declare dso_local i32 @SCTPDBG(i32, i8*, ...) #1

declare dso_local %struct.sctp_ifa* @sctp_find_ifa_by_addr(%struct.sockaddr*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SCTP_IPI_ADDR_RUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
