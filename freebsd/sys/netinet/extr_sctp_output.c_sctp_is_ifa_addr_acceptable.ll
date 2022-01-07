; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_is_ifa_addr_acceptable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_is_ifa_addr_acceptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ifa = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SCTP_DEBUG_OUTPUT3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ifa_fam:%d fam:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"dst_is_loop:%d dest_is_priv:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ifa->src_is_loop:%d dest_is_priv:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ifa->src_is_loop:%d dest_is_glob:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"address is acceptable\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@SCTP_ADDR_IFA_UNUSEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ifa* (%struct.sctp_ifa*, i64, i64, i64)* @sctp_is_ifa_addr_acceptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ifa* @sctp_is_ifa_addr_acceptable(%struct.sctp_ifa* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sctp_ifa*, align 8
  %6 = alloca %struct.sctp_ifa*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sctp_ifa* %0, %struct.sctp_ifa** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %20 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %77

27:                                               ; preds = %4
  %28 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %29 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @SCTPDBG_ADDR(i32 %28, %struct.TYPE_4__* %31)
  %33 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 1, i64* %10, align 8
  br label %43

43:                                               ; preds = %42, %39, %27
  %44 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %45 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %46 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %51 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %77

58:                                               ; preds = %54, %43
  %59 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %60 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %61 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %62, i64 %63)
  %65 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %66 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %77

73:                                               ; preds = %69, %58
  %74 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %75 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  store %struct.sctp_ifa* %76, %struct.sctp_ifa** %5, align 8
  br label %77

77:                                               ; preds = %73, %72, %57, %18
  %78 = load %struct.sctp_ifa*, %struct.sctp_ifa** %5, align 8
  ret %struct.sctp_ifa* %78
}

declare dso_local i32 @SCTPDBG(i32, i8*, ...) #1

declare dso_local i32 @SCTPDBG_ADDR(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
