; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_beta_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_beta_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htcp = type { i32, i32, i32, i32 }

@use_bandwidth_switch = common dso_local global i64 0, align 8
@BETA_MIN = common dso_local global i8* null, align 8
@BETA_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htcp*, i32, i32)* @htcp_beta_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_beta_update(%struct.htcp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.htcp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.htcp* %0, %struct.htcp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @use_bandwidth_switch, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.htcp*, %struct.htcp** %4, align 8
  %13 = getelementptr inbounds %struct.htcp, %struct.htcp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.htcp*, %struct.htcp** %4, align 8
  %16 = getelementptr inbounds %struct.htcp, %struct.htcp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.htcp*, %struct.htcp** %4, align 8
  %19 = getelementptr inbounds %struct.htcp, %struct.htcp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.htcp*, %struct.htcp** %4, align 8
  %22 = getelementptr inbounds %struct.htcp, %struct.htcp* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 5, %23
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 4, %25
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 6, %27
  %29 = call i32 @between(i32 %24, i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %11
  %32 = load i8*, i8** @BETA_MIN, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.htcp*, %struct.htcp** %4, align 8
  %35 = getelementptr inbounds %struct.htcp, %struct.htcp* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.htcp*, %struct.htcp** %4, align 8
  %37 = getelementptr inbounds %struct.htcp, %struct.htcp* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  br label %93

38:                                               ; preds = %11
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.htcp*, %struct.htcp** %4, align 8
  %41 = getelementptr inbounds %struct.htcp, %struct.htcp* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @MSEC_TO_TICKS(i32 10)
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 %53, 7
  %55 = load i32, i32* %6, align 4
  %56 = sdiv i32 %54, %55
  %57 = load %struct.htcp*, %struct.htcp** %4, align 8
  %58 = getelementptr inbounds %struct.htcp, %struct.htcp* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.htcp*, %struct.htcp** %4, align 8
  %60 = getelementptr inbounds %struct.htcp, %struct.htcp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8*, i8** @BETA_MIN, align 8
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load i8*, i8** @BETA_MIN, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.htcp*, %struct.htcp** %4, align 8
  %70 = getelementptr inbounds %struct.htcp, %struct.htcp* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %85

71:                                               ; preds = %52
  %72 = load %struct.htcp*, %struct.htcp** %4, align 8
  %73 = getelementptr inbounds %struct.htcp, %struct.htcp* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8*, i8** @BETA_MAX, align 8
  %78 = icmp ugt i8* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i8*, i8** @BETA_MAX, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.htcp*, %struct.htcp** %4, align 8
  %83 = getelementptr inbounds %struct.htcp, %struct.htcp* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %71
  br label %85

85:                                               ; preds = %84, %66
  br label %93

86:                                               ; preds = %49, %44, %39
  %87 = load i8*, i8** @BETA_MIN, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.htcp*, %struct.htcp** %4, align 8
  %90 = getelementptr inbounds %struct.htcp, %struct.htcp* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.htcp*, %struct.htcp** %4, align 8
  %92 = getelementptr inbounds %struct.htcp, %struct.htcp* %91, i32 0, i32 3
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %31, %86, %85
  ret void
}

declare dso_local i32 @between(i32, i32, i32) #1

declare dso_local i64 @MSEC_TO_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
