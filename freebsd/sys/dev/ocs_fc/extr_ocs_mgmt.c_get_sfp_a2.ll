; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_sfp_a2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_sfp_a2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFP_PAGE_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@MGMT_MODE_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sfp_a2\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @get_sfp_a2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sfp_a2(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %17 = load i32, i32* @OCS_M_ZERO, align 4
  %18 = load i32, i32* @OCS_M_NOWAIT, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @ocs_malloc(i32* %15, i32 %16, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %96

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %27 = mul nsw i32 %26, 3
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @OCS_M_ZERO, align 4
  %30 = load i32, i32* @OCS_M_NOWAIT, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @ocs_malloc(i32* %25, i32 %28, i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %39 = call i32 @ocs_free(i32* %36, i8* %37, i32 %38)
  br label %96

40:                                               ; preds = %24
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %44 = call i32 @ocs_mgmt_get_sfp(i32* %41, i32 162, i8* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @MGMT_MODE_RD, align 4
  %50 = call i32 @ocs_mgmt_emit_string(i32* %48, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %85

51:                                               ; preds = %40
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %55 = mul nsw i32 %54, 3
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %76, %51
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @ocs_snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 signext %65)
  store i32 %66, i32* %14, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %11, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load i8*, i8** %11, align 8
  store i8 0, i8* %80, align 1
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @MGMT_MODE_RD, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @ocs_mgmt_emit_string(i32* %81, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %47
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %89 = call i32 @ocs_free(i32* %86, i8* %87, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %93 = mul nsw i32 3, %92
  %94 = add nsw i32 %93, 1
  %95 = call i32 @ocs_free(i32* %90, i8* %91, i32 %94)
  br label %96

96:                                               ; preds = %85, %35, %23
  ret void
}

declare dso_local i8* @ocs_malloc(i32*, i32, i32) #1

declare dso_local i32 @ocs_free(i32*, i8*, i32) #1

declare dso_local i32 @ocs_mgmt_get_sfp(i32*, i32, i8*, i32) #1

declare dso_local i32 @ocs_mgmt_emit_string(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
