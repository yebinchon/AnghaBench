; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_GetAsconfVtags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_GetAsconfVtags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.sctp_nat_msg = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sctp_paramhdr* }
%struct.sctp_paramhdr = type { i32, i32 }
%struct.sctp_vtag_param = type { %struct.sctp_paramhdr, i32, i32 }

@SN_VTAG_PARAM_SIZE = common dso_local global i32 0, align 4
@SN_MIN_PARAM_SIZE = common dso_local global i32 0, align 4
@sysctl_param_proc_limit = common dso_local global i32 0, align 4
@SN_LOG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Parameter parse limit exceeded (GetAsconfVtags)\00", align 1
@SCTP_VTAG_PARAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.sctp_nat_msg*, i32*, i32*, i32)* @GetAsconfVtags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetAsconfVtags(%struct.libalias* %0, %struct.sctp_nat_msg* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libalias*, align 8
  %8 = alloca %struct.sctp_nat_msg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_vtag_param*, align 8
  %13 = alloca %struct.sctp_paramhdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %7, align 8
  store %struct.sctp_nat_msg* %1, %struct.sctp_nat_msg** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %16, align 4
  %17 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %18 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %19, align 8
  store %struct.sctp_paramhdr* %20, %struct.sctp_paramhdr** %13, align 8
  %21 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %22 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohs(i32 %23)
  %25 = call i32 @SCTP_SIZE32(i64 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %27 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %99, %5
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @SN_VTAG_PARAM_SIZE, align 4
  %36 = icmp sge i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %100

39:                                               ; preds = %37
  %40 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %41 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohs(i32 %42)
  %44 = icmp eq i64 %43, 49159
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %47 = bitcast %struct.sctp_paramhdr* %46 to %struct.sctp_vtag_param*
  store %struct.sctp_vtag_param* %47, %struct.sctp_vtag_param** %12, align 8
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %67 [
    i32 129, label %49
    i32 128, label %58
  ]

49:                                               ; preds = %45
  %50 = load %struct.sctp_vtag_param*, %struct.sctp_vtag_param** %12, align 8
  %51 = getelementptr inbounds %struct.sctp_vtag_param, %struct.sctp_vtag_param* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 1
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.sctp_vtag_param*, %struct.sctp_vtag_param** %12, align 8
  %55 = getelementptr inbounds %struct.sctp_vtag_param, %struct.sctp_vtag_param* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 1
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %67

58:                                               ; preds = %45
  %59 = load %struct.sctp_vtag_param*, %struct.sctp_vtag_param** %12, align 8
  %60 = getelementptr inbounds %struct.sctp_vtag_param, %struct.sctp_vtag_param* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 1
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.sctp_vtag_param*, %struct.sctp_vtag_param** %12, align 8
  %64 = getelementptr inbounds %struct.sctp_vtag_param, %struct.sctp_vtag_param* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 1
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %45, %58, %49
  store i32 1, i32* %6, align 4
  br label %101

68:                                               ; preds = %39
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @SN_MIN_PARAM_SIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %101

76:                                               ; preds = %68
  %77 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %78 = call %struct.sctp_paramhdr* @SN_SCTP_NEXTPARAM(%struct.sctp_paramhdr* %77)
  store %struct.sctp_paramhdr* %78, %struct.sctp_paramhdr** %13, align 8
  %79 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %80 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohs(i32 %81)
  %83 = call i32 @SCTP_SIZE32(i64 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* @sysctl_param_proc_limit, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %76
  %89 = load i32, i32* @SN_LOG_EVENT, align 4
  %90 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %8, align 8
  %91 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @sysctl_param_proc_limit, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @logsctperror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95, i32 %96)
  %98 = call i32 @SN_LOG(i32 %89, i32 %97)
  store i32 0, i32* %6, align 4
  br label %101

99:                                               ; preds = %76
  br label %29

100:                                              ; preds = %37
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %88, %75, %67
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @SCTP_SIZE32(i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_paramhdr* @SN_SCTP_NEXTPARAM(%struct.sctp_paramhdr*) #1

declare dso_local i32 @SN_LOG(i32, i32) #1

declare dso_local i32 @logsctperror(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
