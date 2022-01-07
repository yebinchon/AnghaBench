; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfl_walk_rulesets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfl_walk_rulesets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_ruleset = type { i8*, i64, i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCGETRULESETS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"pfl_walk_rulesets: ioctl(DIOCGETRULESETS): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@DIOCGETRULESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"pfl_walk_rulesets: ioctl(DIOCGETRULESET): %s\00", align 1
@PF_RESERVED_ANCHOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pfl_walk_rulesets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfl_walk_rulesets(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pfioc_ruleset, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @pfl_scan_ruleset(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %83

18:                                               ; preds = %1
  %19 = call i32 @bzero(%struct.pfioc_ruleset* %4, i32 24)
  %20 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %4, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlcpy(i8* %21, i8* %22, i32 8)
  %24 = load i32, i32* @dev, align 4
  %25 = load i32, i32* @DIOCGETRULESETS, align 4
  %26 = call i64 @ioctl(i32 %24, i32 %25, %struct.pfioc_ruleset* %4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @syslog(i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %83

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %4, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %79, %33
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %4, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @dev, align 4
  %44 = load i32, i32* @DIOCGETRULESET, align 4
  %45 = call i64 @ioctl(i32 %43, i32 %44, %struct.pfioc_ruleset* %4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @LOG_ERR, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 @syslog(i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %83

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %4, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @PF_RESERVED_ANCHOR, align 4
  %56 = call i64 @strcmp(i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %79

59:                                               ; preds = %52
  %60 = load i8*, i8** %3, align 8
  %61 = trunc i64 %11 to i32
  %62 = call i32 @strlcpy(i8* %13, i8* %60, i32 %61)
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = trunc i64 %11 to i32
  %69 = call i32 @strlcat(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %4, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = trunc i64 %11 to i32
  %74 = call i32 @strlcat(i8* %13, i8* %72, i32 %73)
  %75 = call i32 @pfl_walk_rulesets(i8* %13)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %83

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %58
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %36

82:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %84

83:                                               ; preds = %77, %47, %28, %17
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pfl_scan_ruleset(i8*) #2

declare dso_local i32 @bzero(%struct.pfioc_ruleset*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_ruleset*) #2

declare dso_local i32 @syslog(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
