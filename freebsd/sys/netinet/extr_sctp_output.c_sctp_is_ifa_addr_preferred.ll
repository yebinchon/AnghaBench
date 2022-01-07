; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_is_ifa_addr_preferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_is_ifa_addr_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ifa = type { i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SCTP_DEBUG_OUTPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Is destination preferred:\00", align 1
@SCTP_DEBUG_OUTPUT3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"src_loop:%d src_priv:%d src_glob:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dest_loop:%d dest_priv:%d dest_glob:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"NO:4\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"NO:5\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"NO:6\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"NO:7\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@SCTP_ADDR_IFA_UNUSEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ifa* (%struct.sctp_ifa*, i64, i64, i64)* @sctp_is_ifa_addr_preferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ifa* @sctp_is_ifa_addr_preferred(%struct.sctp_ifa* %0, i64 %1, i64 %2, i64 %3) #0 {
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
  %12 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %97

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 1, i64* %10, align 8
  br label %26

26:                                               ; preds = %25, %22, %19
  %27 = load i32, i32* @SCTP_DEBUG_OUTPUT2, align 4
  %28 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @SCTP_DEBUG_OUTPUT2, align 4
  %30 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %31 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @SCTPDBG_ADDR(i32 %29, %struct.TYPE_4__* %32)
  %34 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %35 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %36 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %39 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %42 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %40, i64 %43)
  %45 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 %47, i64 %48)
  %50 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %51 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %26
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %59 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %97

60:                                               ; preds = %54, %26
  %61 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %62 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %70 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %97

71:                                               ; preds = %65, %60
  %72 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %73 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %81 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %97

82:                                               ; preds = %76, %71
  %83 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  %84 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %92 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %5, align 8
  br label %97

93:                                               ; preds = %87, %82
  %94 = load i32, i32* @SCTP_DEBUG_OUTPUT3, align 4
  %95 = call i32 (i32, i8*, ...) @SCTPDBG(i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %96 = load %struct.sctp_ifa*, %struct.sctp_ifa** %6, align 8
  store %struct.sctp_ifa* %96, %struct.sctp_ifa** %5, align 8
  br label %97

97:                                               ; preds = %93, %90, %79, %68, %57, %18
  %98 = load %struct.sctp_ifa*, %struct.sctp_ifa** %5, align 8
  ret %struct.sctp_ifa* %98
}

declare dso_local i32 @SCTPDBG(i32, i8*, ...) #1

declare dso_local i32 @SCTPDBG_ADDR(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
