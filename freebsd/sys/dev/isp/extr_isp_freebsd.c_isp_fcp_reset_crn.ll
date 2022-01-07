; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_fcp_reset_crn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_fcp_reset_crn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_fc = type { %struct.isp_nexus** }
%struct.isp_nexus = type { i64, i64, %struct.isp_nexus* }

@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Chan %d resetting CRN on all targets\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Chan %d resetting CRN on target %u\00", align 1
@NEXUS_HASH_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_fcp_reset_crn(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.isp_fc*, align 8
  %10 = alloca %struct.isp_nexus*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.isp_fc* @ISP_FC_PC(i32* %12, i32 %13)
  store %struct.isp_fc* %14, %struct.isp_fc** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %18, i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %28

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %23, i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %22, %17
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %62, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @NEXUS_HASH_WIDTH, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load %struct.isp_fc*, %struct.isp_fc** %9, align 8
  %35 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %34, i32 0, i32 0
  %36 = load %struct.isp_nexus**, %struct.isp_nexus*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.isp_nexus*, %struct.isp_nexus** %36, i64 %38
  %40 = load %struct.isp_nexus*, %struct.isp_nexus** %39, align 8
  store %struct.isp_nexus* %40, %struct.isp_nexus** %10, align 8
  br label %41

41:                                               ; preds = %57, %33
  %42 = load %struct.isp_nexus*, %struct.isp_nexus** %10, align 8
  %43 = icmp ne %struct.isp_nexus* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.isp_nexus*, %struct.isp_nexus** %10, align 8
  %50 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %44
  %54 = load %struct.isp_nexus*, %struct.isp_nexus** %10, align 8
  %55 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.isp_nexus*, %struct.isp_nexus** %10, align 8
  %59 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %58, i32 0, i32 2
  %60 = load %struct.isp_nexus*, %struct.isp_nexus** %59, align 8
  store %struct.isp_nexus* %60, %struct.isp_nexus** %10, align 8
  br label %41

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %29

65:                                               ; preds = %29
  ret void
}

declare dso_local %struct.isp_fc* @ISP_FC_PC(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
